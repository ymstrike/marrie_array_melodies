#!/bin/bash
#Name   :Yuval Matityahu
#Purpose:Show blocks list,network device by parameter insert by user
#        b or B - show blocks list , n or N - show network devices 
#Version 1.0
#Date : 16/12/2017

show_block_device()
{
lsblk
}

show_network_device()
{
ifconfig -a
}


read_parm()
{
# asked user to insert parameter
read -p "Please Enter parameter b or B - show block device , n or N - show network device " parm
}

err_msg()
{
printf "You must enter b or b for show block device , n or N for show network device\n"
}
main()
{

while true
do
        # check that insert b or B or n or N
case $parm in
 b) show_block_device && break;;
 B) show_block_device && break;;
 n) show_network_device && break;;
 N) show_network_device && break;;
 *) err_msg && read_parm;; if not b or B or n ot N then print error msg and read again
esac
done
}


main
