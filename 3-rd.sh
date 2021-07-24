#!/bin/bash

echo "HOSTNAME is:" > system_info.txt
hostname >> system_info.txt
echo "============" >> system_info.txt
echo "CPU CORES" >> system_info.txt
grep 'cpu cores' /proc/cpuinfo | uniq >> system_info.txt
echo "============" >> system_info.txt >> system_info.txt
echo "MEMORY TOTAL: " >> system_info.txt >> system_info.txt
cat /proc/meminfo | grep MemTotal >> system_info.txt
echo "============" >> system_info.txt
echo "DISK TOTAL SIZE:" >> system_info.txt
fdisk -l | grep Disk >> system_info.txt

