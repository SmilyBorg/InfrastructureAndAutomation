
provider "cloudflare" {
  # Configuration options
}

resource "cloudflare_zone" "zs1una" {
    zone = "zs1una.com"
    plan = "free"
}

resource "cloudflare_zone_dnssec" "zs1unaDNSSEC" {
    zone_id = cloudflare_zone.zs1una.id
}

resource "cloudflare_record" "mail1" {
  zone_id = cloudflare_zone.zs1una.id
  name    = ""
  priority = "1"
  value   = "aspmx.l.google.com"
  type    = "MX"
  ttl     = 3600
}

resource "cloudflare_record" "mail2" {
  zone_id = cloudflare_zone.zs1una.id
  name    = ""
  priority = "5"
  value   = "alt1.aspmx.l.google.com"
  type    = "MX"
  ttl     = 3600
}
resource "cloudflare_record" "mail3" {
  zone_id = cloudflare_zone.zs1una.id
  name    = ""
  priority = "5"
  value   = "alt2.aspmx.l.google.com"
  type    = "MX"
  ttl     = 3600
}
resource "cloudflare_record" "mail4" {
  zone_id = cloudflare_zone.zs1una.id
  name    = ""
  priority = "10"
  value   = "aspmx2.googlemail.com"
  type    = "MX"
  ttl     = 3600
}
resource "cloudflare_record" "mail5" {
  zone_id = cloudflare_zone.zs1una.id
  name    = ""
  priority = "10"
  value   = "aspmx3.googlemail.com"
  type    = "MX"
  ttl     = 3600
}
resource "cloudflare_record" "mail6" {
  zone_id = cloudflare_zone.zs1una.id
  name    = ""
  priority = "10"
  value   = "aspmx4.googlemail.com"
  type    = "MX"
  ttl     = 3600
}
resource "cloudflare_record" "mail7" {
  zone_id = cloudflare_zone.zs1una.id
  name    = ""
  priority = "10"
  value   = "aspmx5.googlemail.com"
  type    = "MX"
  ttl     = 3600
}


resource "cloudflare_record" "mail9" {
  zone_id = cloudflare_zone.zs1una.id
  name    = ""
  value   = "v=spf1 mx a:gibson.strangeminds.org a:neuromancer.strangeminds.org include:_spf.google.com ~all"
  type    = "TXT"
  ttl     = 3600
}

resource "cloudflare_record" "mail10" {
  zone_id = cloudflare_zone.zs1una.id
  name    = "google._domainkey"
  value   = "v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA92Tk1n3F3c2FpQHdUjqC67h9BhLzJDQJOeowgwGPEOUoYGN7d5zLdaG5r+HayOmIf3sh+PIGi6S4gT1jbVHIWjir0qBuP+042CxcjUK/yWy8WoLRXvqpwDmqj3LIT8JvJbx/OW2pjdSrbhGYLWgMHRr5iLwlTi89XCuISstKNrcTWqx+zD8+Ek9I9zf4WymB/Ff8F5Ma0QW3qdR+3kszerU4Lf+IuP0hD3dBFMa+Wl5KVyfZDPVCvexP3mpSpZ3DFwOYNepSExzRyyfydqRyY7BclJ9d9djgtuTEMfTvYMJ6O4h3PTZaQBIIXxNMCcXEqgfx9n8OC42wGV7nAD5I1QIDAQAB"
  type    = "TXT"
  ttl     = 3600
}

resource "cloudflare_record" "mail11" {
  zone_id = cloudflare_zone.zs1una.id
  name    = "_dmarc"
  value   = "v=DMARC1; p=none; rua=mailto:root@strangeminds.org"
  type    = "TXT"
  ttl     = 3600
}

resource "cloudflare_record" "mail12" {
  zone_id = cloudflare_zone.zs1una.id
  name    = "smtp"
  value   = "smtp.gmail.com"
  type    = "CNAME"
  ttl     = 3600
}

resource "cloudflare_record" "mail13" {
  zone_id = cloudflare_zone.zs1una.id
  name    = "pop"
  value   = "pop.gmail.com"
  type    = "CNAME"
  ttl     = 3600
}

resource "cloudflare_record" "mail14" {
  zone_id = cloudflare_zone.zs1una.id
  name    = "imap"
  value   = "imap.gmail.com"
  type    = "CNAME"
  ttl     = 3600
}

resource "cloudflare_record" "domainVerifyGoogle" {
  zone_id = cloudflare_zone.zs1una.id
  name    = ""
  value   = "google-site-verification=oyI9NXiMiOyGj5R7zezNQVPOsVvCt_tYh5fV2OiXVdI"
  type    = "TXT"
  ttl     = 3600
}

resource "cloudflare_record" "domainVerifyKeybase" {
  zone_id = cloudflare_zone.zs1una.id
  name    = ""
  value   = "keybase-site-verification=QpdvNHmSS19fiFYL4N00ifx_bvj4NhrreG1cACO2dI0"
  type    = "TXT"
  ttl     = 3600
}

resource "cloudflare_record" "NetlifyWebsite1" {
  zone_id = cloudflare_zone.zs1una.id
  name    = ""
  value   = "104.198.14.52"
  type    = "A"
  proxied = true
}

resource "cloudflare_record" "NetlifyWebsite2" {
  zone_id = cloudflare_zone.zs1una.id
  name    = "www"
  value   = "unakarlsen.netlify.com"
  type    = "CNAME"
  proxied = true
}

