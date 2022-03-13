#!/bin/bash
echo "please input  master node name"
read nodeName

echo "please input salve1 node name"
read salve1

echo "please input salve2 node name"
read salve2
echo "please input salve3 node name"
read salve3

echo "<configuration>
<property>
 <name>dfs.replication</name>
 <value>3</value>
</property>
<property>
 <name>dfs.namenode.secondary.http-address</name>
 <value>$nodeName:50090</value>
</property>
<property>
 <name>dfs.namenode.secondary.https-address</name>
 <value>$nodeName:50091</value>
</property>
</configuration>" >/home/modules/hadoop-2.7.7/etc/hadoop/hdfs-site.xml

echo "<configuration>
<property>
 <name>yarn.nodemanager.local-dirs</name>
<value>/home/nm/localdir</value>
</property>
<property>
 <name>yarn.nodemanager.resource.memory-mb</name>
 <value>28672</value>
</property>
 <property>
 <name>yarn.scheduler.minimum-allocation-mb</name>
 <value>3072</value>
</property>
 <property>
 <name>yarn.scheduler.maximum-allocation-mb</name>
 <value>28672</value> 
</property>
 <property>
 <name>yarn.nodemanager.resource.cpu-vcores</name>
 <value>38</value>
</property>
 <property>
 <name>yarn.scheduler.maximum-allocation-vcores</name>
 <value>38</value>
</property>
<property>
 <name>yarn.nodemanager.aux-services</name>
 <value>mapreduce_shuffle</value>
</property>
<property>
 <name>yarn.resourcemanager.hostname</name>
 <value>nodeName</value>
</property>
<property>
 <name>yarn.log-aggregation-enable</name>
 <value>true</value>
</property>
<property>
 <name>yarn.log-aggregation.retain-seconds</name>
 <value>106800</value>
</property>
<property>
 <name>yarn.nodemanager.vmem-check-enabled</name>
 <value>false</value>
 <description>Whether virtual memory limits will be enforced for containers</description>
</property>
<property>
 <name>yarn.nodemanager.vmem-pmem-ratio</name>
 <value>4</value>
 <description>Ratio between virtual memory to physical memory when setting memory limits for 
containers</description>
</property>
<property>
 <name>yarn.resourcemanager.scheduler.class</name>
 <value>org.apache.hadoop.yarn.server.resourcemanager.scheduler.fair.FairScheduler</value>
 </property>
<property>
 <name>yarn.log.server.url</name>
 <value>http://nodeName:19888/jobhistory/logs</value>
</property>
</configuration>" >  /home/modules/hadoop-2.7.7/etc/hadoop/yarn-site.xml

cd /home/modules/hadoop-2.7.7/etc/hadoop/
mv mapred-site.xml.template mapred-site.xml

echo "<configuration>
<property>
 <name>mapreduce.framework.name</name>
 <value>yarn</value>
</property>
<property>
 <name>mapreduce.jobhistory.address</name>
 <value>$nodeName:10020</value>
</property>
<property>
 <name>mapreduce.jobhistory.webapp.address</name>
 <value>$nodeName:19888</value>
</property>
<property>
 <name>mapred.task.timeout</name>
 <value>1800000</value>
</property>
</configuration>" >/home/modules/hadoop-2.7.7/etc/hadoop/mapred-site.xml

echo "$salve1
$salve2
$salve3" >/home/modules/hadoop-2.7.7/etc/hadoop/slaves
