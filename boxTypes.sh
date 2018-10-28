#!/bin/ksh
# -*- ENCODING: UTF-* -*-

istpcfg -b >> resultado.txt

echo "cd /root/"

        if [resultado.txt diff boxcomp.txt] 
                then
                echo "no boxtypes"
        else
                echo "si boxtypes" 
        fi

#        while read resulatdo
#                do
#                        echo $resulatdo
#                done < resultado.txt 
 