Bind 9
=====

To implement the RPZ from the `rpz-block-list`_ into your bind server you can do Several thing like default RPZ synchronization or better use rsync from the master zone files

* `youtube.mypdns.cloud.hosts`_
* `rpz.mypdns.cloud.hosts`_
* `whitelist.mypdns.cloud.hosts`_


.. code-block:: python
   :caption: named.conf.default-zones
   :name: named.conf.default-zones
	#
	# Your Private white and blacklist
	#
	zone "my-private-whitelist" {
			type master;
			file "/var/lib/bind/my-private-whitelist.hosts";
			allow-transfer {
					};
			allow-query {
					localhost;
					};
	};

	zone "my-private-blacklist" {
			type master;
			file "/var/lib/bind/my-private-blacklist.hosts";
			allow-transfer {
					};
			allow-query {
					localhost;
					};
	};

	#------------------------------------------------------------------------------
	# RPZ Whitelist
	#------------------------------------------------------------------------------

	zone "whitelist.mypdns.cloud" {
			type master;
			file "/var/lib/bind/whitelist.mypdns.cloud.hosts";
			allow-transfer {
					trusted;
					127/8;
					localhost;
					};
			allow-query {
					trusted;
					localhost;
					};
			also-notify {
					192.168.1.30;
					};
	};


	#------------------------------------------------------------------------------
	# Local RPZ Files
	#------------------------------------------------------------------------------

	zone "rpz.mypdns.cloud" {
			type master;
			file "/var/lib/bind/rpz.mypdns.cloud.hosts";
			allow-transfer {
					trusted;
					localhost;
					127/8;
					};
			also-notify {
					192.168.1.30;
					};
	};

	#------------------------------------------------------------------------------
	# YouTube RPZ Files, for blocking ads on youtube
	#------------------------------------------------------------------------------

	zone "youtube.mypdns.cloud" {
			type master;
			file "/var/lib/bind/youtube.mypdns.cloud.hosts";
			allow-transfer {
					trusted;
					localhost;
					127/8;
					};
			also-notify {
					192.168.1.30;
					};
	};

	#------------------------------------------------------------------------------
	# Spamhnaus RPZ Files, License required, but free for open source project
	#------------------------------------------------------------------------------

	zone "drop.rpz.spamhaus.org" {
			type slave;
			file "/var/lib/bind/drop.rpz.spamhaus.org.dbx";
			masters {
					2a01:4f9:c010:2166::53;
					2a01:4f8:1c1c:abe4::53;
					};
	};









.. _rpz-block-list: https://github.com/spirillen/rpz-block-list
.. _youtube.mypdns.cloud.hosts: https://raw.githubusercontent.com/spirillen/rpz-block-list/master/youtube.mypdns.cloud.hosts
.. _rpz.mypdns.cloud.hosts: https://raw.githubusercontent.com/spirillen/rpz-block-list/master/rpz.mypdns.cloud.hosts
.. _whitelist.mypdns.cloud.hosts: https://raw.githubusercontent.com/spirillen/rpz-block-list/master/whitelist.mypdns.cloud.hosts
