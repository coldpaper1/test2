#!/bin/bash

company=""
message=""
loop="loop"

#echo -e "\t\tcompany select"
#echo -en "\t     1.aws 2.gcp 3.azure"
echo -e "\t     1.aws 2.gcp 3.azure"
echo "=============================================="



while [[ -n "$loop" ]]
do

echo -en "\t\tcompany select : "
read company
echo
	
if [ $company -eq 1 ]
then
	company="aws"
	loop=""
elif [ $company -eq 2 ]
then
	company="gcp"
	loop=""


elif [ $company -eq 3 ]
then
	company="azure"
	loop=""
else
	echo -e "\t\tInvalid input."
fi
done


echo -e "\t\t     $company"

echo $company > name.txt
echo
git add .
echo -en "\t\tEnter your message : "
read message

git commit -m "${message}"
git push origin master
echo
echo -e "\t\tgit push susuccess!!"
