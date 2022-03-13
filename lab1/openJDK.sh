#!/bin/bash
cp ~/lab2/OpenJDK8U-jdk_aarch64_linux_openj9_8u292b10_openj9-0.26.0.tar /usr/lib/jvm
cd /usr/lib/jvm/
tar -vxf OpenJDK8U-jdk_aarch64_linux_openj9_8u292b10_openj9-0.26.0.tar
echo export JAVA_HOME=/usr/lib/jvm/jdk8u292-b10 >>/etc/profile
echo export PATH=$JAVA_HOME/bin:$PATH >>/etc/profile
echo export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar>>/etc/profile
source /etc/profile
java -version

