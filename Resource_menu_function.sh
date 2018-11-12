#!/bin/bash

function tab
{
	echo "================================================"
	echo "=            xx Operation System               ="
	echo "=               Select feature                 ="
	echo "================================================"
	echo "1)CPU              4)Packages             7)HELP"
	echo "2)MEM              5)Network              8)about"
	echo "3)Disk             6)Firewall             9)exit"
	echo ""
}

	clear
	tab				#调用函数
while true
do
	read -p "choice: " choice

	case ${choice} in
		1)
		echo "CPU"
		;;
		2)
		echo "MEM"
		;;
		3)
		echo "Disk"
		;;
		4)
		echo "Packages"
		;;
		5)
		echo "Network"
		;;
		6)
		echo "Firewall"
		;;
		7)
		echo "HELP"
		;;
		8)
		echo "version 1.0"
		;;
		9)
		break
		;;
		*)
		echo "Error Input,Please choose again."
		sleep 3
		clear
		tab
		;;
	esac
done
