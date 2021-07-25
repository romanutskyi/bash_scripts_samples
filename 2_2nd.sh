####!!!IMPORTANT!!!####
#Install pwgen first
####DEBIAN/UBUNTU######
# apt-get install -y pwgen
#######FEDORA##########
# dnf install -y pwgen
#######CENTOS##########
# yum install -y pwgen
#######################
#!/bin/bash

count=10

for (( i = 1; i <= count; i++ ))
do

    printf -v num %02d $i
   	randomString=$( dd if=/dev/urandom bs=15 count=1 | tr -dc 'a-zA-Z0-9' );
	fileName=$randomString"_$num.txt"  
	
	randomText=$( pwgen -s -1 99 10); 
	echo $randomText > $fileName;
done
