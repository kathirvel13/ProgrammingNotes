#Linux #Networkchuck #HTB 

> Linux is not an Operating System but it is a **Kernel** on top of which we built our OS.

***Everything in Linux is a file.***

Kernel's function is to virtualize and control common computer hardware resources like CPU, allocated memory, accessed data, and others. The kernel gives each process its own virtual resources and prevents/mitigates conflicts between different processes.
# Basic Linux Commands
- `pwd` - Print Working Directory
- `ls <Directory>` - List
- `cd <Directory>` - Change Directory
- `cd` - Changes to user directory
- `cd ..` - Goes back to previous directory
- `whoami` - Displays the name of the logged-in user
- `cp <Source> <Destination>` - Copies file from source to destination
- `mv <Source> <Destination>` - Moves file from source to destination
- `rm <file>` - Removes file
- `cat <file>` - Concatenates contents of the file 
- `which <command>` - Displays the location of that linux command 
## Help in Linux
Solve issues to understand a long command by visiting [https://explainshell.com/](https://explainshell.com/).
- `man <command>` - Displays the manual page of that linux command 
- `<command> --help` - Lists all functions of the command
- `apropos <keyword>` - Searching for a command with the given keyword
# Managing Linux users
- `sudo adduser <username>` - Adds a user, sets a password and a user directory
- `sudo useradd <username>` - Just adds a user and does not set a password nor a directory 
- `sudo passwd <username>` - Set or change password for a user
- `sudo usermod <username> <argument>` - Modifies user account
- `cat /etc/passwd` - Displays a file containing all usernames
- `sudo userdel <username>` - Deletes a user account
### Groups
- `sudo groupadd <groupname>` - Adds a new group
- `sudo groupdel <groupname>` - Deletes a group
- `cat /etc/group` - Displays a file containing all groups

📝**Note** - Whenever a user account is created, a group is also created for the user.

`sudo` command stands for **Super User do**.
# Shortcuts
`Ctrl+D` - Logout
`Ctrl+L` - Clear screen
`sudo !!` - Executes the previous command with root privileges
# Linux Package Manager
## `dpkg` 
It is a low-level package manager. Download the package of the application you want to install and run `sudo dpkg -i <.deb file>`. But `dpkg` is unable to automatically install any dependency package required to run the program. We have to that manually by searching for packages on web.
## `apt`
It stands for **Advanced Package Tool** and is a high-level package manager. Unlike `dpkg`, it can automatically install dependency packages from the repository.
```shell
sudo apt update
sudo apt upgrade -y
sudo apt update && sudo apt full-upgrade -y
sudo apt install <Packages>
sudo apt list --installed
sudo apt list --installed | grep ^<Package>
sudo apt show <Package>
sudo apt search <Package>
sudo apt remove <Package>
sudo apt purge <Package>
```
`remove` only deletes the package whereas `purge` also deletes the user data of that package.
You can also try `aptitude` package manager which is `apt` on steroids.
## `snap`
Unlike `apt`, it does not use repositories to install packages. Rather it is like an app store.
```shell
sudo apt install snapd -y
sudo snap install <Package>
```
## `git`
Learn more at [[Git and Github#^6980b6|clone]].
```shell
sudo apt install git
git clone <repo URL>
```
# Components of Linux

| **Component**     | **Description**                                                                                                                                                                                                                          |
| ----------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `Bootloader`      | A piece of code that runs to guide the booting process to start the operating system.                                                                                                                                                    |
| `OS Kernel`       | The kernel is the main component of an operating system. It manages the resources for system's I/O devices at the hardware level.                                                                                                        |
| `Daemons`         | Background services are called "daemons" in Linux. Their purpose is to ensure that key functions such as scheduling, printing, and multimedia are working correctly. These small programs load after we booted or log into the computer. |
| `OS Shell`        | The operating system shell or the command language interpreter (also known as the command line) is the interface between the OS and the user. The most commonly used shells are Bash, Tcsh/Csh, Ksh, Zsh, and Fish.                      |
| `Graphics server` | This provides a graphical sub-system (server) called "X" or "X-server" that allows graphical programs to run locally or remotely on the X-windowing system.                                                                              |
| `Window Manager`  | Also known as a graphical user interface (GUI). There are many options, including GNOME, KDE, MATE, Unity, and Cinnamon. A desktop environment usually has several applications, including file and web browsers.                        |
| `Utilities`       | Applications or utilities are programs that perform particular functions for the user or another program.                                                                                                                                |
# Linux File System
The Linux operating system is structured in a tree-like hierarchy and is documented in the [Filesystem Hierarchy](http://www.pathname.com/fhs/) Standard (FHS).
![[Linux_file_system.png]]

| **Path** | **Description**                                                                                                                                                                                                                                                                                                                    |
| -------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `/`      | The top-level directory is the root filesystem and contains all of the files required to boot the operating system before other filesystems are mounted, as well as the files required to boot the other filesystems. After boot, all of the other filesystems are mounted at standard mount points as subdirectories of the root. |
| `/bin`   | Contains essential command binaries like `ls`, `cd` and much more.                                                                                                                                                                                                                                                                 |
| `/boot`  | Consists of the static bootloader, kernel executable, and files required to boot the Linux OS.                                                                                                                                                                                                                                     |
| `/dev`   | Contains device files to facilitate access to every hardware device attached to the system.                                                                                                                                                                                                                                        |
| `/etc`   | Local system configuration files. Configuration files for installed applications may be saved here as well.                                                                                                                                                                                                                        |
| `/home`  | Each user on the system has a subdirectory here for storage.                                                                                                                                                                                                                                                                       |
| `/lib`   | Shared library files that are required for system boot.                                                                                                                                                                                                                                                                            |
| `/media` | External removable media devices such as USB drives are mounted here.                                                                                                                                                                                                                                                              |
| `/mnt`   | Temporary mount point for regular filesystems.                                                                                                                                                                                                                                                                                     |
| `/opt`   | Optional files such as third-party tools can be saved here.                                                                                                                                                                                                                                                                        |
| `/root`  | The home directory for the root user.                                                                                                                                                                                                                                                                                              |
| `/sbin`  | This directory contains executables used for system administration (binary system files).                                                                                                                                                                                                                                          |
| `/tmp`   | The operating system and many programs use this directory to store temporary files. This directory is generally cleared upon system boot and may be deleted at other times without any warning.                                                                                                                                    |
| `/usr`   | Contains executables, libraries, man files, etc.                                                                                                                                                                                                                                                                                   |
| `/var`   | This directory contains variable data files such as log files, email in-boxes, web application related files, cron files, and more.                                                                                                                                                                                                |

# Customising the Prompt
The prompt can be customized using special characters and variables in the shell’s configuration file (`.bashrc` for the Bash shell). For example, we can use: the `\u` character to represent the current username, `\h` for the hostname, and `\w` for the current working directory.

| **Special Character** | **Description**                            |
| --------------------- | ------------------------------------------ |
| `\d`                  | Date (Mon Feb 6)                           |
| `\D{%Y-%m-%d}`        | Date (YYYY-MM-DD)                          |
| `\j`                  | Number of jobs managed by the shell        |
| `\n`                  | Newline                                    |
| `\t`                  | Current time 24-hour (HH:MM:SS)            |
| `\@`                  | Current time                               |
| `\u`                  | Current username                           |
| `\w`                  | Full path of the current working directory |
