#!/usr/bin/env bash
#File guessingame.sh

count=0

function guess {
echo "How many files are in the current directory:"
read count
}

while true
do
	guess
	if [[ $count == ?(-)+([0-9]) ]]
	then 
           actual_file_count=`ls -al | egrep ^[-] | wc -l`
         if [[ $actual_file_count -eq $count ]]
	 then
		 echo "Congratulation, It is correct!!"
		 break;
	 elif [[ $count -lt $actual_file_count  ]]
	 then
		 echo "Guessed file count is too low"
	 elif [[ $count -gt $actual_file_count ]]
	 then
		 echo "Guessed file count is too high"
		fi
	else
		echo "Enter only number"
	fi
done

			
