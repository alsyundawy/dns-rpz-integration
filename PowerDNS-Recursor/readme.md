# PowerDNS Recursor integration of [www.mypdns.org](https://www.mypdns.org/) RPZ

This is the Lua script by [www.mypdns.org](https://www.mypdns.org/) for integrating our RPZ zones into you're [PowerDNS's Recursor Server](https://www.powerdns.com/recursor.html)

Unfortunally there is currently no simple way to integrate this whitelist into you're Recursor.
But if you know how to setup this proberly you are most welcome to contribute.

To use this file, place it in you're /etc/powerdns/conf/ folder and call it from recursor.conf with:

```lua
dofile('/etc/powerdns/conf/mypdns-rpz-zones.lua')
```
