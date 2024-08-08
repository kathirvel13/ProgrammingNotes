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

# This is a comment
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

## Output of a command as an argument
```shell
#!/bin/bash

user=$(whoami)
date=$(date)

echo "You are logged in as $user"
echo "Today's date is $date"
```

# Environment Variables
They are built-in variables.
`$RANDOM` - Returns a random integer between 0 and 32767
`$SHELL` - Returns the current shell being used
`$USER` - Name of the logged in user
`$PWD` - Returns the present working directory
`$OLDPWD` - Returns the previous working directory

You can view these variables by using `echo` and can even use in your bash script.

## Making our own variables
```shell
export name="kathir"
```
By using the `export` command, the variable you created can be accessed by any script.

These variables are forgot once the system is rebooted. To make these variables permanent, add the previous command to the `.bashrc` file in your home directory and reboot to see the changes.

# Arithmetic Operations
```shell
echo $((2+3)) $((2-3)) $((2*3)) $((10/3)) $((10%3))
```

# Conditional Statements
```bash
#!/bin/bash

sysnum=$(($RANDOM % 2))
echo "Pick 0 or 1:"
read usrnum
echo $sysnum

if [[ $sysnum == $usrnum && $USER != "root" ]]; then
	echo "Same"
else
	echo "Different"
	exit 1
fi

echo "Enter any integer:"
read num

if [[ $num > 0 ]]; then
	echo "Positive"
elif [[ $num < 0 ]]; then
	echo "Negative"
else
	echo "Zero"
fi
```
Tab is not a necessary syntax but is included for better readability.

`||` - or
`&&` - and

# Looping Statements
There are also `break` and `continue` statements.
## While loop
Runs while the condition is true
```bash
#!/bin/bash
x=1
# -le is 'lesser than or equal to'
while [[ $x -le 10 ]]
do
	echo $x
	(( x++ ))
done

while true
do
	echo "Infinite Looping..."
	((x--))
	if [[ $x == 0 ]]; then
		break
	fi
done
```
## Until Loop
Runs until the condition is true.
```bash
#!/bin/bash

until [[ $num == 0 ]]
do
	echo "Do not enter 0:"
	read num
done
```

## For Loop
```bash
#!/bin/bash
for i in {1..21..3};
do
	echo $i
done

for name in a b c d e f g h i j k;
do
	echo $name
done

for city in $(cat cities.txt);
do
	echo $city
done
```

# Functions
```bash
#!/bin/bash

function hello() {
    echo "Hello World Function!"
}

hello
```

Passing arguments to a function work in the same way as passing arguments to a script:
```shell
#!/bin/bash

function hello() {
    echo "Hello $1!"
}

hello kathir
```