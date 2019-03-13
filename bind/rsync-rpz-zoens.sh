#!/usr/bin/env bash

rsync -avP whitelist /var/lib/bind/whitelist.mypdns.cloud.hosts
rsync -avP blacklist /var/lib/bind/rpz.mypdns.cloud.hosts
rsync -avP youtube /var/lib/bind/youtube.mypdns.cloud.hosts

rndc reload whitelist.mypdns.cloud
rndc reload rpz.mypdns.cloud
rndc reload youtube.mypdns.cloud
