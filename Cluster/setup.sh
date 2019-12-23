#! /bin/bash

sudo dpkg -i *
cd q-e
sudo make 
sudo make install
cd ..
cd ..
cp -r Cluster /tmp/

for ip in `cat /home/user/tmp/bhosts`
do
    echo "$ip"
    scp -r /tmp/Cluster user@$ip:/tmp/
    ssh user@$ip ''
done
