#!/bin/bash

touch MOS_IP
ip=$(cat MOS_IP)
curl --connect-timeout 0.5 -m 0.5 http://$ip/rpc/RPC.List
if [ $? -eq 0 ]
then
echo "Found IP:$ip"
echo $ip > MOS_IP
exit
fi



network=$(hostname -I | grep -Po "\d+\.\d+\.\d+" )

for a in {1..254}
do
ip=$network.$a
echo "Trying: $ip"
curl --connect-timeout 0.02 -m 0.5 http://$ip/rpc/RPC.List
if [ $? -eq 0 ]
then
echo "Found IP:$ip"
echo $ip > MOS_IP
exit
fi
done
