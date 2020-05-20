#!/bin/bash -x
echo " "
echo "    Welcome to Employee Wage Computation Program "
echo " "
declare -A wagePerDay
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
wagePerDay["$day"]=$wagePerDay
if (($totalHours>=$maxHours))
then
	echo "Maximum Hours reached by employee"
	break
fi
done
wagePerMonth=$(($totalHours*$wagePerHour))
wagePerDay[$day]=$wagePerMonth
echo " "
echo "Total Hours worked : $totalHours"
echo "Monthly Wages      : $wagePerMonth"
echo "Daily Wages: "
for key in ${!wagePerDay[@]}
do
	echo "day $key : ${wagePerDay[$key]}"
done
