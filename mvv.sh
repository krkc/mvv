#!/bin/bash

#---------------------------------------
#	mvv.sh
#	Christopher Kurek
#	14 May 2014
#---------------------------------------

# Usage prompt

if [ ! "$1" ]; then
	echo "mvv: mvv.sh -[beginning of filenames] -[newfilenames]";
	echo "mvv: mvv.sh -[newfilenames] (Renames all files in CD)";
else

	# Filename input

	if [[ $# == 2 ]]; then
		dir=$(dirname "$1");
		mvcommand="$2";
	elif [[ $# == 1 ]]; then
		dir="./";
		mvcommand="$1";
	else
		echo "No.";
	fi

	# Directory list

	count="0";
	for files in `ls "$dir"`
	do

		# Rename files

		if [[ $files =~ ^$(basename "$1") ]]; then
			base="${files%.[^.]*}";
			exten="${files:${#base}}";
			mv "$dir/$files" "$dir/$mvcommand$count$exten";
			(( count++ ));
		fi

	done
fi
