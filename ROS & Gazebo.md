#ROS #gazebo

ROS2 is a framework/library for robot simulation and it can mimic testing robots in a real-world environment.
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
```

`rqt` is a GUI tool of ROS which can perform anything that is done using command line (**Plugins** > **Services** > **Service Caller**). It is specially used to call services.
# ROS Basic Concepts
[ROS Concepts](https://docs.ros.org/en/jazzy/Concepts.html)

```bash
ros2 node list
ros2 param list
ros2 topic list
ros2 service list
ros2 action list
```
## Nodes
Nodes are processing modules of a simulated robot. They can be the motors controlling the movement of the robot or the sensors reading environmental data. Modes offer modularity to robots, which allows adding a new node without disturbing the other nodes. 
## Parameters
Parameters are the name-value pairs which defines the properties of a node. Topics do not have parameters. Parameters of a node are configured when the robot is started whereas topics change when the nodes stream data in its lifetime.
```bash
ros2 param get /turtlesim use_sim_time
ros2 param set /turtlesim background_r 255

ros2 run turtlesim turtlesim_node --ros-args -p background_r:=255
```
## Topics
Topics are the connection between nodes. Nodes are connected in a pub-sub pair network (publisher-subscriber). A node can listen to one or more nodes. A node can also transmit to one or more nodes. It can support many-to-many communication. 

```bash
ros2 topic echo /turtle1/cmd_vel
```
gives the linear and angular velocity of the turtlebot in turtlesim every time it moves.
Topics are like a communication channel between two nodes and the data passed through it can be read by the `echo` command.

```bash
ros2 topic list -t
```
gives the format in which messages are transmitted through a topic.
## Services

## Actions
