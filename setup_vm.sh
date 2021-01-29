#!/usr/bin/env bash
sudo apt-get -y update       
sudo apt -y install libssl-dev cmake build-essential libhwloc-dev libuv1-dev

sudo sysctl -w vm.nr_hugepages=1500
git clone https://github.com/Sandalphon77/azure_mining
if [ -z "$gittag" ]
then
      echo "Running with latest version from git..."
else
      echo "checkout tag $gittag"
      cd azure_mining
      git checkout $gittag
      cd ..
fi

cd azure_mining
./compile_and_config.sh








