#!/usr/bin/env bash
# Usage:
# sudo generate-flamegraph.sh

perf record -F 99 -a -g -- sleep 30
./FlameGraph/jmaps
chown root /tmp/perf-*.map
chown root perf.data
perf script | ./FlameGraph/stackcollapse-perf.pl | ./FlameGraph/flamegraph.pl --color=java --hash > flamegraph.svg
rm /tmp/perf-*.map
rm perf.data
