for i in {1..4}
do
   for j in {1..6}
   do
      if [ $i -eq 2 -a $j -eq 5 ]
      then 
         continue 3
      else
         echo "$i $j"
      fi
   done
done
