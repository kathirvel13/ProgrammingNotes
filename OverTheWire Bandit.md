#Linux #OverTheWire 

[Bandit](https://overthewire.org/wargames/bandit/)

## Level 0
```sh
ssh bandit0@bandit.labs.overthewire.org -p 2220
```
Password: bandit0

## Level 1
```sh
whoami
pwd
cd
cat readme
ssh bandit1@bandit.labs.overthewire.org -p 2220
```
Password: ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If

## Level 2
```sh
ls -la
cat ./-
ssh bandit2@bandit.labs.overthewire.org -p 2220
```
Password: 263JGJPfgU6LtdEvgfWU1XP5yac29mFx

## Level 3
```sh
ls
cat ./"--spaces in this filename--"
cat ./--spaces\ in\ this\ filename--
ssh bandit3@bandit.labs.overthewire.org -p 2220
```
Password: MNk8KNH3Usiio41PRUEoDFPqfxLPlSmx

## Level 4
```sh
cd inhere
ls -la
file ...Hiding-From-You
cat ...Hiding-From-You
ssh bandit4@bandit.labs.overthewire.org -p 2220
```
Password: 2WmrDFRmJIq3IPxneAaMGhap0pFhF3NJ

## Level 5
```sh
cd inhere
ls -la
file ./-file07
cat ./-file07
ssh bandit5@bandit.labs.overthewire.org -p 2220
```
Password: 4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw

## Level 6
```sh
cd inhere
ls -la
find ~/inhere -size 1033c -not -executable
ssh bandit6@bandit.labs.overthewire.org -p 2220
```
Password: HWasnPhtq9AVKe0dmk45nxy20cvUa6EG

## Level 7
```sh
find / -type f -size 33c -group bandit6 -user bandit7
cat /var/lib/dpkg/info/bandit7.password
find / -type f -size 33c -group bandit6 -user bandit7 -print0|xargs -0 grep -v "Permission denied"
ssh bandit7@bandit.labs.overthewire.org -p 2220
```
Password: morbNTDkSW6jIlUc0ymOdMaLnOlFVAaj

## Level 8
```sh

ssh bandit8@bandit.labs.overthewire.org -p 2220
```
Password: 

## Level 
```sh

ssh bandit0@bandit.labs.overthewire.org -p 2220
```
Password: 
