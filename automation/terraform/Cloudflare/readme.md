## Cloudflare Terraform  configuration

### Zone
strangeminds.org
unakarlsen.com
smilyborg.za.net
karlsenheim.com
-zs1una.com
-tookitstudios.com


karlsen.za.net

sheltecuk.com

mupwi.za.net

saleather.org

polyamory.co.za

### Zone DNSSec


### DNS Records
#### Unakarlsen.com

$TTL    600
@       IN      SOA     neuromancer.strangeminds.org. dnsadmin.strangeminds.org. 2019051501 10800 3600 604800 10800

@       IN      NS      ns5.he.net.
@       IN      NS      ns4.he.net.
@       IN      NS      ns3.he.net.
@       IN      NS      ns2.he.net.
@       IN      NS      ns1.he.net.

@       IN      MX      1 ASPMX.L.GOOGLE.COM.
@       IN      MX      5 ALT1.ASPMX.L.GOOGLE.COM.
@       IN      MX      5 ALT2.ASPMX.L.GOOGLE.COM.
@       IN      MX      10 ASPMX2.GOOGLEMAIL.COM.
@       IN      MX      10 ASPMX3.GOOGLEMAIL.COM.
@       IN      MX      10 ASPMX4.GOOGLEMAIL.COM.
@       IN      MX      10 ASPMX5.GOOGLEMAIL.COM.
@       IN      SPF     "v=spf1 mx a:gibson.strangeminds.org a:neuromancer.strangeminds.org include:_spf.google.com ~all"
@       IN      TXT     "v=spf1 mx a:gibson.strangeminds.org a:neuromancer.strangeminds.orginclude:_spf.google.com ~all"
@       IN      TXT     keybase-site-verification=xwIa1cfSjBT4nSNHvIKNNJt8k1prkW96b82rP2bBhM4
smtp    IN      CNAME   smtp.gmail.com.
pop     IN      CNAME   pop.gmail.com.
imap    IN      CNAME   imap.gmail.com.
google._domainkey IN    TXT     "v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAtXCMjA3pKzrKvoyK/yGL2D3ya5/xd8vfNa+H" "2XTAfFruZkZz+Ke5KuZ3x7zZVEmNbVKniMp9WNS6bioAVGxEbkRg/G089wFy8X8EGrXX0jlOLZV1/JX0" "MyX546sRk/XW0lCObpo1SQ66SzNgsgNUFTqX1GXxUR4tfULr41Ducysu8FoVGW6bwPRkurKWa1noNZt" "3UB6dZ5NkHa/Kc8BLOyQE8LG36scq/UNFeVhrvsgWIPMMeB8ShiSRPZBvjyPOVVW+/KD2rFz78c3jWod" "csKyHedvOYJnHAS71NL4DWEPli1Qpc2IXYCgw59uYj8JbSVIo4T5i2Z4KybfZXj9hawIDAQAB"
_dmarc  IN      TXT     "v=DMARC1\; p=none\; rua=mailto:root@strangeminds.org"

@       IN      A       104.198.14.52
www     IN      CNAME   unakarlsen.netlify.com.

googleffffffffc92ab100  IN      CNAME   GOOGLE.COM.


#### zs1una.com

$TTL    600
@       IN      SOA     neuromancer.strangeminds.org. dnsadmin.strangeminds.org. 2019050101 10800 3600 604800 10800

@       IN      NS      ns5.he.net.
@       IN      NS      ns4.he.net.
@       IN      NS      ns3.he.net.
@       IN      NS      ns2.he.net.
@       IN      NS      ns1.he.net.

@       IN      MX      1 ASPMX.L.GOOGLE.COM.
@       IN      MX      5 ALT1.ASPMX.L.GOOGLE.COM.
@       IN      MX      5 ALT2.ASPMX.L.GOOGLE.COM.
@       IN      MX      10 ASPMX2.GOOGLEMAIL.COM.
@       IN      MX      10 ASPMX3.GOOGLEMAIL.COM.
@       IN      MX      10 ASPMX4.GOOGLEMAIL.COM.
@       IN      MX      10 ASPMX5.GOOGLEMAIL.COM.
@       IN      SPF     "v=spf1 mx a:gibson.strangeminds.org a:neuromancer.strangeminds.org include:_spf.google.com ~all"
@       IN      TXT     "v=spf1 mx a:gibson.strangeminds.org a:neuromancer.strangeminds.org include:_spf.google.com ~all"
smtp    IN      CNAME   smtp.gmail.com.
pop     IN      CNAME   pop.gmail.com.
imap    IN      CNAME   imap.gmail.com.
google._domainkey IN    TXT     "v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA92Tk1n3F3c2FpQHdUjqC67h9BhLzJDQJOeow" "gwGPEOUoYGN7d5zLdaG5r+HayOmIf3sh+PIGi6S4gT1jbVHIWjir0qBuP+042CxcjUK/yWy8WoLRXvqpwDmqj3LIT8JvJbx/OW" "2pjdSrbhGYLWgMHRr5iLwlTi89XCuISstKNrcTWqx+zD8+Ek9I9zf4WymB/Ff8F5Ma0QW3qdR+3kszerU4Lf+IuP0hD3dBFMa+" "Wl5KVyfZDPVCvexP3mpSpZ3DFwOYNepSExzRyyfydqRyY7BclJ9d9djgtuTEMfTvYMJ6O4h3PTZaQBIIXxNMCcXEqgfx9n8OC4" "2wGV7nAD5I1QIDAQAB"
_dmarc  IN      TXT     "v=DMARC1\; p=none\; rua=mailto:root@strangeminds.org"

;@      IN      A       192.30.252.153
;@      IN      A       192.30.252.154
@       IN      A       78.47.42.19
@       IN      AAAA    2001:470:26:538::1
www     IN      CNAME   zs1una.com.

;zs1una.com
@       IN      TXT     "google-site-verification=oyI9NXiMiOyGj5R7zezNQVPOsVvCt_tYh5fV2OiXVdI"
@       IN      TXT     "keybase-site-verification=QpdvNHmSS19fiFYL4N00ifx_bvj4NhrreG1cACO2dI0"

;www    IN      CNAME   smilyborg.github.io.
;blog   IN      CNAME   smilyborg.github.io.




### Argo Tunnel
