On arch install **powerdns-recursor**

For Ubuntu, Raspbian, Debian and CentOS, setup the proper repo from
repo.powerdns.com

Move everything here to /etc/powerdns, except the readme of course
set everything to the root group

Enable the powerdns-recursor service and start it
maybe you should restart your machine

Test with drill **some website that must be blocked** `@127.0.0.1 -p 53`

It's working if you get NXDOMAIN

if you can confirmed it is working, change your dns to 127.0.0.1

## Locate blocked domains

To locate what domain is being blocked, you should be using your log files.

First you turn on tracing with

```shell
sudo rec_control trace-regex .
```

Next you'll simply monitors your log file

```shell
sudo journalctl -fu pdns-recursor | grep -iE '(RPZ Hit|nxdomain)'
```

You will see records ala

```log
Nov 04 02:02:28 e350c pdns_recursor[40231]: graph.facebook.com|A: RPZ Hit; PolicyName=tracking.mypdns.cloud; Trigger=graph.facebook.com; Hit=graph.facebook.com; Type=QName; Kind=.
Nov 04 02:02:48 e350c pdns_recursor[40231]: graph.facebook.com|AAAA: RPZ Hit; PolicyName=tracking.mypdns.cloud; Trigger=graph.facebook.com; Hit=graph.facebook.com; Type=QName; Kind=.
```

This is a way to locate what domains is being denied by any rpz zone. From the `PolicyName=` you can see which zone is blocking.

Next you simply have to eigther aknowledge you where about to do something unfortunately.

If you choose to follow this bad path to an whitelist the record(s), don't bllame us, you wasn't warned... **We did warn you**

OOh don't forget to disable the logging or your disk will soon be filled with a log

```shell
sudo rec_control trace-regex
```
