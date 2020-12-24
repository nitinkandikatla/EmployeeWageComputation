#! /bin/bash -x

isPresent=1
randomCheck=$(( RANDOM%2 ))
if [[ $randomCheck -eq $isPresent ]];
then
	empRatePerHr=20
	empHrs=8
	salary=$(($empRatePerHr*$empHrs))
else
	salary=0
fi

