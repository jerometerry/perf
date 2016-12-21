#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y openjdk-8-jdk openjdk-8-dbg 
sudo apt-get install -y tomcat7 tomcat7-examples
sudo cp /vagrant/tomcat7 /etc/default/tomcat7
service tomcat7 restart

sudo apt-get install -y linux-tools-common linux-tools-generic linux-tools-`uname -r`
sudo apt-get install -y cmake build-essential
git clone --depth=1 https://github.com/brendangregg/FlameGraph
git clone --depth=1 https://github.com/jrudolph/perf-map-agent
cd ./perf-map-agent
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
cmake .
make
cd ..
