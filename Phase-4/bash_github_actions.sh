#!/bin/bash

main_folder="/Phase-3"

if [[ ! -d "$main_folder" ]]; then
	echo "ERROR: Directory $main_folder does not exist"
	exit 1
fi

echo "RUNNING ALL THE SCRIPTS INSIDE $main_folder"
echo

PASS=0
FAIL=O
TOTAL=0


for script in "$main_folder"/*.sh; do
	
	if [[ ! -e "$script" ]]; then
		echo "No .sh files in $main_folder"
		exit 1
	fi
	
	((TOTAL++))

	echo "RUNNING THE SCRIPT: $script"
	
	chmod +x "$script"

	bash "$script"
	EXIT_CODE=$?

	if [[ EXIT_CODE -eq 0 ]]; then
		echo "PASS: $script"
		((PASS++))
	else
		echo "FAIL: $scirpt"
		((FAIL++))
	fi

	echo "----------------------------------------"

done

echo 
echo "----SUMMARY-----"
echo "Total Scripts: $TOTAL"
echo "Passed: $PASS"
echo "Failed: $FAIL"

exit $FAIL
