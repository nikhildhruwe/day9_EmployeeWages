#!/bin/bash -x
echo " "
echo "    Welcome to Employee Wage Computation Program "
echo " "

wagePerHour=20
dailyHour=8
absent=0
fullTime=1
partTime=2
workingDays=20
for ((day=1;$day<=$workingDays; day++))
do
empType=$((RANDOM%3))
case $empType in
				$fullTime)  	dailyHour=8
						  ;;
 	 			$partTime ) 	dailyHour=4
							;;
							*)		dailyHour=0
							;;
esac
wagePerDay=$(($dailyHour*$wagePerHour))
wagePerMonth=$(($wagePerMonth+$wagePerDay))
done
echo " "
echo "Monthly Wages : $wagePerMonth"
