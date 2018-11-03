from flask import Flask, jsonify, request
from sensors import parse_for_sensor_data, DataPoint
from cpp_slam_wrapper import SLAMStep, SLAMMap
import time
# TODO: Get rid of time import after implmenting begin_directions

OK_RESPONSE = "OK"

app = Flask(__name__)

user_SLAM_map_dict = {}

@app.route('/map', methods=['GET'])
def get_2d_map_coords():
    stub_data = {
        0: {
            'x': 0,
            'y': 0
        },
        1: {
            'x': 1,
            'y': 0,
        },
        2: {
            'x': 1,
            'y': 1,
        },
        3: {
            'x': 0,
            'y': 1
        }
    }

    return jsonify(stub_data)


@app.route('/directions/step', methods=['POST'])
def get_directions():
    img = request.form.get('image')
    user = request.form.get('user')
    sensor_data = parse_for_sensor_data(request.form)
    next_data = DataPoint(sensor_data, img)
    # Do stuff to C++ class here
    return jsonify(user_SLAM_map_dict[user].take_step(next_data))


@app.route('/directions/start', methods=['POST'])
def begin_directions():
    # Initialize C++ object here
    # The user should wait to spin around until the map is ready up for them (i.e. until they get an "OK" response)

    user = request.form.get('user')
    destination = request.form.get('destination')
    map_name = request.form.get('map_name')

    map = SLAMMap(map_name)

    time.sleep(10)  # Takes a hot sec to init

    user_SLAM_map_dict[user] = map
    return OK_RESPONSE


@app.route('/directions/end', methods=['POST'])
def end_directions():
    # Destroy C++ object here
    return OK_RESPONSE


if __name__ == "__main__":
    app.run()