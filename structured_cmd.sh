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
