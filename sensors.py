
class SensorData:

    def __init__(self, a_x, a_y, a_z, rot_x, rot_y, rot_z, mag_x, mag_y, mag_z):
        pass


class DataPoint:
    def __init__(self, sensor_data, img):
        pass

def parse_for_sensor_data(request_form):
    # parse request_Form here, then create sensor data
    return SensorData(0, 0, 0, 0, 0, 0, 0, 0, 0)