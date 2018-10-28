#!/bin/ksh

count=1

#while true ; do

  echo "Count:$count"


    for id in 0x10d 0x10e 0x10f 0x110 0x111 0x112 0x113 0x114 0x115 0x116 0x117 0x118 ; do
           echo "Running Config $id"
                config_tc_sg -adpt=mpt2sas -adpn=0xa000 -id=$id -optime=43200 -tco=0x0 -bt=204  > config_c$count.id$id.log &
                     getglist_tc_sg -adpt=mpt2sas -adpn=0xa000 -id=$id -optime=43200 -tco=0x0 -bt=204  > glist_start_c$count.id$id.log &
                       done

                         echo "Waiting..."
                           wait


                             for id in 0x10d 0x10e 0x10f 0x110 0x111 0x112 0x113 0x114 0x115 0x116 0x117 0x118 ; do
                                    echo "Running EraseSED Bands to id $id"

                                         sed_configure_tc_sg -adpt=mpt2sas -adpn=0xa000 -bus=0 -box=1 -pos=1 -id=$id  -display_only > SED_Display_before_c$count.id$id.log
                                              sed_configure_tc_sg -adpt=mpt2sas -adpn=0xa000 -bus=0 -box=1 -pos=1 -id=$id  -erase_only > SED_Erase_c$count.id$id.log
                                                   sed_configure_tc_sg -adpt=mpt2sas -adpn=0xa000 -bus=0 -box=1 -pos=1 -id=$id  -display_only > SED_Display_after_c$count.id$id.log
                                                      done


                                                         echo "Waiting..."
                                                            wait

