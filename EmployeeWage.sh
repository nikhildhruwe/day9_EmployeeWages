#!/bin/bash -x

echo "Employee Attendance"
present=1
absent=0
wagePerHour=20
dailyHour=8
attendance=$((RANDOM%2))
if (( $attendance == $present ))
then
	echo "Employee present"
	wagePerDay=$(($wagePerHour*$dailyHour))
else
	echo "Employee absent"
fi
echo  "Daily Employee Wage : $wagePerDay "
