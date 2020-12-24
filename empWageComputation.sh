#! /bin/bash -x

isFullTime=1
isPartTime=2
maxHrsInMonth=100
empRatePerHr=20
maxWorkingDays=20

totalEmpHrs=0
totalWorkingDays=0
totalSalary=0

function getWorkHrs() {
	local empCheck=$1
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
	echo $empHrs
}
function getEmpWage() {
	local empHrs=$1
	echo $(($empHrs*$empRatePerHr))
}
while [[ $totalEmpHrs -lt $maxHrsInMonth && $totalWorkingDays -lt $maxWorkingDays ]]
do
	((totalWorkingDays++))
	empCheck=$(( RANDOM%3 ))
	empHrs="$( getWorkHrs $empCheck )"
	totalEmpHrs=$(( $totalEmpHrs+$empHrs))
	dailyWage[$totalWorkingDays]="$( getEmpWage $empHrs )"
done
totalSalary=$(($totalEmpHrs*$empRatePerHr))
echo ${dailyWage[@]}




























