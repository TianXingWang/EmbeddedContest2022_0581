# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lutils;-lsensor_base;-lsensor_odometry;-lsensor_range;-llog;-lconfigfile;-lscanmatcher;-lgridfastslam".split(';') if "-lutils;-lsensor_base;-lsensor_odometry;-lsensor_range;-llog;-lconfigfile;-lscanmatcher;-lgridfastslam" != "" else []
PROJECT_NAME = "openslam_gmapping"
PROJECT_SPACE_DIR = "/home/z/catkin_ws/install"
PROJECT_VERSION = "0.2.1"
