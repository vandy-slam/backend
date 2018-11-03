//
// Created by Liam Kelly on 11/3/18.
//

//
// Created by Liam Kelly on 11/3/18.
//
#include <string>

struct SLAMMap
{
    SLAMMap(std::string map_name) {}
    std::string test() {return "test";}
};

#include <boost/python.hpp>
using namespace boost::python;

BOOST_PYTHON_MODULE(slam_map)
        {
                class_<SLAMMap>("slam_map", init<std::string>())
                        .def("test", &SLAMMap::test)
                ;

        }
