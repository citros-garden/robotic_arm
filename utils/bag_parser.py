import sqlite3
from rosidl_runtime_py.utilities import get_message
from rclpy.serialization import deserialize_message
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
import numpy as np
import glob, os

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

def get_db_files(bags_dir):
    db_files = []
    for root, dirs, files in os.walk(bags_dir):
        for file in files:
            if file.endswith(".db3"):
                db_files.append(os.path.join(root, file))
    return db_files

def main():

    bags_dir = 'data'
    db_files = get_db_files(bags_dir)

    topic = "/gazebo/link_states"
    path_to_attr = "pose"
    dt = 0.01

    fig = plt.figure(figsize=(12, 12))

    for file in db_files:
        print(file)
        bagparser = BagAnalyzer(file)

        fids, tip_position = bagparser.get_attr_from_topic(topic, path_to_attr)
        t = bagparser.create_time_axis_from_fid(fids, dt)

        try:
            x = [tip_position[i][9].position.x for i in range(len(tip_position))]
            y = [tip_position[i][9].position.y for i in range(len(tip_position))]
            z = [tip_position[i][9].position.z for i in range(len(tip_position))]

        except Exception:
            pass

        ax = fig.add_subplot(projection='3d')
        ax.scatter(x, y, z)
        
    plt.show()

if __name__ == "__main__":
    # try:
    main()
    # except Exception as e:
        # print(e)