#Bash #Linux #Networkchuck 

Learn [[NC Linux|Linux Basics]] to understand bash scripting.

# Bash
It stands for ***Bourne Again Shell***.
# Running Bash Script
```shell
bash example.sh
```
If you want to run it without using using `bash`, give the file suitable [[NC Linux#^1927f0|permissions]].
```shell
sudo chmod +x example.sh
./example.sh
```
`.` refers to the current directory.

# Writing Bash Script
`#!` is known as shebang.
`which $SHELL` - Displays the type of shell we are in now.
```bash
#!/bin/bash

echo "This is a bash script. Write your linux commands in this file."
echo "Sleeping for 5 sec"
sleep 5
echo "End of program"
```

# Variables
```bash
#!/bin/bash

name="kathir"

echo "Hello $name"
sleep 1
echo "How are you $name?"
```

# Getting inputs from User
```bash
#!/bin/bash

echo "What's your name:"
read name

echo "Hello $name"
sleep 1
echo "How are you $name?"
```

# Command line Arguments
```bash
#!/bin/bash

name=$1

echo "Hello $name"
sleep 1
echo "How are you $name?"
```
We obtain inputs form user through Positional arguments.
```shell
./example.sh kathir
```

## Output of  a command as an argument
```shell
#!/bin/bash

user=$(whoami)
date=$(date)

echo "You are logged in as $user"
echo "Today's date is $date"
```