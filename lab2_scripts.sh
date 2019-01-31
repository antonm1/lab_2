#!/bin/bash
#Authors: Anton Machkasov
#Date: 1/31/2019


#grep <expression> <filename>

#Problem 1 code:

#Running user's command (commented out)
#grep $1 $2



fileName="regex_practice.txt"
#regex = $2
regex="[0-9]\{3\}-[0-9]\{3\}-[0-9]\{4\}"
echo "There are $(grep -c $regex $fileName ) phone numbers in the file"

#echo "There are $(grep -c "@geocities.com" $fileName) Email addresses in the file"

#The following prints all "@geocities.com" emails to email_results.txt

echo "$(grep "@geocities.com" $fileName) \n"> email_results.txt

#the following prints the number of email addresses

echo "There are $(grep -c '.*@.*\..*' $fileName) email addresses in the file"


regex303='303-[0-9]\{3\}-[0-9]\{4\}'
#grep $regex303 $fileName
#grep '303-[0-9]\{3\}-[0-9]\{4\}' regex_practice.txt  #prints every -303 phone number
echo "There are  $( grep -c $regex303 $fileName ) 303- phone numbers"

echo "$(grep $regex303 $fileName) \n" > phone_results.txt
