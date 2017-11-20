#!/bin/bash
#Name   :Yuval Matityahu
#Purpose:Get list of data from user and stored it in array  
#Version 1.0
#Date : 16/12/2017

store_data_to_array()
{
# asked user to insert list of data 
printf "Please Enter data to be stored in array seperate in blank: \n"
read -a array_data
}

print_digits_data()
{
for ((i=0;i<${#array_data[@]};i++))
{
  if [ ${array_data[i]} -eq ${array_data[i]} 2> /dev/null ];then
    printf "${array_data[i]}\n"
    sleep 1
   else
    printf "${array_data[i]} is not number\n"
  fi
}  

}

show_waiting_bar()
{
index_achuz=8
for ((i=0;i<${#array_data[@]};i++))
{
sleep 1
if [ ${#array_data[@]} -eq 1 ];then
 index_achuz=100
else
let "index_achuz*=2"
fi
echo $index_achuz
} | whiptail --title "Check Array" --gauge "scanning data comtaind sigits" 8 78 0
}



main()
{
store_data_to_array
show_waiting_bar
print_digits_data
}

main
