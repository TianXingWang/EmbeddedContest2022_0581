# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;pluginlib;costmap_2d;base_local_planner;nav_core".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lcarrot_planner".split(';') if "-lcarrot_planner" != "" else []
PROJECT_NAME = "carrot_planner"
PROJECT_SPACE_DIR = "/home/z/catkin_ws/install"
PROJECT_VERSION = "1.14.9"