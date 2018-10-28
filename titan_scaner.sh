#!/bin/bash

cert[0]="mabi051g"
cert[1]="mabi052g"
cert[2]="mabi053g"
cert[3]="mabi054g"
cert[4]="mabi055g"
cert[5]="mabi056g"
cert[6]="mabi057g"
cert[7]="mabi058g"
flag=0
user=burnin
pass=hosepipe

#function ddicmap(){
#	if test -d box3; then echo "cd box3" sleep 2; elif test -f drivemap; then echo"cat drivemap>box3" sleep 3; fi 
#	if test -f drivemap.2; then echo "cat drivemap.2>shelf2.txt" sleep 3; fi
#	if test -f drivemap.3; then echo "cat drivemap.3>shelf3.txt" sleep 3; fi
#	if test -f drivemap.4; then echo "cat drivemap.4>shelf4.txt" sleep 3; fi
#	}

for ((i=0; i<=7; i++));
	do	
		( echo open  ${cert[flag]}
		sleep 3
		echo ${user}
		sleep 3
		echo ${pass}
		sleep 3
		echo "su"
		sleep 1
		echo "bonsai"
		sleep 2
		echo "cd /home/burnin/testdata"
		sleep 2
		echo "ls"
		sleep 5
		echo "cat drivemap>box1.txt"
		sleep 1
		echo "cat drivemap.2>box2.txt"
		sleep 1
		echo "cat drivemap.3>box3.txt"
		sleep 1
		echo "cat drivemap.4>box4.txt"
		sleep 1
		echo "ls"
		sleep 5
		echo "zip ${cert[flag]}.zip  box1.txt box2.txt box3.txt box4.txt"
		sleep 4
		echo "scp /home/burnin/testdata/${cert[flag]}.zip root@teft011g.sac.xyratex.com:/home/burnin/titan_scan/"
		sleep 3
		#echo "yes"
		#sleep 4
		echo "bonsai"
		sleep 4
		echo "rm box1.txt"
		sleep 1
		echo "yes"
		sleep 1
		echo "rm box2.txt"
		sleep 1
		echo "yes"
		sleep 1
		echo "rm box3.txt"
		sleep 1
		echo "yes"
		sleep 1
		echo "rm box4.txt"
		sleep 1
		echo "yes"
		sleep 1
		echo "rm ${cert[flag]}.zip"
		sleep 2
		echo "yes"
		sleep 1
		) | telnet
	flag=$(( $flag + 1))
done
