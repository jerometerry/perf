# perf

Vagrantfile, scripts, and JMeter test plan, illustrating how to generate mixed mode java flame graphs for Tomcat. This accompanies my [blog post](http://blog.jerometerry.com/2016/12/generating-java-mixed-mode-flame-graphs.html). See the [Java in Flames](http://techblog.netflix.com/2015/07/java-in-flames.html) post on the Nextflix blog for more information. 

git clone https://github.com/jerometerry/perf.git

cd ./perf

vagrant up

vagrant ssh

sudo ~/generate-flamegraph.sh

exit
