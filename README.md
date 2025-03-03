# My Programming Notes
This github repository contains notes about things which learn about computer and programming.
## Notes
- Git and Github
- Markdown
- HTML & CSS
- Linux
- Bash Scripting
- Artificial Intelligence
- MATLAB

# Autocommit script
I have also created a script file which can automatically commit the changes made in local repository to the remote repository. For this to work, you must have already logged in with your github credentials and link local git repository with github repository using `git remote`.

``` shell
chmod +x autocommit.sh
./autocommit.sh
```
When running the script, it prompts for the commit name and a description.

This script can also take command line arguments.
``` shell
./autocommit.sh -l    # Displays commit logs of repo
./autocommit.sh -d    # Lists changes made to repo
./autocommit.sh -h    # Help
```