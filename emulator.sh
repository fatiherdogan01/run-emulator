#!/bin/bash
cd ~/Library/Android/sdk/tools
name=$(./emulator -list-avds)
eval "arr=($name)"
INDEX=0
echo "***********************"
for s in "${arr[@]}"; do 
    echo "${INDEX} - $s"
    let INDEX=${INDEX}+1
done
echo "***********************"
read -p "Enter emulator number: " num


if [[ "$num" =~ ^[0-9]+$ ]]
   then
        if [ $num -ge 0 ] && [ $num -lt $INDEX ]
           then
                 echo "${arr[$num]} running..."
                ./emulator -avd ${arr[$num]}
            else
                 echo "Invalid Value" 
            fi
        
   else
         echo "Just enter the number"
   fi
 
