#!/bin/bash -x

echo "Employee Attendance"
present=1
absent=0

attendance=$((RANDOM%2))
if (( $attendance == $present ))
then
	echo "Employee present"
else
	echo "Employee absent"
fi
