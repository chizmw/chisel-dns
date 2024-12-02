# lookup hosted zone
data "aws_route53_zone" "hameraasfa-uk" {
  name = "hameraasfa.uk"
}

# hameraasfa.uk (SOA)

locals {
  hameraasfa_SOA_name = "hameraasfa.uk"
  hameraasfa_SOA_type = "SOA"
}

## import the existing record
import {
  to = aws_route53_record.hameraasfa_SOA
  id = "${data.aws_route53_zone.hameraasfa-uk.zone_id}_${local.hameraasfa_SOA_name}_${local.hameraasfa_SOA_type}"
}

resource "aws_route53_record" "hameraasfa_SOA" {
  zone_id = data.aws_route53_zone.hameraasfa-uk.zone_id
  name    = local.hameraasfa_SOA_name
  type    = local.hameraasfa_SOA_type
  ttl     = 900

  records = [
    "ns-766.awsdns-31.net. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"
  ]
}

# hameraasfa.uk (NS)

locals {
  hameraasfa_NS_name = "hameraasfa.uk"
  hameraasfa_NS_type = "NS"
}

## import the existing record
import {
  to = aws_route53_record.hameraasfa_NS
  id = "${data.aws_route53_zone.hameraasfa-uk.zone_id}_${local.hameraasfa_NS_name}_${local.hameraasfa_NS_type}"
}

resource "aws_route53_record" "hameraasfa_NS" {
  zone_id = data.aws_route53_zone.hameraasfa-uk.zone_id
  name    = local.hameraasfa_NS_name
  type    = local.hameraasfa_NS_type
  ttl     = 172800

  records = [
    "ns-766.awsdns-31.net.",
    "ns-127.awsdns-15.com.",
    "ns-2002.awsdns-58.co.uk.",
    "ns-1154.awsdns-16.org.",
  ]
}

# hameraasfa.uk (MX)

locals {
  hameraasfa_MX_name = "hameraasfa.uk"
  hameraasfa_MX_type = "MX"
}

## import the existing record
import {
  to = aws_route53_record.hameraasfa_MX
  id = "${data.aws_route53_zone.hameraasfa-uk.zone_id}_${local.hameraasfa_MX_name}_${local.hameraasfa_MX_type}"
}

resource "aws_route53_record" "hameraasfa_MX" {
  zone_id = data.aws_route53_zone.hameraasfa-uk.zone_id
  name    = local.hameraasfa_MX_name
  type    = local.hameraasfa_MX_type
  ttl     = 300

  records = [
    "1 ASPMX.L.GOOGLE.COM.",
    "3 ALT1.ASPMX.L.GOOGLE.COM.",
    "3 ALT2.ASPMX.L.GOOGLE.COM.",
    "5 ASPMX2.GOOGLEMAIL.COM.",
    "5 ASPMX3.GOOGLEMAIL.COM.",
  ]
}

# hameraasfa.uk (A)
# this is defunct since shutting down the DigitalOcean droplet in Dec 2024

locals {
  hameraasfa_A_name = "hameraasfa.uk"
  hameraasfa_A_type = "A"
}

## import the existing record
import {
  to = aws_route53_record.hameraasfa_A
  id = "${data.aws_route53_zone.hameraasfa-uk.zone_id}_${local.hameraasfa_A_name}_${local.hameraasfa_A_type}"
}

resource "aws_route53_record" "hameraasfa_A" {
  zone_id = data.aws_route53_zone.hameraasfa-uk.zone_id
  name    = local.hameraasfa_A_name
  type    = local.hameraasfa_A_type
  ttl     = 300

  records = [
    "157.245.34.199"
  ]
}

# hameraasfa.uk (TXT)

locals {
  hameraasfa_TXT_name = "hameraasfa.uk"
  hameraasfa_TXT_type = "TXT"
}

## import the existing record
import {
  to = aws_route53_record.hameraasfa_TXT
  id = "${data.aws_route53_zone.hameraasfa-uk.zone_id}_${local.hameraasfa_TXT_name}_${local.hameraasfa_TXT_type}"
}

resource "aws_route53_record" "hameraasfa_TXT" {
  zone_id = data.aws_route53_zone.hameraasfa-uk.zone_id
  name    = local.hameraasfa_TXT_name
  type    = local.hameraasfa_TXT_type
  ttl     = 300

  records = [
    "google-site-verification=D0ZD-Ae2Do52x4yVrIAx42v1Ve2yZX4ygm7RX_IUhwQ",
    "v=spf1 include:_spf.google.com ~all"
  ]
}

# _dmarc.hameraasfa.uk (TXT)

locals {
  hameraasfa_dmarc_name = "_dmarc.hameraasfa.uk"
  hameraasfa_dmarc_type = "TXT"
}

## import the existing record
import {
  to = aws_route53_record.hameraasfa_dmarc
  id = "${data.aws_route53_zone.hameraasfa-uk.zone_id}_${local.hameraasfa_dmarc_name}_${local.hameraasfa_dmarc_type}"
}

resource "aws_route53_record" "hameraasfa_dmarc" {
  zone_id = data.aws_route53_zone.hameraasfa-uk.zone_id
  name    = local.hameraasfa_dmarc_name
  type    = local.hameraasfa_dmarc_type
  ttl     = 300

  records = [
    "v=DMARC1; p=none; rua=mailto:e709d3a886e1367@rep.dmarcanalyzer.com; ruf=mailto:e709d3a886e1367@for.dmarcanalyzer.com; fo=1;",
  ]
}

# _keybase.hameraasfa.uk (TXT)

locals {
  hameraasfa_keybase_name = "_keybase.hameraasfa.uk"
  hameraasfa_keybase_type = "TXT"
}

## import the existing record
import {
  to = aws_route53_record.hameraasfa_keybase
  id = "${data.aws_route53_zone.hameraasfa-uk.zone_id}_${local.hameraasfa_keybase_name}_${local.hameraasfa_keybase_type}"
}

resource "aws_route53_record" "hameraasfa_keybase" {
  zone_id = data.aws_route53_zone.hameraasfa-uk.zone_id
  name    = local.hameraasfa_keybase_name
  type    = local.hameraasfa_keybase_type
  ttl     = 300

  records = [
    "keybase-site-verification=4nUamsEdqyEJf9JKk-fiulbjq2isqMxenjA1HQPbMqM",
  ]
}

# calendar.hameraasfa.uk (CNAME)

locals {
  hameraasfa_calendar_name = "calendar.hameraasfa.uk"
  hameraasfa_calendar_type = "CNAME"
}

## import the existing record
import {
  to = aws_route53_record.hameraasfa_calendar
  id = "${data.aws_route53_zone.hameraasfa-uk.zone_id}_${local.hameraasfa_calendar_name}_${local.hameraasfa_calendar_type}"
}

resource "aws_route53_record" "hameraasfa_calendar" {
  zone_id = data.aws_route53_zone.hameraasfa-uk.zone_id
  name    = local.hameraasfa_calendar_name
  type    = local.hameraasfa_calendar_type
  ttl     = 300

  records = [
    "ghs.google.com.",
  ]
}

# mail.hameraasfa.uk (CNAME) -> ghs.google.com

locals {
  hameraasfa_mail_name = "mail.hameraasfa.uk"
  hameraasfa_mail_type = "CNAME"
}

## import the existing record
import {
  to = aws_route53_record.hameraasfa_mail
  id = "${data.aws_route53_zone.hameraasfa-uk.zone_id}_${local.hameraasfa_mail_name}_${local.hameraasfa_mail_type}"
}

resource "aws_route53_record" "hameraasfa_mail" {
  zone_id = data.aws_route53_zone.hameraasfa-uk.zone_id
  name    = local.hameraasfa_mail_name
  type    = local.hameraasfa_mail_type
  ttl     = 300

  records = [
    "ghs.google.com.",
  ]
}

# www.hameraasfa.uk (CNAME) -> hameraasfa.uk

locals {
  hameraasfa_www_name = "www.hameraasfa.uk"
  hameraasfa_www_type = "CNAME"
}

## import the existing record
import {
  to = aws_route53_record.hameraasfa_www
  id = "${data.aws_route53_zone.hameraasfa-uk.zone_id}_${local.hameraasfa_www_name}_${local.hameraasfa_www_type}"
}

resource "aws_route53_record" "hameraasfa_www" {
  zone_id = data.aws_route53_zone.hameraasfa-uk.zone_id
  name    = local.hameraasfa_www_name
  type    = local.hameraasfa_www_type
  ttl     = 300

  records = [
    "hameraasfa.uk.",
  ]
}
