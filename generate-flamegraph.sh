#!/usr/bin/env bash

sudo perf record -F 99 -a -g -- sleep 30
sudo ./FlameGraph/jmaps
sudo chown root /tmp/perf-*.map
sudo chown root perf.data
sudo perf script | ./FlameGraph/stackcollapse-perf.pl | ./FlameGraph/flamegraph.pl --color=java --hash > flamegraph.svg
sudo rm /tmp/perf-*.map
sudo rm perf.data
cp ./flamegraph.svg /vagrant
sudo rm ./flamegraph.svg