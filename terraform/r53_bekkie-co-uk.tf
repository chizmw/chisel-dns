# lookup hosted zone
data "aws_route53_zone" "bekkie-co-uk" {
  name = "bekkie.co.uk"
}

# bekkie.co.uk (SOA)

locals {
  bekkie_SOA_name = "bekkie.co.uk"
  bekkie_SOA_type = "SOA"
}

# import the existing record
import {
  to = aws_route53_record.bekkie_SOA
  id = "${data.aws_route53_zone.bekkie-co-uk.zone_id}_${local.bekkie_SOA_name}_${local.bekkie_SOA_type}"
}

resource "aws_route53_record" "bekkie_SOA" {
  zone_id = data.aws_route53_zone.bekkie-co-uk.zone_id
  name    = local.bekkie_SOA_name
  type    = local.bekkie_SOA_type
  ttl     = 900

  records = [
    "ns-1575.awsdns-04.co.uk. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400",
  ]
}

# bekkie.co.uk (NS)

locals {
  bekkie_NS_name = "bekkie.co.uk"
  bekkie_NS_type = "NS"
}

# import the existing record
import {
  to = aws_route53_record.bekkie_NS
  id = "${data.aws_route53_zone.bekkie-co-uk.zone_id}_${local.bekkie_NS_name}_${local.bekkie_NS_type}"
}

resource "aws_route53_record" "bekkie_NS" {
  zone_id = data.aws_route53_zone.bekkie-co-uk.zone_id
  name    = local.bekkie_NS_name
  type    = local.bekkie_NS_type
  ttl     = 172800

  records = [
    "ns-1575.awsdns-04.co.uk.",
    "ns-1412.awsdns-48.org.",
    "ns-419.awsdns-52.com.",
    "ns-807.awsdns-36.net.",
  ]
}

# bekkie.co.uk (MX)

locals {
  bekkie_MX_name = "bekkie.co.uk"
  bekkie_MX_type = "MX"
}

# import the existing record
import {
  to = aws_route53_record.bekkie_MX
  id = "${data.aws_route53_zone.bekkie-co-uk.zone_id}_${local.bekkie_MX_name}_${local.bekkie_MX_type}"
}

resource "aws_route53_record" "bekkie_MX" {
  zone_id = data.aws_route53_zone.bekkie-co-uk.zone_id
  name    = local.bekkie_MX_name
  type    = local.bekkie_MX_type
  ttl     = 172800

  records = [
    "10 ASPMX.L.GOOGLE.COM.",
    "20 ALT1.ASPMX.L.GOOGLE.COM.",
    "20 ALT2.ASPMX.L.GOOGLE.COM.",
    "30 ASPMX2.GOOGLEMAIL.COM.",
    "30 ASPMX3.GOOGLEMAIL.COM.",
    "30 ASPMX4.GOOGLEMAIL.COM.",
    "30 ASPMX5.GOOGLEMAIL.COM.",
  ]
}

# bekkie.co.uk (A) -> 217.70.184.38

locals {
  bekkie_A_name = "bekkie.co.uk"
  bekkie_A_type = "A"
}

# import the existing record
import {
  to = aws_route53_record.bekkie_A
  id = "${data.aws_route53_zone.bekkie-co-uk.zone_id}_${local.bekkie_A_name}_${local.bekkie_A_type}"
}

resource "aws_route53_record" "bekkie_A" {
  zone_id = data.aws_route53_zone.bekkie-co-uk.zone_id
  name    = local.bekkie_A_name
  type    = local.bekkie_A_type
  ttl     = 300

  records = [
    "217.70.184.38",
  ]
}

# bekkie.co.uk (TXT)

locals {
  bekkie_TXT_name = "bekkie.co.uk"
  bekkie_TXT_type = "TXT"
}

## import the existing record
import {
  to = aws_route53_record.bekkie_TXT
  id = "${data.aws_route53_zone.bekkie-co-uk.zone_id}_${local.bekkie_TXT_name}_${local.bekkie_TXT_type}"
}

resource "aws_route53_record" "bekkie_TXT" {
  zone_id = data.aws_route53_zone.bekkie-co-uk.zone_id
  name    = local.bekkie_TXT_name
  type    = local.bekkie_TXT_type
  ttl     = 300

  records = [
    "google-site-verification=r10o7G-epKlqBl6hR4UlJVTJCqc22Sx5o03B_PPdne4",
    "v=spf1 include:_spf.google.com ~all"
  ]
}

# _dmarc.bekkie.co.uk (TXT)

locals {
  bekkie_dmarc_name = "_dmarc.bekkie.co.uk"
  bekkie_dmarc_type = "TXT"
}

## import the existing record
import {
  to = aws_route53_record.bekkie_dmarc
  id = "${data.aws_route53_zone.bekkie-co-uk.zone_id}_${local.bekkie_dmarc_name}_${local.bekkie_dmarc_type}"
}

resource "aws_route53_record" "bekkie_dmarc" {
  zone_id = data.aws_route53_zone.bekkie-co-uk.zone_id
  name    = local.bekkie_dmarc_name
  type    = local.bekkie_dmarc_type
  ttl     = 300

  records = [
    "v=DMARC1; p=none; rua=mailto:e709d3a886e1367@rep.dmarcanalyzer.com; ruf=mailto:e709d3a886e1367@for.dmarcanalyzer.com; fo=1;"
  ]
}

# _keybase.bekkie.co.uk (TXT)

locals {
  bekkie_nohyphen_keybase_name = "_keybase.bekkie.co.uk"
  bekkie_nohyphen_keybase_type = "TXT"
}

## import the existing record
import {
  to = aws_route53_record.bekkie_nohyphen_keybase
  id = "${data.aws_route53_zone.bekkie-co-uk.zone_id}_${local.bekkie_nohyphen_keybase_name}_${local.bekkie_nohyphen_keybase_type}"
}

resource "aws_route53_record" "bekkie_nohyphen_keybase" {
  zone_id = data.aws_route53_zone.bekkie-co-uk.zone_id
  name    = local.bekkie_nohyphen_keybase_name
  type    = local.bekkie_nohyphen_keybase_type
  ttl     = 300

  records = [
    "keybase-site-verification=sIBQFgGUhchYtIori-J7JnHA8s4EFqM3rs0_HNJVI8o"
  ]
}

# calendar.bekkie.co.uk (CNAME) -> ghs.google.com.

locals {
  bekkie_calendar_name = "calendar.bekkie.co.uk"
  bekkie_calendar_type = "CNAME"
}

## import the existing record
import {
  to = aws_route53_record.bekkie_calendar
  id = "${data.aws_route53_zone.bekkie-co-uk.zone_id}_${local.bekkie_calendar_name}_${local.bekkie_calendar_type}"
}

resource "aws_route53_record" "bekkie_calendar" {
  zone_id = data.aws_route53_zone.bekkie-co-uk.zone_id
  name    = local.bekkie_calendar_name
  type    = local.bekkie_calendar_type
  ttl     = 300

  records = [
    "ghs.google.com.",
  ]
}

# docs.bekkie.co.uk (CNAME) -> ghs.google.com.

locals {
  bekkie_docs_name = "docs.bekkie.co.uk"
  bekkie_docs_type = "CNAME"
}

## import the existing record
import {
  to = aws_route53_record.bekkie_docs
  id = "${data.aws_route53_zone.bekkie-co-uk.zone_id}_${local.bekkie_docs_name}_${local.bekkie_docs_type}"
}

resource "aws_route53_record" "bekkie_docs" {
  zone_id = data.aws_route53_zone.bekkie-co-uk.zone_id
  name    = local.bekkie_docs_name
  type    = local.bekkie_docs_type
  ttl     = 300

  records = [
    "ghs.google.com.",
  ]
}

# mail.bekkie.co.uk (CNAME) -> ghs.google.com.

locals {
  bekkie_mail_name = "mail.bekkie.co.uk"
  bekkie_mail_type = "CNAME"
}

## import the existing record
import {
  to = aws_route53_record.bekkie_mail
  id = "${data.aws_route53_zone.bekkie-co-uk.zone_id}_${local.bekkie_mail_name}_${local.bekkie_mail_type}"
}

resource "aws_route53_record" "bekkie_mail" {
  zone_id = data.aws_route53_zone.bekkie-co-uk.zone_id
  name    = local.bekkie_mail_name
  type    = local.bekkie_mail_type
  ttl     = 300

  records = [
    "ghs.google.com.",
  ]
}

# www.bekkie.co.uk (CNAME) -> ghs.google.com.

locals {
  bekkie_www_name = "www.bekkie.co.uk"
  bekkie_www_type = "CNAME"
}

## import the existing record
import {
  to = aws_route53_record.bekkie_www
  id = "${data.aws_route53_zone.bekkie-co-uk.zone_id}_${local.bekkie_www_name}_${local.bekkie_www_type}"
}

resource "aws_route53_record" "bekkie_www" {
  zone_id = data.aws_route53_zone.bekkie-co-uk.zone_id
  name    = local.bekkie_www_name
  type    = local.bekkie_www_type
  ttl     = 300

  records = [
    "ghs.google.com.",
  ]
}
