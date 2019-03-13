#!/usr/bin/env bash

rsync -avP https://raw.githubusercontent.com/spirillen/rpz-block-list/master/zonefiles/whitelist.mypdns.cloud.hosts /var/lib/bind/whitelist.mypdns.cloud.hosts
rsync -avP https://raw.githubusercontent.com/spirillen/rpz-block-list/master/zonefiles/rpz.mypdns.cloud.hosts /var/lib/bind/rpz.mypdns.cloud.hosts
rsync -avP https://raw.githubusercontent.com/spirillen/rpz-block-list/master/zonefiles/youtube.mypdns.cloud.hosts /var/lib/bind/youtube.mypdns.cloud.hosts

rndc reload whitelist.mypdns.cloud
rndc reload rpz.mypdns.cloud
rndc reload youtube.mypdns.cloud
