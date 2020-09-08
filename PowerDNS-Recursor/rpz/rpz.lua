-- In lua you uses double dashes to out comment
-- This file gives you the power to only enable
-- the zones you like to subscribe to.
-- See also Learn Lua in 15 Minutes >> https://www.mypdns.org/P7
rpzFile("/etc/powerdns/rpz/my-rules.rpz")


dofile("/etc/powerdns/rpz/adult.mypdns.cloud.rpz")
dofile("/etc/powerdns/rpz/adware.mypdns.cloud.rpz")
dofile("/etc/powerdns/rpz/coinblocker.mypdns.cloud.rpz")
dofile("/etc/powerdns/rpz/gambling.mypdns.cloud.rpz")
dofile("/etc/powerdns/rpz/malicious.mypdns.cloud.rpz")
dofile("/etc/powerdns/rpz/pirated.mypdns.cloud.rpz")
-- dofile("/etc/powerdns/rpz/redirector.mypdns.cloud.rpz") -- This is outcommented at it would breake a lot for many users, such as twitter.
dofile("/etc/powerdns/rpz/rpz.mypdns.cloud.rpz")
dofile("/etc/powerdns/rpz/spam.mypdns.cloud.rpz")
dofile("/etc/powerdns/rpz/spyware.mypdns.cloud.rpz")
dofile("/etc/powerdns/rpz/tracking.mypdns.cloud.rpz")
dofile("/etc/powerdns/rpz/typosquatting.mypdns.cloud.rpz")

dofile("/etc/powerdns/rpz/coinblocker.srv.rpz")
dofile("/etc/powerdns/rpz/drop.ip.dtq.rpz")
dofile("/etc/powerdns/rpz/torblock.srv.rpz")
dofile("/etc/powerdns/rpz/urlhaus.abuse.ch.rpz")

-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the modified GNU Affero General Public License as
-- published by the My Privacy DNS, either version 3 of the
-- License, or any later version released at 
-- https://www.mypdns.org/w/License.

-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY-- without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- modified GNU Affero General Public License for more details.

-- You should have received a copy of the modified GNU Affero General Public License
-- along with this program. If not, see https://www.mypdns.org/w/License.

-- The modification: The standard AGPLv3 have been altered to NOT allow
-- any to generate profit from our work. You are however free to use it to any
-- NON PROFIT purpose. If you would like to use any of our code for profiteering
-- YOU are obliged to contact https://www.mypdns.org/ for profit sharing.
