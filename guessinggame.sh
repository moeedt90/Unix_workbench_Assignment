#!/usr/bin/env bash
#File guessingame.sh

User_Input_count=0
Actual_File_count=$(ls | wc -l)
function User_Input {

	echo "Enter the guess for number of files in the current directory"
	read User_Input_count
			        }

			while true
			do
				User_Input

				if [[ $User_Input_count == +([0-9]) ]]

				then
					if [[ $User_Input_count -lt $Actual_File_count  ]]

					then
						echo "Your guessed file count is too low"

					elif [[ $User_Input_count -gt $Actual_File_count ]]

					then
						echo "Your guessed file count is too high"
					else
						echo " congratulation"
						break;
					fi
				else
					echo "$User_Input_count is not a number"
				fi
			done
			
