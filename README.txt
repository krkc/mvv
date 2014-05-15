README - 15May2014

 -------------------------------------------------------
| mvv.sh - Batch-rename utility by Christopher Kurek	|
| kurekc @ hotmail.com					|
 -------------------------------------------------------

Note: For the full usefulness as being a quick terminal utility, it's
recommended to create a link in the user's bin directory such as:
%sudo ln mvv.sh /usr/bin/mvv


This program accepts two usages (or with no parameters for quick help):

Usage 1:

mvv.sh -[beginning of filenames] [newfilenames]
This usage is for files that start with similar characters in the beginning of their filenames.
The first parameter can be a full path followed by the first few characters of a filename.
If no path is given, files will be searched in the current working directory.

Example:
%ls .
file0 file1 file2
%mvv.sh fi newfile
%ls .
newfile0 newfile1 newfile2

-or-

%ls .
file0.txt file1.txt file2.png
%mvv.sh fi newfile
%ls .
newfile0.txt newfile1.txt newfile2.png

Usage 2:

mvv.sh -[newfilenames]
This usage will rename all files in the working directory to the newfilenames parameter.

Example:
%ls .
file0 file.txt image.png script.sh movie.avi
%mvv.sh samename
%ls .
samename0 samename1.txt samename2.png samename3.sh samename4.avi
