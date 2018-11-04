


USER_ORIENTATION = 'actual_orientation'
CORRECT_ORIENTATION = "correct_orientation"
POSITION = 'position'

class SLAMStep:
    def __init__(self):
        pass

    def get_position(self):
        return {'x': 0, 'y': 0}

    # This is a direction vector i.e. the (x, y) the user is looking in
    def get_orientation(self):
        return {'x': 0, 'y': 0}

    def get_target_orientation(self):
        return {'x': 8, 'y': 8}

class SLAMMap:

    def __init__(self, data_set_name):
        self._cpp_instance = None
        pass

    def take_step(self, data):
        # TODO: pass data to C++ instance properly
        step_results = SLAMStep()
        return {USER_ORIENTATION: step_results.get_orientation(), POSITION: step_results.get_position(),
                CORRECT_ORIENTATION: step_results.get_target_orientation()}