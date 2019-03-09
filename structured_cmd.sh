#! /bin/bash

# if-then
if pwd; then
    echo "command worked"
fi
if not_a_command; then
    echo "command worked"
fi

# if-then-else
testuser=no_such_user
if grep $testuser /etc/passwd
then
    echo user $testuser in file /etc/passwd
    echo complete
else
    echo no such user
fi

# else-if
if ls $HOME/Desktop; then
    echo using GUI
elif ls $HOME/.npm/; then
    echo node installed
else
    echo no node finded
fi

# test
var=""
if test $var; then
	echo ture
else
	echo false
fi
var="TURE"
if test $var; then
	echo ture
else
	echo false
fi
if [ 1 -gt 5 ]; then
	echo 1 is greater than 5
else
	echo 5 is greater than 1
fi
user=akiko
if [ $USER = $user ]; then
	echo Welcome $user
fi
if [ "baseball" \> "hockey" ]; then
	echo "baseball > hockey"
else
	echo "baseball < hockey"
fi
if [ "baseball" \> "Hockey" ]; then
	echo "baseball > Hockey"
else
	echo "baseball < Hockey"
fi
if [ -d $HOME/Desktop ]; then # or use -e
	echo Desktop in HOME
fi
if [ -f `pwd`/README.md ]; then # or use -e
	echo README exist
fi
if [ -O /etc/passwd ]; then
	echo you are the owner of /etc/passwd file
fi
if [ -O $(pwd)/README.md ]; then
	echo you are the owner of $(pwd)/README.md file
fi
if [ -G $(pwd)/README.md ]; then
	echo you are the menber of $(pwd)/README.md file\'s group
fi
if [ `pwd`/base.sh -nt `pwd`/structured_cmd.sh ]
then
	echo base.sh is newer than structured_cmd.sh
else
	echo base.sh is older than structured_cmd.sh
fi
if [ -d $HOME ] && [ -f $HOME/.gitconfig ]; then
	echo using git
fi
val1=10
if (( $val1 ** 2 > 90 )); then
	(( val2 = $val1 ** 2 ))
	echo $val2 \> 90
fi
if [[ $USER == a* ]]; then # if USER start with 'a'
	echo hello $USER
fi

# case
user=root
case $user in
	akiko | silver )
		echo Welcome to system, $user
		;;
	root )
		echo Root;;
	* )
		echo Permission denied;;
esac

# for
# TODO