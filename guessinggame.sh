#!/usr/bin/env bash
#File guessingame.sh

file_count=0
function read_guess {
echo "How many files are in the current directory:"
read file_count
}

while true
do
	read_guess
	if [[ $file_count == ?(-)+([0-9]) ]]
	then 
           actual_file_count=`ls -al | egrep ^[-] | wc -l`
         if [[ $actual_file_count -eq $file_count ]]
	 then
		 echo "Congratulation, It is correct!!"
		 break;
	 elif [[ $file_count -lt $actual_file_count  ]]
	 then
		 echo "Guessed file count is too low"
	 elif [[ $file_count -gt $actual_file_count ]]
	 then
		 echo "Guessed file count is too high"
		fi
	else
		echo "Enter only number"
	fi
done

			
