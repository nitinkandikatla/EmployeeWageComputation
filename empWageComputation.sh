#! /bin/bash -x

isFullTime=1
isPartTime=2
empWagePrHrs=20
empCheck=$(( RANDOM%3 ))

case $empCheck in
	$isFullTime)
		empHrs=8
		;;
	$isPartTime)
		empHrs=4
		;;
	*)
        	empHrs=0
		;;
esac
salary=$(($empWagePrHrs*$empHrs ))








