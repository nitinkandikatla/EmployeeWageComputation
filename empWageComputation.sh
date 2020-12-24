#! /bin/bash -x

isFullTime=1
isPartTime=2
empWagePrHr=20
randomcheck=$(( RANDOM%3 ))

if [[ $randomcheck -eq $isFullTime ]];
then
	empHr=8
elif [[ $randomcheck -eq $isPartTime ]]
then
	empHr=4
else
        empHr=0
fi

salary=$(($empWagePrHr*$empHr ))




