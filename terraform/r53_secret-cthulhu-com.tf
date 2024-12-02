# lookup the zone
data "aws_route53_zone" "secret-cthulhu-com" {
  name = "secret-cthulhu.com"
}


# testfoo.secret-cthulhu.com

locals {
  testfoo_name = "testfoo.secret-cthulhu.com"
  testfoo_type = "A"
}

resource "aws_route53_record" "testfoo" {
  zone_id = data.aws_route53_zone.secret-cthulhu-com.zone_id
  name    = local.testfoo_name
  type    = local.testfoo_type

  alias {
    name                   = "d2mahmr2h6okmx.cloudfront.net."
    evaluate_target_health = false
    zone_id                = "Z2FDTNDATAQYW2"
  }
}

# _75d36f6b9a67a11e56d94c4c5ed61c07.testfoo.secret-cthulhu.com (acm-validations)

locals {
  acmvalidations75d_name = "_75d36f6b9a67a11e56d94c4c5ed61c07.testfoo.secret-cthulhu.com"
  acmvalidations75d_type = "CNAME"
}

resource "aws_route53_record" "_75d36f6b9a67a11e56d94c4c5ed61c07" {
  zone_id = data.aws_route53_zone.secret-cthulhu-com.zone_id
  name    = local.acmvalidations75d_name
  type    = local.acmvalidations75d_type
  ttl     = 500

  records = [
    "_25bc969989d88b83c87a46beb7ef2b7e.vlvttdkdcz.acm-validations.aws."
  ]
}

# _cf3c5bef88b1a6129e48b067605982b3.preview.secret-cthulhu.com (acm-validations)

locals {
  acmvalidationscf3c_name = "_cf3c5bef88b1a6129e48b067605982b3.preview.secret-cthulhu.com"
  acmvalidationscf3c_type = "CNAME"
}

resource "aws_route53_record" "_cf3c5bef88b1a6129e48b067605982b3" {
  zone_id = data.aws_route53_zone.secret-cthulhu-com.zone_id
  name    = local.acmvalidationscf3c_name
  type    = local.acmvalidationscf3c_type
  ttl     = 300

  records = [
    "_bea46cd4941bca6e688af332a98f6e29.vlvttdkdcz.acm-validations.aws."
  ]
}

# preview.secret-cthulhu.com

locals {
  preview_name = "preview.secret-cthulhu.com"
  preview_type = "CNAME"
}

resource "aws_route53_record" "preview" {
  zone_id = data.aws_route53_zone.secret-cthulhu-com.zone_id
  name    = local.preview_name
  type    = local.preview_type
  ttl     = 300

  records = [
    "dvmyn3juj2d45.cloudfront.net."
  ]
}

# dev.secret-cthulhu.com

locals {
  dev_name = "dev.secret-cthulhu.com"
  dev_type = "CNAME"
}

resource "aws_route53_record" "dev" {
  zone_id = data.aws_route53_zone.secret-cthulhu-com.zone_id
  name    = local.dev_name
  type    = local.dev_type
  ttl     = 300

  records = [
    "secret-cthulhu.com."
  ]
}

# _keybase.secret-cthulhu.com

locals {
  keybase_name = "_keybase.secret-cthulhu.com"
  keybase_type = "TXT"
}

resource "aws_route53_record" "keybase" {
  zone_id = data.aws_route53_zone.secret-cthulhu-com.zone_id
  name    = local.keybase_name
  type    = local.keybase_type
  ttl     = 300

  records = [
    "keybase-site-verification=KITgHLkPpDsIe00kaUk2FCaV_7SkwVhIBWFW2fwptVk"
  ]
}

# _dmarc.secret-cthulhu.com

locals {
  dmarc_name = "_dmarc.secret-cthulhu.com"
  dmarc_type = "TXT"
}

resource "aws_route53_record" "dmarc" {
  zone_id = data.aws_route53_zone.secret-cthulhu-com.zone_id
  name    = local.dmarc_name
  type    = local.dmarc_type
  ttl     = 300

  records = [
    "v=DMARC1; p=none; rua=mailto:e709d3a886e1367@rep.dmarcanalyzer.com; ruf=mailto:e709d3a886e1367@for.dmarcanalyzer.com; fo=1;"
  ]
}

# _bf3660933515fb3a34b1e3b74e562e64.secret-cthulhu.com (acm-validations)

locals {
  acmvalidationsbf36_name = "_bf3660933515fb3a34b1e3b74e562e64.secret-cthulhu.com"
  acmvalidationsbf36_type = "CNAME"
}

resource "aws_route53_record" "_bf3660933515fb3a34b1e3b74e562e64" {
  zone_id = data.aws_route53_zone.secret-cthulhu-com.zone_id
  name    = local.acmvalidationsbf36_name
  type    = local.acmvalidationsbf36_type
  ttl     = 300

  records = [
    "_ce8a90044334a214cc9a14c7086f6e56.vlvttdkdcz.acm-validations.aws."
  ]
}

# secret-cthulhu.com (TXT)

locals {
  secretcthulhu_TXT_name = "secret-cthulhu.com"
  secretcthulhu_TXT_type = "TXT"
}

resource "aws_route53_record" "secretcthulhu_TXT" {
  zone_id = data.aws_route53_zone.secret-cthulhu-com.zone_id
  name    = local.secretcthulhu_TXT_name
  type    = local.secretcthulhu_TXT_type
  ttl     = 300

  records = [
    "google-site-verification=aguGdAV5DDbdLNRlrEuvErf1-XHYTGxlps3trO8GVHM",
    "v=spf1 include:_spf.google.com ~all",
  ]
}

# secret-cthulhu.com (A)

locals {
  secretcthulhu_A_name = "secret-cthulhu.com"
  secretcthulhu_A_type = "A"
}

resource "aws_route53_record" "secretcthulhu_A" {
  zone_id = data.aws_route53_zone.secret-cthulhu-com.zone_id
  name    = local.secretcthulhu_A_name
  type    = local.secretcthulhu_A_type
  ttl     = null

  alias {
    name                   = "d1snhyin507pw7.cloudfront.net."
    evaluate_target_health = false
    zone_id                = "Z2FDTNDATAQYW2"
  }
}

# secret-cthulhu.com (SOA)

locals {
  secretcthulhu_SOA_name = "secret-cthulhu.com"
  secretcthulhu_SOA_type = "SOA"
}

resource "aws_route53_record" "secretcthulhu_SOA" {
  zone_id = data.aws_route53_zone.secret-cthulhu-com.zone_id
  name    = local.secretcthulhu_SOA_name
  type    = local.secretcthulhu_SOA_type
  ttl     = 900

  records = [
    "ns-945.awsdns-54.net. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"
  ]
}

# secret-cthulhu.com (MX)

locals {
  secretcthulhu_MX_name = "secret-cthulhu.com"
  secretcthulhu_MX_type = "MX"
}

resource "aws_route53_record" "secretcthulhu_MX" {
  zone_id = data.aws_route53_zone.secret-cthulhu-com.zone_id
  name    = local.secretcthulhu_MX_name
  type    = local.secretcthulhu_MX_type
  ttl     = 300

  records = [
    "1 ASPMX.L.GOOGLE.COM.",
    "5 ALT1.ASPMX.L.GOOGLE.COM.",
    "5 ALT2.ASPMX.L.GOOGLE.COM.",
    "10 ASPMX2.GOOGLEMAIL.COM.",
    "10 ASPMX3.GOOGLEMAIL.COM.",
  ]
}

# secret-cthulhu.com (NS)

locals {
  secretcthulhu_NS_name = "secret-cthulhu.com"
  secretcthulhu_NS_type = "NS"
}

resource "aws_route53_record" "secretcthulhu_NS" {
  zone_id = data.aws_route53_zone.secret-cthulhu-com.zone_id
  name    = local.secretcthulhu_NS_name
  type    = local.secretcthulhu_NS_type
  ttl     = 172800

  records = [
    "ns-945.awsdns-54.net.",
    "ns-1705.awsdns-21.co.uk.",
    "ns-1510.awsdns-60.org.",
    "ns-313.awsdns-39.com.",
  ]
}
