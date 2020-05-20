#!/bin/bash -x
echo " "
echo "    Welcome to Employee Wage Computation Program "
echo " "
count=0
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
wagePerDay=$(($dailyHour*$wagePerHour))
wagePerDay[count++]=$wagePerDay
if (($totalHours>=$maxHours))
then
	echo "Maximum Hours reached by employee"
	break
fi
done
wagePerMonth=$(($totalHours*$wagePerHour))

echo " "
echo "Daily wages for a month ${wagePerDay[@]}"
echo "Total Hours worked : $totalHours"
echo "Monthly Wages      : $wagePerMonth"
