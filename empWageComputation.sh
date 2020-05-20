#!/bin/bash -x
echo " "
echo "    Welcome to Employee Wage Computation Program "
echo " "

wagePerHour=20
dailyHour=8
absent=0
fullTime=1
partTime=2
empType=$((RANDOM%3))

if (($empType == $fullTime))
then
	echo "Full Time Employee"
	dailyHour=8
elif (($empType == $partTime ))
then
	echo "Part Time Employee:"
	dailyHour=8
	wagePerHour=10
else
	echo "Employee is Absent"
	dailyHour=0
fi
wagePerDay=$(($dailyHour*$wagePerHour))
echo "Employee Wage : $wagePerDay"
