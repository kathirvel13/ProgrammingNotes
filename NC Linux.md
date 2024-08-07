#Linux #Networkchuck #HTB 

[[Linux_Fundamentals_Module_Cheat_Sheet.pdf|Cheat sheet]] for all linux commands.

> Linux is not an Operating System but it is a **Kernel** on top of which we built our OS.

***Everything in Linux is a file.***

Kernel's function is to virtualize and control common computer hardware resources like CPU, allocated memory, accessed data, and others. The kernel gives each process its own virtual resources and prevents/mitigates conflicts between different processes.

# Basic Linux Commands
- `pwd` - Print Working Directory
- `ls <Directory>` or `ls -la` - List
- `cd <Directory>` - Change Directory
- `cd` - Changes to user directory
- `cd ..` - Goes back to previous parent directory
- `cd ../..` - Goes back to previous previous parent directory
- `cd -` - Goes back to directory which we were last in
- `whoami` - Displays the name of the logged-in user
- `cp <Source> <Destination>` - Copies file from source to destination
- `mv <Source> <Destination>` - Moves file from source to destination
- `rm <file>` - Removes file
- `cat <file>` - Concatenates contents of the file
- `mkdir <folder>` - Creates a new folder
- `mkdir -p <folder>/<Subfolders>` - Creates a parent folder with child folders
- `tree .` - Displays the contents of present directory in a tree format
- `which <command>` - Displays the location of that linux command 
- `sudo updatedb && locate *.txt` - Search for files across system
- `ps` - Lists all the running processes
## Creating files
```shell
touch example.txt
cat > example.txt # Ctrl+D to save file
cat << EOF > example.txt # Type EOF to save file
echo "Contents to be added to the file" > example.txt
```
## Pagers to read file
```shell
cat <file>
less <file>
more <file>
head <file>
tail <file>
```
## ⚠ Dangerous Command
```shell
sudo rm -fr # Removes french language package
```
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
`Ctrl+C` - Kill a Foreground process
`Ctrl+Z` - Puts a foreground process into sleep
`Ctrl+R` - Search through the command history
`Ctrl+A` - Takes cursor to the beginning of the command
`Ctrl+E` - Takes cursor to the end of the command
`Ctrl+U` - Deletes everything before the cursor
`Ctrl+K` - Deletes everything after the cursor
`Ctrl+Y` - Pastes the deleted content
`Tab` - Autocomplete file names
`Tab Tab` - Lists file names
`Ctrl+X+E` - Opens the command in a text editor to be edited
`sudo !!` - Executes the previous command with root privileges
## Set alias for long commands
```shell
nano .bashrc
# Add the following to the file
alias la='ls -la'
```

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
sudo apt list --installed | wc -l
sudo apt list --installed | grep ^<Package>
sudo apt show <Package>
sudo apt search <Package>
sudo apt remove <Package>
sudo apt purge <Package>
```
`remove` only deletes the package whereas `purge` also deletes the user data of that package.
You can also try `aptitude` package manager which is `apt` on steroids.

`grep`  stands for Global Regular Expression Print and it is used for filtering in terminal.
Likewise, `wc -l` displays the total count of the command.
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

# Permissions
- (`r`) - Read
- (`w`) - Write
- (`x`) - Execute

```shell
- rwx rw- r--   1 root root 1641 May  4 23:42 /etc/passwd
- --- --- ---   |  |    |    |   |__________|
|  |   |   |    |  |    |    |        |_ Date
|  |   |   |    |  |    |    |__________ File Size
|  |   |   |    |  |    |_______________ Group
|  |   |   |    |  |____________________ User
|  |   |   |    |_______________________ Number of hard links
|  |   |   |_ Permission of others (read)
|  |   |_____ Permissions of the group (read, write)
|  |_________ Permissions of the owner (read, write, execute)
|____________ File type (- = File, d = Directory, l = Link, ... )
```

We can modify permissions using the `chmod` command, permission group references (`u` - owner, `g` - Group, `o` - others, `a` - All users), and either a `+` or a `-` to add remove the designated permissions.
```shell
chmod a+r <file>
chmod 754 <file>
```

```shell
Binary Notation:                4 2 1  |  4 2 1  |  4 2 1
----------------------------------------------------------
Binary Representation:          1 1 1  |  1 0 1  |  1 0 0
----------------------------------------------------------
Octal Value:                      7    |    5    |    4
----------------------------------------------------------
Permission Representation:      r w x  |  r - x  |  r - -
```

# Daemons in Linux
'Daemons' in Greek mean 'supernatural beings which is not associated neither with good nor bad'. Most Linux distributions have now switched to `systemd`. This daemon is an `Init process` started first and thus has the process ID (PID) 1.
Daemons are automatically initiated running programs. `ps -aux` lists all the processes running on your system.
```shell
ps -aux
pstree
ps -aux | grep <Process Name>
```
Names of processes ending with `d` (like `sshd` or `ntpd`) are all daemon processes. All daemons are processes but not all processes are daemons.
## Managing Daemons
`systemd` is the master daemon and it manages all other daemons. It is the first daemon to be initiated and all other daemons are forked from it.
We use a tool called  `systemctl` to manage all daemons.
📝**Note**- Daemons are also called Units.
```shell
systemctl start <Process Name>
systemctl status <Process Name>
systemctl stop <Process Name>

systemctl restart <Process Name>
systemctl reload-or-restart <Process Name>

systemctl disable <Process Name>
systemctl enable <Process Name>

systemctl is-enabled <Process Name>
systemctl is-active <Process Name>

systemctl list-units

sudo !!
```

# Managing Processes in Linux
There are two types of processes.
- Foreground Process
- Background Process
```shell
sleep 600
ping -c 1000 google.com
# Run a command and put it into sleep using Ctrl+Z
jobs
bg <job ID>
fg <job ID>
```

`ps -u <User> | grep <Process Name>` - Lists all the processes running in a user account
`pgrep <Process Name>` - Displays the process ID of a process
`kill <Process ID>` - Kills the process
`ps -aux` - Displays all the running process
`top` or `htop` - Displays the CPU usage of running processes

# Execute Multiple Commands
- Semicolon (`;`) is a command separator and executes the commands by ignoring previous commands' results and errors.
- Double `ampersand` characters (`&&`) are used to run the commands one after the other. If there is an error in one of the commands, the following ones will not be executed anymore, and the whole process will be stopped.
- Pipes (`|`) depend not only on the correct and error-free operation of the previous processes but also on the previous processes results.

# Web Services
## `curl`
`cURL` is a tool that allows us to transfer files from the shell over protocols like `HTTP`, `HTTPS`, `FTP`, `SFTP`, `FTPS`, or `SCP`. This tool gives us the possibility to control and test websites remotely. Besides the remote servers' content, we can also view individual requests to look at the client's and server's communication.
## `wget`
An alternative to curl is the tool `wget`. With this tool, we can download files from FTP or HTTP servers directly from the terminal, and it serves as a good download manager. 

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
# System Information

| **Command** | **Description**                                                                                                                    |
| ----------- | ---------------------------------------------------------------------------------------------------------------------------------- |
| `uname`     | Prints basic information about the operating system name and system hardware.                                                      |
| `ifconfig`  | The ifconfig utility is used to assign or to view an address to a network interface and/or configure network interface parameters. |
| `ip`        | ip is a utility to show or manipulate routing, network devices, interfaces and tunnels.                                            |
| `netstat`   | Shows network status.                                                                                                              |
| `ss`        | Another utility to investigate sockets.                                                                                            |
| `ps`        | Shows process status.                                                                                                              |
| `env`       | Prints environment or sets and executes command.                                                                                   |
| `lsblk`     | Lists block devices.                                                                                                               |
| `lsusb`     | Lists USB devices                                                                                                                  |
| `lsof`      | Lists opened files.                                                                                                                |
| `lspci`     | Lists PCI devices.                                                                                                                 |
# SSH
Secure Shell (`SSH`) is a network protocol that allows the secure transmission of data and commands over a network.
The most commonly used SSH server is the OpenSSH server. OpenSSH is a free and open-source implementation of the Secure Shell (SSH) protocol that allows the secure transmission of data and commands over a network.
OpenSSH can be configured and customized by editing the file `/etc/ssh/sshd_config` with a text editor.
```shell
ssh [username]@[IP address]
```

# System Logs
System logs on Linux are a set of files that contain information about the system and the activities taking place on it.
There are several different types of system logs on Linux, including:
- Kernel Logs contain information about the system's kernel, including hardware drivers, system calls, and kernel events. They are stored in the `/var/log/kern.log` file.
- System Logs contain information about system-level events, such as service starts and stops, login attempts, and system reboots. They are stored in the `/var/log/syslog` file.
- Authentication Logs contain information about user authentication attempts, including successful and failed attempts. They are stored in the `/var/log/auth.log` file.
- Application Logs contain information about the activities of specific applications running on the system. They are often stored in their own files, such as `/var/log/apache2/error.log` for the Apache web server or `/var/log/mysql/error.log` for the MySQL database server.
- Security Logs and their events are often recorded in a variety of log files, depending on the specific security application or tool in use.