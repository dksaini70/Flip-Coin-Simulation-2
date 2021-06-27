#!/bin/bash 
echo "find head or tail"
Head=1
Tail=0
count=0
count1=0
n=10
declare -A store
for(( i=1;i<=n;i++ ))
do
coin=$((RANDOM%2))
if [ $coin -eq $Head ]
then 
store[$i]="head"
((count++))
else
store[$i]="tail"
((count1++))
fi
done
echo ${store[@]}
echo $count
echo $count1
percent=$(( $count*100 /$n ))
echo "percent of head "$percent"%"
percent1=$(($count1 * 100 /$n))
echo "percent of tail "$percent1"%"
