#!/bin/bash
echo "please input  accessKey"
read accessKey

echo "please input secretKey"
read secretKey

echo "please input endpoint"
read endpoint

# accessKey=kkkdsagdfagfdjj
# secretKey=12334345346t4
# endpoint=fsafasdgagffdfgad



rm -rf /home/modules/
mkdir /home/modules/
cp -r ~/lab2/hadoop-2.7.7 /home/modules/
cd /home/modules/
echo 'export JAVA_HOME=/usr/lib/jvm/jdk8u292-b10' >>/home/modules/hadoop-2.7.7/etc/hadoop/hadoop-env.sh

echo "<configuration>
<property>
 <name>fs.obs.readahead.inputstream.enabled</name>
 <value>true</value>
</property>
<property>
 <name>fs.obs.buffer.max.range</name>
 <value>6291456</value>
</property>
<property>
 <name>fs.obs.buffer.part.size</name>
 <value>2097152</value>
</property>
<property>
 <name>fs.obs.threads.read.core</name>
 <value>500</value>
</property>
<property>
 <name>fs.obs.threads.read.max</name>
 <value>1000</value>
</property>
<property>
 <name>fs.obs.write.buffer.size</name>
 <value>8192</value>
</property>
<property>
 <name>fs.obs.read.buffer.size</name>
 <value>8192</value>
</property>
<property>
 <name>fs.obs.connection.maximum</name>
 <value>1000</value>
</property>
<property>
 <name>fs.defaultFS</name>
 <value>hdfs://node1:8020</value>
</property>
<property>
 <name>hadoop.tmp.dir</name>
 <value>/home/modules/hadoop-2.8.3/tmp</value>
</property>
<property>
 <name>fs.obs.access.key</name>
 <value>$accessKey</value>
</property>
<property>
 <name>fs.obs.secret.key</name>
 <value>$secretKey</value>
</property>
<property>
 <name>fs.obs.endpoint</name>
 <value>$endpoint</value>
</property>
<property>
 <name>fs.obs.buffer.dir</name>
 <value>/home/modules/data/buf</value>
</property>
<property>
 <name>fs.obs.impl</name>
 <value>org.apache.hadoop.fs.obs.OBSFileSystem</value>
</property>
<property>
 <name>fs.obs.connection.ssl.enabled</name>
 <value>false</value>
</property>
<property>
 <name>fs.obs.fast.upload</name>
 <value>true</value>
</property>
<property>
 <name>fs.obs.socket.send.buffer</name>
 <value>65536</value>
</property>
<property>
 <name>fs.obs.socket.recv.buffer</name>
 <value>65536</value>
</property>
<property>
 <name>fs.obs.max.total.tasks</name>
 <value>20</value>
</property>
<property>
 <name>fs.obs.threads.max</name>
<value>20</value>
</property>
</configuration>" > /home/modules/hadoop-2.7.7/etc/hadoop/core-site.xml
