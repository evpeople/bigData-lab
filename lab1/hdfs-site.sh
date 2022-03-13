#!/bin/bash
echo "please input node name"
read nodeName


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
</configuration>"
