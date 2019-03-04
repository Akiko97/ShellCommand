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
