#!/bin/bash
# Installs requirements for libLAS
source ./bin/ci/common.sh
echo "$(tmstamp) *** before_install::apt-get starting $(date) ***"
sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 16126D3A3E5C1192
sudo apt-get update -qq
sudo apt-get install -qq cmake libboost-program-options-dev libboost-thread-dev libboost-system-dev libboost-filesystem-dev
echo "$(tmstamp) *** before_install::apt-get finished $(date) ***"
gcc --version
clang --version
