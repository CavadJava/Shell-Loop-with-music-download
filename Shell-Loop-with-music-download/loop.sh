for i in {1..90}
do
   wget "http://www.talkenglish.com/AudioTE1/E01/sentence/E001S"$i".mp3"
   for j in {1..19}
     do
        wget "http://www.talkenglish.com/AudioTE1/E0"$i"/sentence/E00"$i"S"$j".mp3"
#final direcortory-->http://www.talkenglish.com/AudioTE1/E90/sentence/E090S10.mp3
     done
done
