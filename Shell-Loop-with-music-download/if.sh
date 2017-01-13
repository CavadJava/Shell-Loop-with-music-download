errorstatus="notnull"
if [ !$errorstatus ]; then
   echo "string is not null"
else
   echo "string is null"
fi

a="Hello"
foo="$a World"
echo $foo

