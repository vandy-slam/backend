/**
 * Vandy SLAM!
 */
#include <string>
#include<iostream>
#include<algorithm>
#include<fstream>
#include<chrono>

#include<opencv2/core/core.hpp>

#include<System.h>

#define TEST "test"

using namespace std;

class SLAMMap
{

public:

    SLAMMap(string map_name, string arg1, string arg2, string arg3): SLAM(arg1, arg2, ORB_SLAM2::System::MONOCULAR, false)
     {
        
    }

    SLAMMap() {
        string arg1, arg2, arg3;
        get_args(map_name, arg1, arg2, arg3);
        SLAMMap(TEST, arg1, arg2, arg3);
    }

    void check() {
        if (SLAM == nullptr) {
            cout << "is null\n";
        } else {
            cout << "is NOT null \n";
        }
    }

    vector<int> get_points() {
        vector<int> pts;
        for (auto pt : this->SLAM->GetTrackedMapPoints()) {
            cout << "pt: " << pt->GetWorldPos() << endl;
        }
        return pts;
    }

    void get_args(string &map_name, string &arg1, string &arg2, string &arg3) {
        if (map_name == TEST) {
            arg1 = "Vocabulary/ORBvoc.txt";
            arg2 = "Examples/Monocular/TUM1.yaml";
            arg3 = "./rgbd_dataset_freiburg1_xyz";
        } else {

        }
    }

    string test() {return TEST;}

    ORB_SLAM2::System SLAM;

    void LoadImages(const string &strFile, vector<string> &vstrImageFilenames, vector<double> &vTimestamps)
    {
        cout << strFile << " ------------\n";
        ifstream f;
        f.open(strFile.c_str());

        // skip first three lines
        string s0;
        getline(f,s0);
        getline(f,s0);
        getline(f,s0);

        while(!f.eof())
        {
            string s;
            getline(f,s);
            if(!s.empty())
            {
                stringstream ss;
                ss << s;
                double t;
                string sRGB;
                ss >> t;
                vTimestamps.push_back(t);
                ss >> sRGB;
                vstrImageFilenames.push_back(sRGB);
            }
        }
    }
};

#include <boost/python.hpp>
using namespace boost::python;

BOOST_PYTHON_MODULE(slam_map)
        {
                class_<SLAMMap>("slam_map", init<string, string, string, string>())
                        .def(init<>())
                        .def("test", &SLAMMap::test)
                        .def("get_pts", &SLAMMap::get_points)
                        .def("check", &SLAMMap::check)
                ;

        }
