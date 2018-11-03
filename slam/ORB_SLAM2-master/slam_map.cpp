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
        init(TEST);
    }
    SLAMMap() {
        this(TEST);
    }

    void init(std::string map_name) {
        string arg1, arg2, arg3;
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
            im = cv::imread(string(argv[3])+"/"+vstrImageFilenames[ni],CV_LOAD_IMAGE_UNCHANGED);
            double tframe = vTimestamps[ni];

            if(im.empty())
            {
                cerr << endl << "Failed to load image at: "
                     << string(argv[3]) << "/" << vstrImageFilenames[ni] << endl;
                return 1;
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
        delete SLAM;
    }

    void get_args(string map_name, string &arg1, string &arg2, string &arg3) {
        if (map_name == TEST) {
            arg1 = "./Examples/Monocular/mono_tum Vocabulary/ORBvoc.txt";
            arg2 = "./Examples/Monocular/TUM1.yaml";
            arg3 = "./rgbd_dataset_freiburg1_xyz.tgz";
        } else {

        }
    }

    string test() {return TEST;}

    ORB_SLAM2::System* SLAM;
};

#include <boost/python.hpp>
using namespace boost::python;

BOOST_PYTHON_MODULE(slam_map)
        {
                class_<SLAMMap>("slam_map", init<string>())
                        .def(init<>())
                        .def("test", &SLAMMap::test)
                ;

        }
