$TTL 60;
$ORIGIN localhost.
@   SOA localhost. hostmaster.localhost ( 9 120 15m 3w 1h)
    NS localhost.  // out-of-zone no A/AAAA RR required
; begin RPZ RR definitions
; List of all RPZ records https://mypdns.org/mypdns/support/-/wikis/RPZ-record-types

;; QNAME Trigger

; QNAME Trigger NXDOMAIN Action
; kills whole domain
google.com      CNAME . ;(Return NXDOMAIN for google.com)
*.google.com    CNAME . ;(Return NXDOMAIN for .google.com)

; IP Trigger drop query
32.8.8.8.8.rpz-ip   CNAME rpz-drop. ;(Drop all queries to IP 8.8.8.8)
32.8.8.4.4.rpz-ip   CNAME rpz-drop. ;(Drop all queries to IP 8.8.4.4)

; DNS Trigger queries
*.google.rpz-nsdname    CNAME . ;(NXDOMAIN all responses that comes from .google dns server within name *.google)
