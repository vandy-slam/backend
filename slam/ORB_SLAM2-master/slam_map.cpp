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

struct SLAMMap
{

    SLAMMap(std::string map_name) {
        init(map_name);
    }
    SLAMMap() {
        SLAMMap(TEST);
    }

    ~SLAMMap() {
        delete SLAM;
    }

    vector<int> get_points() {
        vector<int> pts;
        for (auto pt : SLAM->GetTrackedMapPoints()) {
            cout << "pt: " << pt->GetWorldPos() << endl;
        }
        return pts;
    }

    void init(std::string map_name) {
        string arg1, arg2, arg3;

        get_args(map_name, arg1, arg2, arg3);

        cout << arg1 << " set\n";

        SLAM = new ORB_SLAM2::System(arg1, arg2, ORB_SLAM2::System::MONOCULAR, false);

        vector<string> vstrImageFilenames;
        vector<double> vTimestamps;
        string strFile = arg3+"/rgb.txt";
        LoadImages(strFile, vstrImageFilenames, vTimestamps);

        int nImages = vstrImageFilenames.size();

        vector<float> vTimesTrack;
        vTimesTrack.resize(nImages);

        cout << endl << "-------" << endl;
        cout << "Start processing sequence ..." << endl;
        cout << "Images in the sequence: " << nImages << endl << endl;

        // Main loop
        cv::Mat im;
        for(int ni=0; ni<nImages; ni++)
        {
            // Read image from file
            im = cv::imread(arg3+"/"+vstrImageFilenames[ni],CV_LOAD_IMAGE_UNCHANGED);
            double tframe = vTimestamps[ni];

            if(im.empty())
            {
                cerr << endl << "Failed to load image at: "
                     << string(arg3) << "/" << vstrImageFilenames[ni] << endl;
                return;
            }

#ifdef COMPILEDWITHC11
            std::chrono::steady_clock::time_point t1 = std::chrono::steady_clock::now();
#else
            std::chrono::monotonic_clock::time_point t1 = std::chrono::monotonic_clock::now();
#endif

            // Pass the image to the SLAM system
            SLAM->TrackMonocular(im,tframe);

#ifdef COMPILEDWITHC11
            std::chrono::steady_clock::time_point t2 = std::chrono::steady_clock::now();
#else
            std::chrono::monotonic_clock::time_point t2 = std::chrono::monotonic_clock::now();
#endif

            double ttrack= std::chrono::duration_cast<std::chrono::duration<double> >(t2 - t1).count();

            vTimesTrack[ni]=ttrack;

            cout << "step took: " << ttrack << " s\n";

            // Wait to load the next frame
            double T=0;
            if(ni<nImages-1)
                T = vTimestamps[ni+1]-tframe;
            else if(ni>0)
                T = tframe-vTimestamps[ni-1];

            if(ttrack<T)
                usleep((T-ttrack)*1e6);
        }
        cout << "done initing\n";
    }

    void get_args(string &map_name, string &arg1, string &arg2, string &arg3) {
        if (map_name == TEST) {
            arg1 = "./Examples/Monocular/mono_tum Vocabulary/ORBvoc.txt";
            arg2 = "./Examples/Monocular/TUM1.yaml";
            arg3 = "./rgbd_dataset_freiburg1_xyz";
        } else {

        }
    }

    string test() {return TEST;}

    ORB_SLAM2::System* SLAM;

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
                class_<SLAMMap>("slam_map", init<string>())
                        .def(init<>())
                        .def("test", &SLAMMap::test)
                        .def("get_pts", &SLAMMap::get_points)
                ;

        }
