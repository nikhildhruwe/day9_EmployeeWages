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
maxHours=100


function workHours() {

case $empType in
				$fullTime)  	dailyHour=8
						  ;;
 	 			$partTime ) 	dailyHour=4
							;;
							*)		dailyHour=0
							;;
esac
return $dailyHour
}

for ((day=1;$day<=$workingDays; day++))
do
empType=$((RANDOM%3))
workHours $empType
totalHours=$(($totalHours+$dailyHour))
#wagePerDay=$(($dailyHour*$wagePerHour))

if (($totalHours>=$maxHours))
then
	echo "Maximum Hours reached by employee"
	break
fi
done
wagePerMonth=$(($totalHours*$wagePerHour))

echo " "
echo "Monthly Wages      : $wagePerMonth"
echo "Total Hours worked : $totalHours"
