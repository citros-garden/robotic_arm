import sqlite3
from rosidl_runtime_py.utilities import get_message
from rclpy.serialization import deserialize_message
import matplotlib.pyplot as plt
import numpy as np

class BagAnalyzer():

    def __init__(self, path_to_bag):
        self.bag = path_to_bag
        self.conn = sqlite3.connect(self.bag)
        self.cursor = self.conn.cursor()

        topics_data = self.cursor.execute("SELECT id, name, type FROM topics").fetchall()
        self.topic_type = {name_of:type_of for id_of,name_of,type_of in topics_data}
        self.topic_id = {name_of:id_of for id_of,name_of,type_of in topics_data}
        self.topic_msg_message = {name_of:get_message(type_of) for id_of,name_of,type_of in topics_data}

    def __del__(self):
        self.conn.close()

    # Return [(timestamp0, message0), (timestamp1, message1), ...]
    def _get_messages(self, topic_name):

        topic_id = self.topic_id[topic_name]
        # Get from the db
        rows = self.cursor.execute("SELECT timestamp, data FROM messages WHERE topic_id = {}".format(topic_id)).fetchall()
        # Deserialise all and timestamp them
        return [ (timestamp,deserialize_message(data, self.topic_msg_message[topic_name])) for timestamp,data in rows]
    
    def _get_attr(self, obj, attr):
        if attr == '':
            return obj
        a = attr.split(".")
        return self._get_attr(getattr(obj, a[0]), ".".join(a[1:]) )

    def get_attr_from_topic(self, topic, path_to_element):
    
        msgs = self._get_messages(topic)
        attrs = []
        fids = []
        for msg in msgs:
            try:
                attrs.append(self._get_attr(msg[1], path_to_element))
                # fids.append(msg[1].frame_id)
            except Exception as e:
                print(e)
            fids = range(1, len(attrs))
        return fids, attrs

    def remove_duplicate(self, fids, attrs):
        tmp_fid = 0
        fid_without_duplicate = []
        attrs_without_duplicate = []
        i = 0
        for fid in fids:
            if fid != tmp_fid:
                fid_without_duplicate.append(fid)
                attrs_without_duplicate.append(attrs[i][:])
                i += 1
                tmp_fid = fid
        return fid_without_duplicate, attrs_without_duplicate
    
    def get_attr_from_topic_without_duplicated(self, topic, path_to_element):
        fids, attrs = self.get_attr_from_topic(topic, path_to_element)
        fid_without_duplicate, attrs_without_duplicate = self.remove_duplicate(fids, attrs)
        return fid_without_duplicate, attrs_without_duplicate

    def create_time_axis_from_fid(self, fids, dt):
        return [x*dt for x in fids]

def main():

    path_to_bag = 'data/rosbag2_2023_01_15-11_32_49_0.db3'
    topic = "/gazebo/link_states"
    path_to_attr = "pose"
    dt = 0.01

    bagparser = BagAnalyzer(path_to_bag)

    # print(f"topic_type = {bagparser.topic_type}\n")
    # print(f"topic_id = {bagparser.topic_id}\n")
    # print(f"topic_msg_message = {bagparser.topic_msg_message}")

    fids, tip_position = bagparser.get_attr_from_topic(topic, path_to_attr)
    t = bagparser.create_time_axis_from_fid(fids, dt)

    x = [tip_position[i][9].position.x for i in range(len(tip_position))]
    y = [tip_position[i][9].position.y for i in range(len(tip_position))]
    z = [tip_position[i][9].position.z for i in range(len(tip_position))]
    print(x)

    # h = []
    # for i in range(len(lla)):
    #     h.append(lla[i][2])

    # plt.plot(t,h)
    # plt.show()


if __name__ == "__main__":
    try:
        main()
    except Exception as e:
        print(e)