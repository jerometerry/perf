# perf

Vagrantfile, scripts, and JMeter test plan, illustrating how to generate mixed mode java flame graphs for Tomcat. This accompanies my [blog post](http://blog.jerometerry.com/2016/12/generating-java-mixed-mode-flame-graphs.html). See the [Java in Flames](http://techblog.netflix.com/2015/07/java-in-flames.html) post on the Nextflix blog for more information. 

## Prerequisites

Need VirtualBox and Vagrant installed. Require JMeter 3.1+ to apply load to Tomcat, which requires Java JRE. 

## Spinning up VM

git clone https://github.com/jerometerry/perf.git

cd ./perf

vagrant up

## Generate Load

Open JMeter, and load the FlameGraph.jmx test plan, then hit the run button (might need to tweak test plan based on your setup). 

## Generating Flame Graph

vagrant ssh

sudo ~/generate-flamegraph.sh

exit

## Output

flamegraph.svg should be copied from the VM to the perf folder you cloned this repo into. 
