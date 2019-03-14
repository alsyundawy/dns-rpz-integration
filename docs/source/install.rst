Installation
============

To help building this documentation you can make a local ``make html`` in your virtual env for previewing before contributing.

	1. Clone the `DNS RPZ integration`_ from Github	``git clone https://github.com/spirillen/dns-rpz-integration.git``
	2. Enter the new folder ``cd dns-rpz-integration``
	3. Switch to the command line

		1. Install Python virtualenv by typing ``sudo -H python3 -m pip install --upgrade virtualenv``
		2. Activate the virtual enviroment to protect your system and other sources ``source env/bin/activate``
		3. Install Sphinx and dependencies ``python3 -m pip install -U Sphinx sphinxcontrib-httpdomain sphinx-jsondomain sphinxcontrib-fulltoc changelog recommonmark``
		4. Or you can execute ``python3 -m pip install -U -r requirements.txt`` from the ./docs/ dir


:doc: readme.md


.. _DNS RPZ integration: https://github.com/spirillen/dns-rpz-integration.git
