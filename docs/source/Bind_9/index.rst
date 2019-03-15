Bind 9
======

To implement the RPZ from the `rpz-block-list`_ into your bind server you can do Several thing like default RPZ synchronization or better use rsync from the master zone files

* `youtube.mypdns.cloud.hosts`_
* `rpz.mypdns.cloud.hosts`_
* `whitelist.mypdns.cloud.hosts`_


.. literalinclude:: named.conf.default-zones
   :language: python
   :linenos:
   :encoding: utf-8
   :caption: named.conf default-zones file





.. _rpz-block-list: https://github.com/spirillen/rpz-block-list
.. _youtube.mypdns.cloud.hosts: https://raw.githubusercontent.com/spirillen/rpz-block-list/master/youtube.mypdns.cloud.hosts
.. _rpz.mypdns.cloud.hosts: https://raw.githubusercontent.com/spirillen/rpz-block-list/master/rpz.mypdns.cloud.hosts
.. _whitelist.mypdns.cloud.hosts: https://raw.githubusercontent.com/spirillen/rpz-block-list/master/whitelist.mypdns.cloud.hosts
