# 28-07-2025

What is Lunux Shell?
A shell provide an environment to a user to execute commands and interact with Kernal.

There are different type of shell:
* Bash (Most commonly used type. That why now people call this Bash scripting in the place of shell scripting)
* sh (Old Version)
* ksh
* tsh
* fish
* zsh (Extended version of Bash Shell, more advanced)

When we use mac then we got default zsh shell, but most commonly in linux are bash shell.

You can check using echo $0
[cloud_user@888ed763a51c shayash]$ echo $0
-bash

To check the Linux distribution: cat /etc/os-release

[cloud_user@888ed763a51c shayash]$ cat /etc/os-release
NAME="Red Hat Enterprise Linux Server"
VERSION="7.9 (Maipo)"
ID="rhel"
ID_LIKE="fedora"
VARIANT="Server"
VARIANT_ID="server"
VERSION_ID="7.9"
PRETTY_NAME="Red Hat Enterprise Linux Server 7.9 (Maipo)"
ANSI_COLOR="0;31"
CPE_NAME="cpe:/o:redhat:enterprise_linux:7.9:GA:server"
HOME_URL="https://www.redhat.com/"
BUG_REPORT_URL="https://bugzilla.redhat.com/"

REDHAT_BUGZILLA_PRODUCT="Red Hat Enterprise Linux 7"
REDHAT_BUGZILLA_PRODUCT_VERSION=7.9
REDHAT_SUPPORT_PRODUCT="Red Hat Enterprise Linux"
REDHAT_SUPPORT_PRODUCT_VERSION="7.9"

To check which user logged in: whoami
[cloud_user@888ed763a51c shayash]$ whoami
cloud_user

To check what are the other shell are present in your system: cat /etc/shells
[cloud_user@888ed763a51c shayash]$ cat /etc/shells
/bin/sh
/bin/bash
/usr/bin/sh
/usr/bin/bash

What is Shell Scripting?
*Shell script consist of set of commands to perform a task.
*All the command execute sequentially.
*Some task like file manipulation, Program execution, user interaction, automation of task etc can be done.


First Basic Script...

[cloud_user@888ed763a51c myscripts]$ cat 01 
#!/bin/bash

echo "Hey buddy"

Ouptput:
[cloud_user@888ed763a51c myscripts]$ ./01_basic.sh 
Hey buddy

What is Shebang?
#!/bin/bash : Here we use to solve the capatability problem, this allow to use bash scripting use this if bash is not default one in that perticular os.
Better to follow the standard.


echo "Hey buddy" .... Here echo means ending output to the terminal. 


How to run the script:
*Make sure script has execute permission rwx

*Run using:

./script.sh
/path/script.sh
bash script.sh
[cloud_user@888ed763a51c ~]$ pwd
/home/cloud_user
[cloud_user@888ed763a51c ~]$ /home/cloud_user/myscripts/01_basic.sh 
Hey buddy

For make the script in executable state: chmod +x file_name
[cloud_user@888ed763a51c myscripts]$ ls -lhrt
total 4.0K
-rw-rw-r--. 1 cloud_user cloud_user 30 Jul 28 06:26 01_basic.sh
[cloud_user@888ed763a51c myscripts]$ chmod +x 01_basic.sh 
[cloud_user@888ed763a51c myscripts]$ ls -lhrt
total 4.0K
-rwxrwxr-x. 1 cloud_user cloud_user 30 Jul 28 06:26 01_basic.sh


Comments:
* Using #
  #This is a comment.
* Multi line comment:
[cloud_user@888ed763a51c myscripts]$ cat 02_comments.sh 
#!/bin/bash
echo "checking comments"
#This is a single line comment.
<<comment
this
is
multi
line comments.
comment
[cloud_user@888ed763a51c myscripts]$ ./02_comments.sh 
checking comments


What are variable?
To store a value and use it again and again whenever needed.



