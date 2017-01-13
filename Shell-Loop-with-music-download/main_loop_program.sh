function_Loop(){
HOST = "http://www.talkenglish.com/AudioTE1/"
for i in {1..10}
do

   for j in {1..90}
     do
        
    STATUS_CODE=$(curl -L -s -o /dev/null -w "%{http_code}" "http://www.talkenglish.com/AudioTE1/E0"$i"/sentence/E00"$i"S"$j".mp3")

            if [ $STATUS_CODE -eq 200 ]; 
            then
		printf '[\033[1;32mpass\033[m]\t%s\n' "Successfully connected -${STATUS_CODE}"
		wget "http://www.talkenglish.com/AudioTE1/E0"$i"/sentence/E00"$i"S"$j".mp3"
		
            else
                printf '[\033[1;31merror\033[m]\t%s\n' "Unable to connect -${STATUS_CODE}"
                printf "http://www.talkenglish.com/AudioTE1/E0"$i"/sentence/E00"$i"S"$j".mp3"
		
                exit 1  
            fi
     done
done
}
function_Loop 



test1(){
  echo "$1"
}
message="Salam"
test1 "message"

