#!/bin/bash -x
echo " "
echo "    Welcome to Employee Wage Computation Program "
echo " "

wagePerHour=20
dailyHour=8
present=1
absent=0
attendance=$((RANDOM%2))

if (( $attendance == $present ))
then
	echo "Employee Present"
	dailyHour=8
else
	echo "Emmployee Absent"
	dailyHour=0
fi

wagePerDay=$(($dailyHour*$wagePerHour))

echo "Daily Employee Wage : $wagePerDay"
