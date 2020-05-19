#!/bin/bash -x

echo "Employee Daily Wage"

empHour=8
wagePerHour=20
present=1
absent=0
attendace=$((RANDOM%2))

if (( $attendace==$present))
then
	wagePerDay=$(($wagePerHour*$empHour))
else
	wagePerDay=0
fi
echo "Daily Wage: $wagePerDay"
