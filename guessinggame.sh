#!/usr/bin/env bash

echo "[Welcome to Guessing game]"

function guess (){
	files=$ (ls -1 |grep "^-"|wc-1)
	while true;
	do
		echo "How many files are in the current directory?:"
	read num
	if [$num -lt $files]
	then 
		echo "Guess is Too low."
	else if [$num -gt files]
	then
		echo "Guess is Too high."
	else
		echo "Congratulations, You guess is correct"
	break;
	fi
done
}
guess
