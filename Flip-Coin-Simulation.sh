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
echo " "
singlet
function doublet
{
local count=0
local count1=0
local count2=0
local count3=0
declare -A doublet
declare -A local store
for((j=1;j<=n;j++))
do
local coin1=$((RANDOM%2))
local coin2=$((RANDOM%2))
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
echo  " "
echo "doublet combination"
doublet

function triplet
{
count=0
count1=0
count2=0
count3=0
count4=0
count5=0
count6=0
count7=0
declare -A  triplet
declare -A store
for((j=1;j<=20;j++))
do
local coin1=$((RANDOM%2))
local coin2=$((RANDOM%2))
local coin3=$((RANDOM%2))
if [ $coin1 -eq $Head -a $coin2 -eq $Head -a $coin3 -eq $Head  ]
then
store[$j]="HHH"
((count++))
elif [ $coin1 -eq $Head -a $coin2 -eq $Head -a $coin3 -eq $Tail ]
then
store[$j]="HHT"
((count1++))
elif [ $coin1 -eq $Tail -a $coin2 -eq $Tail -a $coin3 -eq $Tail ]
then
store[$j]="HTT"
((count2++))
elif [ $coin1 -eq $Tail -a $coin2 -eq $Tail -a $coin3 -eq $Tail ]
then
store[$j]="TTT"
((count3++))
elif [ $coin1 -eq $Tail -a $coin2 -eq $Tail -a $coin3 -eq $Head ]
then
store[$j]="TTH"
((count4++))
elif [ $coin1 -eq $Tail -a $coin2 -eq $Head -a $coin3 -eq $Head ]
then
store[$j]="THH"
((count5++))
elif [ $coin1 -eq $Tail -a $coin2 -eq $Head -a $coin3 -eq $Tail ]
then
store[$j]="THT"
((count6++))
elif [ $coin1 -eq $Head -a $coin2 -eq $Tail -a $coin3 -eq $Head ]
then
store[$j]="HTH"
((count7++))
fi
done
echo  ${store[@]}
echo "no.of HHH come "$count
echo "no.of HHT come "$count1
echo "no.Of HTT come "$count2
echo "no.of TTT come "$count3
echo "no.of TTH come "$count4
echo "no.of THH come "$count5
echo "no.Of THT come "$count6
echo "no.of HTH come "$count7
local percent=$(( $count*100 /$n ))
local percent1=$(($count1 * 100 /$n))
local percent2=$(( $count2*100 /$n ))
local percent3=$(($count3 * 100 /$n))
local percent4=$(( $count4*100 /$n ))
local percent5=$(($count5 * 100 /$n))
local percent6=$(( $count6*100 /$n ))
local percent7=$(($count7 * 100 /$n))

triplet[HHH]=$percent"%"
triplet[HHT]=$percent1"%"
triplet[HTT]=$percent2"%"
triplet[TTT]=$percent3"%"
triplet[TTH]=$percent4"%"
triplet[THH]=$percent5"%"
triplet[THT]=$percent6"%"
triplet[HTH]=$percent7"%"
echo ${!triplet[@]}
echo ${triplet[@]}
}
echo  " "
echo "triplet combination"
triplet
