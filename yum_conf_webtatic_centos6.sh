#!/bin/bash
#
#这个yum源主要是对最新版的mysql进行yum支持
echo "=====start check yum ENV====="
if [ -d "/etc/yum.repos.d" ];then
	rpm -Uvh https://mirror.webtatic.com/yum/el6/latest.rpm

	echo "=====makecache====="
	yum makecache

	echo "done....."	
else
	echo 'yum.repos.d no exist'
fi




