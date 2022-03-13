#!/bin/bash
echo 'export HADOOP_HOME=/home/modules/hadoop-2.7.7'>>/etc/profile
echo 'export PATH=$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$PATH'>>/etc/profile
export 'HADOOP_CLASSPATH=/home/modules/hadoop2.7.7/share/hadoop/tools/lib/*:$HADOOP_CLASSPATH' >>/etc/profile
source /etc/profile
