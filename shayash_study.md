# What is Lunux Shell?
A shell provide an environment to a user to execute commands and interact with Kernal.
Shell Script is a sequence of commands pasted in a text file.

# Why need to develop shell script?
To automate repetitive task in our Unix/Linux Environment.

# Example of use case of shell scripting:
* Send some devops tools versions Report to compliance team at every friday.
  - Version info of java, git, Jenkins nginx, Docker/Kubernats, Ansible etc...
* Find log file between two date.
* Monitoring application(s) or tool(s) File system usage.
  - Monitoring xyz log directory and if any log are not generating in last 24 hours then trigger a mail.
  - Monitor micro services and send automatic mail alerts when application are down.
  - Monitor Jenkins and send automatic email alert when application is down.
  - Monitoring file system usage and send automatics email alerts when your file system usage is more than threshold let say 90%

# There are different type of shell:
* Bash (Most commonly used type. That why now people call this Bash scripting in the place of shell scripting)
* sh (Old Version)
* ksh
* tsh
* fish
* zsh (Extended version of Bash Shell, more advanced)
When we use mac then we got default zsh shell, but most commonly in linux are bash shell.

You can check using echo $0, echo $SHELL
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

# What is Shell Scripting?
*Shell script consist of set of commands to perform a task.
*All the command execute sequentially.
*Some task like file manipulation, Program execution, user interaction, automation of task etc can be done.

# Basic Steps to develop/ Write And Execute Bash Shell Scripting
* Step 1: Get Requirement & it's required command.
* Step 2: Choose shell type (in our case bash) and find the location of shell: which bash
* Step 3: Open file using vi/vim editors (ex: vi firstScript.sh) on your Linux/unix/mac os.
  - Note: .sh extension is not mediatory.
* Step 4: Write Shebang line (#!/bin/bash) as a very first line in script.

# Check the bash complete path
$which bash

First Basic Script...

[cloud_user@888ed763a51c myscripts]$ cat 01 
#!/bin/bash

echo "Hey buddy"

Ouptput:
[cloud_user@888ed763a51c myscripts]$ ./01_basic.sh 
Hey buddy

# What is Shebang?
#!/bin/bash : Here we use to solve the capatability problem, this allow to use bash scripting use this if bash is not default one in that perticular os.
Better to follow the standard.


echo "Hey buddy" .... Here echo means ending output to the terminal. 


# How to run the script:
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


# What are variable?
To store a value and use it again and again whenever needed.
Better use "" for variable, which is good practice.
When ever we are using variable, we need to use $ sign.
If you use the same varialbe again then it value will change with last one bofore that command run.


VAR_NAME=value
VAR_NAME=$(hostname)
echo $VAR_NAME


[cloud_user@888ed763a51c myscripts]$ cat 03_vardemo.sh 
#!/bin/bash
#Script to show how to use variables.
a=10
name="Prashant"
age=28
echo "My name is $name and age is $age"
name="Shayash"
echo "My name is $name"
#var to store the output of a command
HOSTNAME=$(hostname)
echo "Name of this machine is $HOSTNAME"
[cloud_user@888ed763a51c myscripts]$ ./03_vardemo.sh 
My name is Prashant and age is 28
My name is Shayash
Name of this machine is 888ed763a51c.mylabserver.com


To check the machine name:hostname
[cloud_user@888ed763a51c myscripts]$ hostname
888ed763a51c.mylabserver.com

# Constant Variable? 
Once you defined a variable and don't wanna change it until end of the script. Just need to write only before the variable.

#!/bin/bash











