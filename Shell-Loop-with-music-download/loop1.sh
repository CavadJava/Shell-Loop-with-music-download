for i in {1..10}
do
URL="http://www.talkenglish.com/AudioTE1/E01/sentence/E001S"$i".mp3"
   wget $URL
   errorstatus="notnull"
   if [ !$errorstatus ]; then
      echo "string is not null"
   else
      echo "string is null"
   fi
done
