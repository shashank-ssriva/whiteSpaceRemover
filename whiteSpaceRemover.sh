# whiteSpaceRemover : - A simple shell utility built on top of ``sed`` to remove horizontal whitespaces from your code.
# Author : Shashank Srivastava
# Date : 12 July 2017
#! /bin/bash
echo ""
echo "Hi There! Welcome to whiteSpaceRemover. This small utility will help you remove horizontal whitespaces from your code. End result is clean & more readable code ;-)"
echo ""
echo "whiteSpaceRemover takes care of backing up the original file before overwriting it, so always have your original file with you."
echo ""
if [ $# -eq 0 ]
then
  echo "Error!! Please input a filename. Run this utility as ./whiteSpaceRemover.sh filename"
  exit
fi
FILENAME=$1
if [ -f $FILENAME ]
then
  echo "Safety first! Hence, backing up the original file as '$FILENAME.whiteSpaceRemover.orig'..."
  cp $FILENAME $FILENAME.whiteSpaceRemover.orig
  echo ""
  echo "Removing all horizontal whitespaces from your file/code now..."
  sed '/^\s*$/d' $FILENAME > /tmp/$FILENAME
  cp /tmp/$FILENAME $FILENAME
  rm /tmp/$FILENAME
  echo ""
  echo "Horizontal whitespaces removed. Please check your file."
  echo "I hope you liked it ;-)"
else
  ls -lh $FILENAME
  echo "No such file. Please check the file-name."
fi
