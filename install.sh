git pull

rm -rf target
rm -f devenv
if [ -z "$JAVA_HOME" ]; then
  JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_71.jdk/Contents/Home
fi
export PATH=/opt/taobao/mvn/bin:$JAVA_HOME/bin:$PATH
mvn -Dmaven.test.skip=true clean package install assembly:assembly -U

# ln -s target/alibaba-rocketmq.dir/alibaba-rocketmq devenv
ln -s target/alibaba-rocketmq-3.2.6-alibaba-rocketmq/alibaba-rocketmq devenv
