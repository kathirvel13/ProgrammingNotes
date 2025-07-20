#ROS #gazebo
# Documentations
- [ROS Home](https://www.ros.org/)
- [Gazebo Home](https://gazebosim.org/home)
- [ROS Wiki Tutorial](https://wiki.ros.org/ROS/Tutorials)
- [ROS Jassy Docs](https://docs.ros.org/en/jazzy/index.html)
- [Gazebo Docs](https://gazebosim.org/docs/latest/getstarted/)
- [What is ROS?](https://www.spiceworks.com/tech/artificial-intelligence/articles/what-is-robot-operating-system/)
[[README(RoseCityRobotics_Github_robotics-resources)]]
[[Introduction to ROS.pdf]]
## YT Videos
- [ROS2 for Beginners in 2.5 hours](https://www.youtube.com/watch?v=HJAE5Pk8Nyw)
- [The Construct](https://www.theconstruct.ai/)
- [The Construct YT Channel](https://www.youtube.com/@TheConstruct/videos)
- [Robotics Back End YT Channel](https://www.youtube.com/@RoboticsBackEnd/videos)
# Installed Software
- Ubuntu 24.04.2 (Noble Numbat) LTS x86_64
- ROS Jazzy Jalisco
- Gazebo Harmonic `gz-harmonic` (v8.9.0)
## Installing ROS2
Check out the [documentation](https://docs.ros.org/en/jazzy/Installation/Ubuntu-Install-Debs.html) for the installation commands.
#### Sourcing
To set up the environment by sourcing, execute this command every time you use ROS2.
```bash
source /opt/ros/jazzy/setup.bash
nano ~/.bashrc

echo "source /opt/ros/jazzy/setup.bash" >> ~/.bashrc

printenv | grep -i ROS
```
Or, add this command to the end of `.bashrc` file for automatic sourcing.
## Installing Gazebo
Check out the [documentation](https://gazebosim.org/docs/harmonic/install/) for the installation commands.
```bash
gz sim --versions
```
# Turtlesim
[Turtlesim Tutorial](https://docs.ros.org/en/jazzy/Tutorials/Beginner-CLI-Tools/Introducing-Turtlesim/Introducing-Turtlesim.html)
Turtlesim is a simulator package. It is like the "Hello World!" program for ROS2, offering fundamental concepts to be tested.

Some executables of the `turtlesim` packages are listed below.
- `turtlesim_node` - Simulation window with a turtle
- `turtle_teleop_key` - Program to control movement of turtle using arrow keys

```bash
sudo apt install ros-jazzy-turtlesim
ros2 pkg executables turtlesim
ros2 run turtlesim turtlesim_node
ros2 run turtlesim turtle_teleop_key

ros2 node list
ros2 topic list
ros2 service list
ros2 action list
```

`rqt` is a GUI tool of ROS which can perform anything that is done using command line (**Plugins** > **Services** > **Service Caller**). It is specially used to call services.
# ROS Basic Concepts
[ROS Concepts](https://docs.ros.org/en/jazzy/Concepts.html)
## Nodes

## Parameters

## Topics

## Services

## Actions
