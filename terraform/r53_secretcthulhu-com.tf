# lookup the hosted zone
data "aws_route53_zone" "secretcthulhu-com" {
  name = "secretcthulhu.com"
}

# secretcthulhu.com (SOA)

locals {
  secretcthulhu_nohyphen_SOA_name = "secretcthulhu.com"
  secretcthulhu_nohyphen_SOA_type = "SOA"
}

# import the existing record
import {
  to = aws_route53_record.secretcthulhu_nohyphen_SOA
  id = "${data.aws_route53_zone.secretcthulhu-com.zone_id}_${local.secretcthulhu_nohyphen_SOA_name}_${local.secretcthulhu_nohyphen_SOA_type}"
}

resource "aws_route53_record" "secretcthulhu_nohyphen_SOA" {
  zone_id = data.aws_route53_zone.secretcthulhu-com.zone_id
  name    = local.secretcthulhu_nohyphen_SOA_name
  type    = local.secretcthulhu_nohyphen_SOA_type
  ttl     = 900

  records = [
    "ns-167.awsdns-20.com. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"
  ]
}

# secretcthulhu.com (NS)

locals {
  secretcthulhu_nohyphen_NS_name = "secretcthulhu.com"
  secretcthulhu_nohyphen_NS_type = "NS"
}

# import the existing record
import {
  to = aws_route53_record.secretcthulhu_nohyphen_NS
  id = "${data.aws_route53_zone.secretcthulhu-com.zone_id}_${local.secretcthulhu_nohyphen_NS_name}_${local.secretcthulhu_nohyphen_NS_type}"
}

resource "aws_route53_record" "secretcthulhu_nohyphen_NS" {
  zone_id = data.aws_route53_zone.secretcthulhu-com.zone_id
  name    = local.secretcthulhu_nohyphen_NS_name
  type    = local.secretcthulhu_nohyphen_NS_type
  ttl     = 172800

  records = [
    "ns-167.awsdns-20.com.",
    "ns-534.awsdns-02.net.",
    "ns-1561.awsdns-03.co.uk.",
    "ns-1415.awsdns-48.org.",
  ]
}

# secretcthulhu.com (MX)

locals {
  secretcthulhu_nohyphen_MX_name = "secretcthulhu.com"
  secretcthulhu_nohyphen_MX_type = "MX"
}

# import the existing record
import {
  to = aws_route53_record.secretcthulhu_nohyphen_MX
  id = "${data.aws_route53_zone.secretcthulhu-com.zone_id}_${local.secretcthulhu_nohyphen_MX_name}_${local.secretcthulhu_nohyphen_MX_type}"
}

resource "aws_route53_record" "secretcthulhu_nohyphen_MX" {
  zone_id = data.aws_route53_zone.secretcthulhu-com.zone_id
  name    = local.secretcthulhu_nohyphen_MX_name
  type    = local.secretcthulhu_nohyphen_MX_type
  ttl     = 300

  records = [
    "1 ASPMX.L.GOOGLE.COM.",
    "10 ASPMX2.GOOGLEMAIL.COM.",
    "10 ASPMX3.GOOGLEMAIL.COM.",
    "5 ALT1.ASPMX.L.GOOGLE.COM.",
    "5 ALT2.ASPMX.L.GOOGLE.COM.",
  ]
}

# secretcthulhu.com (A) -> d1b2o0rjejekgh.cloudfront.net.

locals {
  secretcthulhu_nohyphen_A_name = "secretcthulhu.com"
  secretcthulhu_nohyphen_A_type = "A"
}

# import the existing record
import {
  to = aws_route53_record.secretcthulhu_nohyphen_A
  id = "${data.aws_route53_zone.secretcthulhu-com.zone_id}_${local.secretcthulhu_nohyphen_A_name}_${local.secretcthulhu_nohyphen_A_type}"
}

resource "aws_route53_record" "secretcthulhu_nohyphen_A" {
  zone_id = data.aws_route53_zone.secretcthulhu-com.zone_id
  name    = local.secretcthulhu_nohyphen_A_name
  type    = local.secretcthulhu_nohyphen_A_type
  ttl     = null

  alias {
    name                   = "d1b2o0rjejekgh.cloudfront.net."
    evaluate_target_health = false
    zone_id                = "Z2FDTNDATAQYW2"
  }
}

# secretcthulhu.com (TXT)

locals {
  secretcthulhu_nohyphen_TXT_name = "secretcthulhu.com"
  secretcthulhu_nohyphen_TXT_type = "TXT"
}

# import the existing record
import {
  to = aws_route53_record.secretcthulhu_nohyphen_TXT
  id = "${data.aws_route53_zone.secretcthulhu-com.zone_id}_${local.secretcthulhu_nohyphen_TXT_name}_${local.secretcthulhu_nohyphen_TXT_type}"
}

resource "aws_route53_record" "secretcthulhu_nohyphen_TXT" {
  zone_id = data.aws_route53_zone.secretcthulhu-com.zone_id
  name    = local.secretcthulhu_nohyphen_TXT_name
  type    = local.secretcthulhu_nohyphen_TXT_type
  ttl     = 300

  records = [
    "google-site-verification=VPJK9AIe3aV5wSoH1amCi5wMi0vxlNapHEG8xPn-7sQ",
    "v=spf1 include:_spf.google.com ~all",
  ]
}

# _dmarc.secretcthulhu.com (TXT)

locals {
  secretcthulhu_nohyphen_dmarc_name = "_dmarc.secretcthulhu.com"
  secretcthulhu_nohyphen_dmarc_type = "TXT"
}

## import the existing record
import {
  to = aws_route53_record.secretcthulhu_nohyphen_dmarc
  id = "${data.aws_route53_zone.secretcthulhu-com.zone_id}_${local.secretcthulhu_nohyphen_dmarc_name}_${local.secretcthulhu_nohyphen_dmarc_type}"
}

resource "aws_route53_record" "secretcthulhu_nohyphen_dmarc" {
  zone_id = data.aws_route53_zone.secretcthulhu-com.zone_id
  name    = local.secretcthulhu_nohyphen_dmarc_name
  type    = local.secretcthulhu_nohyphen_dmarc_type
  ttl     = 1800

  records = [
    "v=DMARC1; p=none; rua=mailto:e709d3a886e1367@rep.dmarcanalyzer.com; ruf=mailto:e709d3a886e1367@for.dmarcanalyzer.com; fo=1;"
  ]
}

# _keybase.secretcthulhu.com (TXT)

locals {
  secretcthulhu_nohyphen_keybase_name = "_keybase.secretcthulhu.com"
  secretcthulhu_nohyphen_keybase_type = "TXT"
}

## import the existing record
import {
  to = aws_route53_record.secretcthulhu_nohyphen_keybase
  id = "${data.aws_route53_zone.secretcthulhu-com.zone_id}_${local.secretcthulhu_nohyphen_keybase_name}_${local.secretcthulhu_nohyphen_keybase_type}"
}

resource "aws_route53_record" "secretcthulhu_nohyphen_keybase" {
  zone_id = data.aws_route53_zone.secretcthulhu-com.zone_id
  name    = local.secretcthulhu_nohyphen_keybase_name
  type    = local.secretcthulhu_nohyphen_keybase_type
  ttl     = 300

  records = [
    "keybase-site-verification=ni1COc8QaPbYFyG5_x8Zrqd98YqliDocO7tSq4VwK30"
  ]
}

# _8d31ef2853b94a670fb6206aa212063c.secretcthulhu.com (acm-validation)

locals {
  secretcthulhu_nohyphen_8d31ef2853b94a670fb6206aa212063c_name = "_8d31ef2853b94a670fb6206aa212063c.secretcthulhu.com"
  secretcthulhu_nohyphen_8d31ef2853b94a670fb6206aa212063c_type = "CNAME"
}

## import the existing record
import {
  to = aws_route53_record.secretcthulhu_nohyphen_8d31ef2853b94a670fb6206aa212063c
  id = "${data.aws_route53_zone.secretcthulhu-com.zone_id}_${local.secretcthulhu_nohyphen_8d31ef2853b94a670fb6206aa212063c_name}_${local.secretcthulhu_nohyphen_8d31ef2853b94a670fb6206aa212063c_type}"
}

resource "aws_route53_record" "secretcthulhu_nohyphen_8d31ef2853b94a670fb6206aa212063c" {
  zone_id = data.aws_route53_zone.secretcthulhu-com.zone_id
  name    = local.secretcthulhu_nohyphen_8d31ef2853b94a670fb6206aa212063c_name
  type    = local.secretcthulhu_nohyphen_8d31ef2853b94a670fb6206aa212063c_type
  ttl     = 500

  records = [
    "_b58d67a93b594212636f8032c956f9b4.vlvttdkdcz.acm-validations.aws."
  ]
}

# _9bc8bdb9bcef292f0b12e04be7313046.secretcthulhu.com (acm-validation)

locals {
  secretcthulhu_nohyphen_9bc8bdb9bcef292f0b12e04be7313046_name = "_9bc8bdb9bcef292f0b12e04be7313046.secretcthulhu.com"
  secretcthulhu_nohyphen_9bc8bdb9bcef292f0b12e04be7313046_type = "CNAME"
}

## import the existing record
import {
  to = aws_route53_record.secretcthulhu_nohyphen_9bc8bdb9bcef292f0b12e04be7313046
  id = "${data.aws_route53_zone.secretcthulhu-com.zone_id}_${local.secretcthulhu_nohyphen_9bc8bdb9bcef292f0b12e04be7313046_name}_${local.secretcthulhu_nohyphen_9bc8bdb9bcef292f0b12e04be7313046_type}"
}

resource "aws_route53_record" "secretcthulhu_nohyphen_9bc8bdb9bcef292f0b12e04be7313046" {
  zone_id = data.aws_route53_zone.secretcthulhu-com.zone_id
  name    = local.secretcthulhu_nohyphen_9bc8bdb9bcef292f0b12e04be7313046_name
  type    = local.secretcthulhu_nohyphen_9bc8bdb9bcef292f0b12e04be7313046_type
  ttl     = 300

  records = [
    "692877f0bc9d2bcc5dc5a4bc5b9649e3.141736ad9296943c939d6e28e7236e64.14ae5c1f561a66f59518.sectigo.com."
  ]
}

# _a20d4f077271763119ee654a908bda87.secretcthulhu.com (acm-validation)

locals {
  secretcthulhu_nohyphen_a20d4f077271763119ee654a908bda87_name = "_a20d4f077271763119ee654a908bda87.secretcthulhu.com"
  secretcthulhu_nohyphen_a20d4f077271763119ee654a908bda87_type = "CNAME"
}

## import the existing record
import {
  to = aws_route53_record.secretcthulhu_nohyphen_a20d4f077271763119ee654a908bda87
  id = "${data.aws_route53_zone.secretcthulhu-com.zone_id}_${local.secretcthulhu_nohyphen_a20d4f077271763119ee654a908bda87_name}_${local.secretcthulhu_nohyphen_a20d4f077271763119ee654a908bda87_type}"
}

resource "aws_route53_record" "secretcthulhu_nohyphen_a20d4f077271763119ee654a908bda87" {
  zone_id = data.aws_route53_zone.secretcthulhu-com.zone_id
  name    = local.secretcthulhu_nohyphen_a20d4f077271763119ee654a908bda87_name
  type    = local.secretcthulhu_nohyphen_a20d4f077271763119ee654a908bda87_type
  ttl     = 300

  records = [
    "e5d0384bba0e4a0f36389c2edb5ffd44.db8552715fc3fa581546afaea5db229c.8591efe6006d839c2345.comodoca.com."
  ]
}

# _f985c761eaf2ffda526e6dad27b26b30.secretcthulhu.com (acm-validation)

locals {
  secretcthulhu_nohyphen_f985c761eaf2ffda526e6dad27b26b30_name = "_f985c761eaf2ffda526e6dad27b26b30.secretcthulhu.com"
  secretcthulhu_nohyphen_f985c761eaf2ffda526e6dad27b26b30_type = "CNAME"
}

## import the existing record
import {
  to = aws_route53_record.secretcthulhu_nohyphen_f985c761eaf2ffda526e6dad27b26b30
  id = "${data.aws_route53_zone.secretcthulhu-com.zone_id}_${local.secretcthulhu_nohyphen_f985c761eaf2ffda526e6dad27b26b30_name}_${local.secretcthulhu_nohyphen_f985c761eaf2ffda526e6dad27b26b30_type}"
}

resource "aws_route53_record" "secretcthulhu_nohyphen_f985c761eaf2ffda526e6dad27b26b30" {
  zone_id = data.aws_route53_zone.secretcthulhu-com.zone_id
  name    = local.secretcthulhu_nohyphen_f985c761eaf2ffda526e6dad27b26b30_name
  type    = local.secretcthulhu_nohyphen_f985c761eaf2ffda526e6dad27b26b30_type
  ttl     = 300

  records = [
    "2b204ed19282bff0ae8e76b724a0f5e1.f8682d6155582bf4d7e3621a96a6a572.23ca67cfd093157f2b1b.sectigo.com."
  ]
}

# _fc965df1ae34f96f8f89fcbb49382681.secretcthulhu.com (acm-validation)

locals {
  secretcthulhu_nohyphen_fc965df1ae34f96f8f89fcbb49382681_name = "_fc965df1ae34f96f8f89fcbb49382681.secretcthulhu.com"
  secretcthulhu_nohyphen_fc965df1ae34f96f8f89fcbb49382681_type = "CNAME"
}

## import the existing record
import {
  to = aws_route53_record.secretcthulhu_nohyphen_fc965df1ae34f96f8f89fcbb49382681
  id = "${data.aws_route53_zone.secretcthulhu-com.zone_id}_${local.secretcthulhu_nohyphen_fc965df1ae34f96f8f89fcbb49382681_name}_${local.secretcthulhu_nohyphen_fc965df1ae34f96f8f89fcbb49382681_type}"
}

resource "aws_route53_record" "secretcthulhu_nohyphen_fc965df1ae34f96f8f89fcbb49382681" {
  zone_id = data.aws_route53_zone.secretcthulhu-com.zone_id
  name    = local.secretcthulhu_nohyphen_fc965df1ae34f96f8f89fcbb49382681_name
  type    = local.secretcthulhu_nohyphen_fc965df1ae34f96f8f89fcbb49382681_type
  ttl     = 300

  records = [
    "114459350b58097fca41b3d2fa6a3e25.2771bd4d95749047b67f2f4daddba701.b635f9e3c038855c68c2.comodoca.com."
  ]
}
