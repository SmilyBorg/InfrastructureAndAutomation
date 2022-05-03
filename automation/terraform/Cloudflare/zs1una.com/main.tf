
provider "cloudflare" {
  # Configuration options
}

resource "cloudflare_zone" "domain" {
    zone = var.domain
    # plan = "free"
}

resource "cloudflare_zone_dnssec" "domainDNSSEC" {
    zone_id = cloudflare_zone.domain.id
}

module "email" {
  source                   = "git@github.com:smilyborg/terraform-cloudflare-gsuite-mx.git"
  zone_id                  = cloudflare_zone.domain.id
  sub_domain               = "@" #optional
  ttl                      = 3600 #optional
  spf                      = "v=spf1 include:_spf.google.com ~all"
  dkim                     = "v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA92Tk1n3F3c2FpQHdUjqC67h9BhLzJDQJOeowgwGPEOUoYGN7d5zLdaG5r+HayOmIf3sh+PIGi6S4gT1jbVHIWjir0qBuP+042CxcjUK/yWy8WoLRXvqpwDmqj3LIT8JvJbx/OW2pjdSrbhGYLWgMHRr5iLwlTi89XCuISstKNrcTWqx+zD8+Ek9I9zf4WymB/Ff8F5Ma0QW3qdR+3kszerU4Lf+IuP0hD3dBFMa+Wl5KVyfZDPVCvexP3mpSpZ3DFwOYNepSExzRyyfydqRyY7BclJ9d9djgtuTEMfTvYMJ6O4h3PTZaQBIIXxNMCcXEqgfx9n8OC42wGV7nAD5I1QIDAQAB"
  dmarc                    = "v=DMARC1; p=none; rua=mailto:uznqofwp@ag.eu.dmarcian.com; ruf=mailto:uznqofwp@fr.eu.dmarcian.com;"
  mta-sts                  = "v=STSv1;id=1649185964194;"
  smtp-tls                 = "v=TLSRPTv1; rua=mailto:uznqofwp@tls.eu.dmarcian.com"  
  google_site_verification = "google-site-verification=oyI9NXiMiOyGj5R7zezNQVPOsVvCt_tYh5fV2OiXVdI"
}

resource "cloudflare_record" "smtp" {
  zone_id = cloudflare_zone.domain.id
  name    = "smtp"
  value   = "smtp.gmail.com"
  type    = "CNAME"
  ttl     = 3600
}

resource "cloudflare_record" "pop" {
  zone_id = cloudflare_zone.domain.id
  name    = "pop"
  value   = "pop.gmail.com"
  type    = "CNAME"
  ttl     = 3600
}

resource "cloudflare_record" "imap" {
  zone_id = cloudflare_zone.domain.id
  name    = "imap"
  value   = "imap.gmail.com"
  type    = "CNAME"
  ttl     = 3600
}

resource "cloudflare_record" "domainVerifyKeybase" {
  zone_id = cloudflare_zone.domain.id
  name    = ""
  value   = "keybase-site-verification=QpdvNHmSS19fiFYL4N00ifx_bvj4NhrreG1cACO2dI0"
  type    = "TXT"
  ttl     = 3600
}

resource "cloudflare_record" "NetlifyWebsiteRoot" {
  zone_id = cloudflare_zone.domain.id
  name    = ""
  value   = "104.198.14.52"
  type    = "A"
  proxied = true
}

resource "cloudflare_record" "NetlifyWebsiteWWW" {
  zone_id = cloudflare_zone.domain.id
  name    = "www"
  value   = "unakarlsen.netlify.com"
  type    = "CNAME"
  proxied = true
}

resource "cloudflare_record" "Netlifymta-sts-policy" {
  zone_id = cloudflare_zone.domain.id
  name    = "mta-sts"
  value   = "strangeminds-org-mta-sts-policy.netlify.com"
  type    = "CNAME"
  proxied = true
}

