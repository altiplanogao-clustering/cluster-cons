#!/bin/bash
echo xxx working
echo HADOOP_PREFIX: $HADOOP_PREFIX
. $HADOOP_PREFIX/sbin/stop-yarn.sh
. $HADOOP_PREFIX/sbin/stop-hdfs.sh
. $HADOOP_PREFIX/sbin/start-hdfs.sh
. $HADOOP_PREFIX/sbin/start-yarn.sh
. $HADOOP_PREFIX/sbin/mr-jobhistory-daemon.sh --config $HADOOP_CONF_DIR start historyserver
