-- Copyright (C) <2018 -> > <My privacy DNS>
--
-- This program is free software: you can redistribute it and/or modify it under
-- the terms of our modified GNU Affero General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful, but
-- WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
-- or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License
-- for more details.
--
-- You should have received a copy of the MODIFIED GNU Affero General Public License
-- along with this program. If not, see https://www.mypdns.org/trac/wiki/License

--[[
   Lua script by www.mypdns.org for integrating
   our RPZ zones into PowerDNS's Recursor Server

   Unfortunally there is currently no simple way to integrate this whitelist
   into you're Recursor.
   But if you know how to setup this proberly you are most welcome to contribute.

  To use this file, place it in you're /etc/powerdns/conf/ folder and
  call it from recursor.conf with:
  dofile('/etc/powerdns/conf/mypdns-rpz-zones.lua')

--]]

-- This should be the whitelisting of domains that by error should be inflicted
-- by the blacklist zone

-- rpzMaster({"95.216.166.138","195.201.225.97"}, "whitelist.rpz.mypdns.cloud", {refresh="60"})

-- This is the default DNS RPZ firewall you should peer against
rpzMaster({"[2a01:4f9:c010:2166::53]:53","[2a01:4f8:1c1c:abe4::53]:53"}, "rpz.mypdns.cloud", {refresh="900", axfrTimeout="600"})