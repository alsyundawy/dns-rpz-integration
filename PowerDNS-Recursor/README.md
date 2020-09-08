On arch install **powerdns-recursor**

For Ubuntu, Raspbian, Debian and CentOS, setup the proper repo from
<repo.powerdns.com>

Move everything here to /etc/powerdns, except the readme of course
set everything to the root group

Enable the powerdns-recursor service and start it
maybe you should restart your machine

Test with drill **some website that must be blocked** `@127.0.0.1 -p 53`

It's working if you get NXDOMAIN

if you can confirmed it is working, change your dns to 127.0.0.1
