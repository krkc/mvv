#!/bin/bash


# mvv is a bash utility script for batch file renaming

# Copyright (C) 2014 Christopher Kurek

# This program is free software: you can redistribute it and/or modify 
# it under the terms of the GNU General Public License as published by 
# the Free Software Foundation, either version 2 of the License, 
# or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful, 
# but WITHOUT ANY WARRANTY; without even the implied warranty of 
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
# See the GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License 
# along with this program. If not, see http://www.gnu.org/licenses/.


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
		dir=".";
		mvcommand="$1";
	else
		echo "No.";
	fi

	# Directory list

	count="0";
	for files in `ls "$dir"`
	do

		# Rename files
		if [[ $# == 1 ]]; then
			base="${files%.[^.]*}";
			exten="${files:${#base}}";
			mv "$dir/$files" "$dir/$mvcommand$count$exten";
			(( count++ ));
		elif [[ $files =~ ^$(basename "$1") ]]; then
			base="${files%.[^.]*}";
			exten="${files:${#base}}";
			mv "$dir/$files" "$dir/$mvcommand$count$exten";
			(( count++ ));
		fi

	done
fi
