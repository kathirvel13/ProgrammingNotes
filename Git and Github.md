#Git #Github

# What is Git ?
Git is a free and open source ***version control system***.

## Version Control
It is the system which manages changes done to files and programs. It keeps track of changes made to computer code.

## Repository
Folder where your project is kept.

## Github
Github is a website to host your repositories online which makes it easy to store, share and collaborate Git repositories over the internet whereas Git manages version control locally. Git is a software and github is a service.

# Basic Git Commands
### init
Initialise a new git repository. This command is run only once in a project.
~~~ sh
git init <Directory>
~~~
### clone ^6980b6
Downloads the repository hosted on github to your local machine.
~~~ sh
git clone <Repo Link> [directory]
~~~
### add
Track files and changes in git. Add files to git staging area, ready for a commit.
~~~ sh
git add <file name>
git add .
~~~
### status
Checks the status of your repository.
~~~ sh
git status
~~~
### diff
Displays the changes made to the git repository.
~~~ sh
git diff
git diff --staged
~~~
### commit
Commit represents a snapshot/checkpoint of your project at a certain point of time. Saves change made to repository with a message.
~~~ sh
git commit -m "<Description>" -m "<Detailed Description>"
~~~
The description is expected to be in present tense and imperative.
To view the history of commits,
~~~ sh
git log
git log --oneline
~~~
### remote
This is to link a local git repository with a github repository if you have not cloned it.
`git remote -v` lists the remote repo which is connected to your local repo.
~~~ sh
git remote add <Remote Name> <Repo Link>
git remote add origin <Repo Link>
~~~
### push
Uploading a repository from the local machine to the Github branch we want. Push committed change to remote repository.
~~~ sh
git branch -M main
git push <Remote Name> <Branch Name>
git push origin main
~~~
`git push -u origin main` setup an upstream to link origin and main to run future command `git push` without mentioning remote name or branch name.
### pull
Retrieve changes from remote repository and merge them to local repository.
~~~ sh
git pull <Remote Name> <Branch Name>
git pull origin main
~~~

## Setting up Git by configuring username and email
This information will be attached to every commit you make. Password based push is not allowed so setup a SSH key.
~~~shell
git config --global user.name 'NAME'
git config --global user.email "EMAIL"
git config --global user.password "PASSWORD"
~~~
### Generating public/private key pairs for Github login
``` shell
ssh-keygen -t ed25519 -C "EMAIL"
```

## Summary of Git commands
When you `git init` your working directory, changes made to it are being tracked using ***.git*** folder. `git add <>` moves the files to staging area where the files are being tracked for changes and are ready to be committed. `git commit` creates a snapshot/checkpoint of your project in the repository and `git push` moves the repository to Github.

![[Git_pull.jpg]]

## `.gitignore` file
List all the files and folders in this file which is not to be tracked by git. Use a gitignore generator to find what files should be listed in it.

# Git Branch
A git branch is a separate line of development that allows you to work on different parts of your project without affecting the main codebase. It helps making isolated changes which is useful for bug fixes and collaboration.

### Listing all Branches
``` shell
git branch
```
### Creating a Branch
~~~ sh
git branch <Branch Name>
~~~
### Switching a Branch
~~~ sh
git checkout <Branch Name>
git switch <Branch Name>
~~~
### Create and Switch Branch
~~~ sh
git checkout -b <Branch Name>
~~~
### Merging Branches
~~~ sh
git checkout main
git merge <Branch Name>
~~~
### Deleting a Branch after Merging
~~~ sh
git branch -d <Branch Name>
~~~

## Git Stashing
You will be unable to switch branches without committing your changes in that branch. Stashing helps to store your changes temporarily which allows you to switch branches.
``` sh
git stash
```
To bring back the changes,
``` sh
git stash pop
```
Stash can be moved from one branch to another. You can also carry the changes made in one branch to another by using the above command.
To view all the stash performed,
``` sh
git stash list
```

# Git Rebase
This is an alternative to merging and also used to clean up commits. This command should never be executed in main/master branch and only in side branches.
``` sh
git rebase master
```



