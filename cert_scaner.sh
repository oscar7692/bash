#!/bin/bash
# -*- ENCODING: UTF-* -*-

#connection config
cert[0]=mabi015g
cert[1]=mabi016g
cert[2]=mabi017g
cert[3]=mabi018g
cert[4]=mabi019g
cert[5]=mabi01ag
cert[6]=mabi01bg
cert[7]=mabi01cg
cert[8]=mabi01dg
cert[9]=mabi01eg
cert[10]=mabi01fg
cert[11]=mabi01gg
cert[12]=mabi01hg
cert[13]=mabi01ig
cert[14]=mabi01jg
cert[15]=mabi01kg
cert[16]=mabi01lg
cert[17]=mabi01mg
cert[18]=mabi01ng
cert[19]=mabi01og
cert[20]=mabi01pg
cert[21]=mabi01qg
user=burnin
pass=hosepipe
admin=bonsai
flag=0
#*******************************************************************
#cmd to send
cmd1="cd /home/burnin/testdata"
cmd2=ls boxdata.txt
cmd3="cat boxdata.txt>>${cert[flag]}"
cmd4=ls ${cert[flag]}
cmd5="scp /home/burnin/testdata/${cert[flag]} burnin@teft011g.sac.xyratex.com:/home/burnin/normadocs"
#*******************************************************************
#envia los cmd por telnet
for((i=1;i<=1;i++));do
	(echo open ${cert[flag]}
		sleep 3
		echo ${user}
		sleep 3
		echo ${pass}
		sleep 3
		echo ${cmd1}
		sleep 1
		echo ls boxdata.txt
		sleep 1
		echo "cat boxdata.txt>>${cert[flag]}"
		sleep 1
		echo ls ${cert[flag]}
		sleep 1
		echo "scp /home/burnin/testdata/${cert[flag]} burnin@teft011g.sac.xyratex.com:/home/burnin/normadocs"
		sleep 4
		echo hosepipe
		sleep 4
		echo rm ${cert[flag]}
		sleep 1
		)| telnet
	flag=$(( $flag + 1 ))
done
#********************************************************************
#compress files

echo "cd /home/burnin/normadocs"
sleep 1
echo "zip cert_scan.zip mabi015g mabi016g mabi017g mabi018g mabi019g mabi01ag mabi01bg mabi01cg mabi01dg mabi01eg mabi01fg mabi01gg mabi01hg mabi01ig mabi01jg mabi01kg mabi01lg mabi01mg mabi01ng mabi01og mabi01pg mabi01qg"
sleep 5
#********************************************************************
#envia mail
./mailexample.sh
#echo "Buen dia Norma ya se copiaron los archivos en un momento seran enviados" | mail -s "Listado de unidades en cert Butser" -c oscar.acosta@seagate.com
sleep 4
