echo "find head or tail"
Head=1
Tail=0
coin=$((RANDOM%2))
if [ $coin -eq $Head ]
then 
echo "head"
else
echo "tail"
fi

