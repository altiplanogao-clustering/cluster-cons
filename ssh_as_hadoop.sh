#!/usr/bin/env bash
thispath=`dirname $0`
ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i ${thispath}/roles/hadoop-cluster/files/sshkeys/hadoop_rsa hadoop@$1