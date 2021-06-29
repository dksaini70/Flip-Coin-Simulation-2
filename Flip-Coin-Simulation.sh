#!/bin/bash 
echo "singlet combination"
Head=1
Tail=0
function singlet ()
{
local count=0
local count1=0
n=10
declare -A local store
declare -A local store1
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
echo "no of head come is "$count
echo "no.of tail come is "$count1
local percent=$(( $count*100 /$n ))
local percent1=$(($count1 * 100 /$n))
store1[H]=$percent"%"
store1[T]=$percent1"%"
echo ${!store1[@]}
echo ${store1[@]}
}
singlet
function doublet
{
local count=0
count1=0
count2=0
count3=0
declare -A doublet
declare -A store
for((j=1;j<=n;j++))
do
coin1=$((RANDOM%2))
coin2=$((RANDOM%2))
if [ $coin1 -eq $Head -a $coin2 -eq $Head  ]
then
store[$j]="HH"
((count++))
elif [ $coin1 -eq $Head -a $coin2 -eq $Tail ]
then
store[$j]="HT"
((count1++))
elif [ $coin1 -eq $Tail -a $coin2 -eq $Tail ]
then
store[$j]="TT"
((count2++))
elif [ $coin1 -eq $Tail -a $coin2 -eq $Head ]
then
store[$j]="TH"
((count3++))
fi
done
echo  ${store[@]}
echo "no.of HH come "$count
echo "no.of HT come "$count1
echo "no.Of TT come "$count2
echo "no.of TH come "$count3
local percent=$(( $count*100 /$n ))
local percent1=$(($count1 * 100 /$n))
local percent2=$(( $count2*100 /$n ))
local percent3=$(($count3 * 100 /$n))
doublet[HH]=$percent"%"
doublet[HT]=$percent1"%"
doublet[TT]=$percent2"%"
doublet[TH]=$percent3"%"
echo ${doublet[@]}
echo ${!doublet[@]}
}
echo "doublet combination"
doublet

