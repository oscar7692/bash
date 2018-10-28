#!/bin/bash
# -*- ENCODING: UTF-* -*-

flag=0
user=burnin
pass=hosepipe
admin=bonsai

#*************************************************
function mabilist {
	cert[0]=mabi051g
	cert[1]=mabi052g
	cert[2]=mabi053g
	cert[3]=mabi054g
	cert[4]=mabi055g
	cert[5]=mabi056g
	cert[6]=mabi057g
	cert[7]=mabi058g
		for ((i=1;i<=8;i++));do
			(echo open ${cert[flag]}
			sleep 3
			echo ${user}
			sleep 3
			echo ${pass}
			sleep 3
			cmdlist)| telnet
			flag=$(($flag + 1))
		done
}

#************************************************
function cmdlist {
	cmd1="cd /home/burnin/testdata"
	cmd2="cat drivemap.1>>box1.txt"
	cmd3="cat drivemap.2>>box2.txt"
	cmd4="cat drivemap.3>>box3.txt"
	cmd5="cat drivemap.4>>box4.txt"
	}
#*************************************************
