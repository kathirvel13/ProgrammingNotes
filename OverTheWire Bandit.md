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
ls
grep "millionth" data.txt
ssh bandit8@bandit.labs.overthewire.org -p 2220
```
Password: dfwvzFQi4mU0wfNbFOe9RoWskMLg7eEc

## Level 9
```sh
ls
sort data.txt | uniq -u
ssh bandit9@bandit.labs.overthewire.org -p 2220
```
Password: 4CKMh1JI91bUIZZPXDqGanal4xvAg0JM

## Level 10
```sh
ls
strings data.txt | grep "^=="
ssh bandit10@bandit.labs.overthewire.org -p 2220
```
Password: FGUW5ilLVJrxX9kMYMmlN4MgbpfMiqey

## Level 11
```sh
ls
base64 -d data.txt
ssh bandit11@bandit.labs.overthewire.org -p 2220
```
Password: dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr

## Level 12
```sh
ls
cat data.txt | tr 'a-zA-Z' 'n-za-mN-ZA-M'
ssh bandit12@bandit.labs.overthewire.org -p 2220
```
Password: 7x16WNeHIi5YkIhWsfFIqoognUTyj9Q4

## Level 13
```sh
ls
mktemp -d
cd /tmp/tmp.Au9tyxEOFZ
mv ~/data.txt /tmp/tmp.Au9tyxEOFZ/

ssh bandit13@bandit.labs.overthewire.org -p 2220
```
Password: 

## Level 
```sh
ls

ssh bandit1@bandit.labs.overthewire.org -p 2220
```
Password: 
