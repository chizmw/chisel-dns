# lookup hosted zone
data "aws_route53_zone" "chizography-net" {
  name = "chizography.net"
}

# chizography.net (SOA)

locals {
  chizography_SOA_name = "chizography.net"
  chizography_SOA_type = "SOA"
}

## import the existing record
import {
  to = aws_route53_record.chizography_SOA
  id = "${data.aws_route53_zone.chizography-net.zone_id}_${local.chizography_SOA_name}_${local.chizography_SOA_type}"
}

resource "aws_route53_record" "chizography_SOA" {
  zone_id = data.aws_route53_zone.chizography-net.zone_id
  name    = local.chizography_SOA_name
  type    = local.chizography_SOA_type
  ttl     = 900

  records = [
    "ns-1969.awsdns-54.co.uk. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400",
  ]
}

# chizography.net (NS)

locals {
  chizography_NS_name = "chizography.net"
  chizography_NS_type = "NS"
}

## import the existing record
import {
  to = aws_route53_record.chizography_NS
  id = "${data.aws_route53_zone.chizography-net.zone_id}_${local.chizography_NS_name}_${local.chizography_NS_type}"
}

resource "aws_route53_record" "chizography_NS" {
  zone_id = data.aws_route53_zone.chizography-net.zone_id
  name    = local.chizography_NS_name
  type    = local.chizography_NS_type
  ttl     = 172800

  records = [
    "ns-1969.awsdns-54.co.uk.",
    "ns-692.awsdns-22.net.",
    "ns-1287.awsdns-32.org.",
    "ns-35.awsdns-04.com.",
  ]
}

# chizography.net (MX)

locals {
  chizography_MX_name = "chizography.net"
  chizography_MX_type = "MX"
}
## import the existing record
import {
  to = aws_route53_record.chizography_MX
  id = "${data.aws_route53_zone.chizography-net.zone_id}_${local.chizography_MX_name}_${local.chizography_MX_type}"
}

resource "aws_route53_record" "chizography_MX" {
  zone_id = data.aws_route53_zone.chizography-net.zone_id
  name    = local.chizography_MX_name
  type    = local.chizography_MX_type
  ttl     = 300

  records = [
    "1 ASPMX.L.GOOGLE.COM.",
    "3 ALT1.ASPMX.L.GOOGLE.COM.",
    "3 ALT2.ASPMX.L.GOOGLE.COM.",
    "5 ASPMX2.GOOGLEMAIL.COM.",
    "5 ASPMX3.GOOGLEMAIL.COM.",
  ]
}

# chizography.net (A) -> 157.245.34.199

locals {
  chizography_A_name = "chizography.net"
  chizography_A_type = "A"
}

## import the existing record
import {
  to = aws_route53_record.chizography_A
  id = "${data.aws_route53_zone.chizography-net.zone_id}_${local.chizography_A_name}_${local.chizography_A_type}"
}

resource "aws_route53_record" "chizography_A" {
  zone_id = data.aws_route53_zone.chizography-net.zone_id
  name    = local.chizography_A_name
  type    = local.chizography_A_type
  ttl     = 300

  records = [
    "157.245.34.199",
  ]
}

# chizography.net (TXT)

locals {
  chizography_TXT_name = "chizography.net"
  chizography_TXT_type = "TXT"
}

## import the existing record
import {
  to = aws_route53_record.chizography_TXT
  id = "${data.aws_route53_zone.chizography-net.zone_id}_${local.chizography_TXT_name}_${local.chizography_TXT_type}"
}

resource "aws_route53_record" "chizography_TXT" {
  zone_id = data.aws_route53_zone.chizography-net.zone_id
  name    = local.chizography_TXT_name
  type    = local.chizography_TXT_type
  ttl     = 300

  records = [
    "brave-ledger-verification=8e960587c31ef8b27a77c08071f9e1347e71f66e8ffda18e2da15e6d54f48392",
    "google-site-verification=ujv8cAzmMy_8jkNbu2lzZaNwEtYwcGVpE2yP9px6m0c",
    "keybase-site-verification=kwYJ7BTRGFyJlWTVIHE80kelDuqZG3FkJSHykh_tzNk",
    "v=spf1 include:_spf.google.com ~all",
  ]
}

# _dmarc.chizography.net (TXT)

locals {
  chizography_dmarc_name = "_dmarc.chizography.net"
  chizography_dmarc_type = "TXT"
}

## import the existing record
import {
  to = aws_route53_record.chizography_dmarc
  id = "${data.aws_route53_zone.chizography-net.zone_id}_${local.chizography_dmarc_name}_${local.chizography_dmarc_type}"
}

resource "aws_route53_record" "chizography_dmarc" {
  zone_id = data.aws_route53_zone.chizography-net.zone_id
  name    = local.chizography_dmarc_name
  type    = local.chizography_dmarc_type
  ttl     = 300

  records = [
    "v=DMARC1; p=none; rua=mailto:e709d3a886e1367@rep.dmarcanalyzer.com; ruf=mailto:e709d3a886e1367@for.dmarcanalyzer.com; fo=1;"
  ]
}

# boardtalk.chizography.net (CNAME) -> domains.tumblr.com.

locals {
  boardtalk_name = "boardtalk.chizography.net"
  boardtalk_type = "CNAME"
}

## import the existing record
import {
  to = aws_route53_record.boardtalk
  id = "${data.aws_route53_zone.chizography-net.zone_id}_${local.boardtalk_name}_${local.boardtalk_type}"
}

resource "aws_route53_record" "boardtalk" {
  zone_id = data.aws_route53_zone.chizography-net.zone_id
  name    = local.boardtalk_name
  type    = local.boardtalk_type
  ttl     = 300

  records = [
    "domains.tumblr.com.",
  ]
}

# calendar.chizography.net (CNAME) -> ghs.google.com.

locals {
  calendar_name = "calendar.chizography.net"
  calendar_type = "CNAME"
}

## import the existing record
import {
  to = aws_route53_record.calendar
  id = "${data.aws_route53_zone.chizography-net.zone_id}_${local.calendar_name}_${local.calendar_type}"
}

resource "aws_route53_record" "calendar" {
  zone_id = data.aws_route53_zone.chizography-net.zone_id
  name    = local.calendar_name
  type    = local.calendar_type
  ttl     = 300

  records = [
    "ghs.google.com.",
  ]
}

# docking-station.chizography.net (A) -> 46.101.84.15

locals {
  docking_station_name = "docking-station.chizography.net"
  docking_station_type = "A"
}

## import the existing record
import {
  to = aws_route53_record.docking_station
  id = "${data.aws_route53_zone.chizography-net.zone_id}_${local.docking_station_name}_${local.docking_station_type}"
}

resource "aws_route53_record" "docking_station" {
  zone_id = data.aws_route53_zone.chizography-net.zone_id
  name    = local.docking_station_name
  type    = local.docking_station_type
  ttl     = 300

  records = [
    "46.101.84.15",
  ]
}

# docs.chizography.net (CNAME) -> ghs.google.com.

locals {
  docs_name = "docs.chizography.net"
  docs_type = "CNAME"
}

## import the existing record
import {
  to = aws_route53_record.docs
  id = "${data.aws_route53_zone.chizography-net.zone_id}_${local.docs_name}_${local.docs_type}"
}

resource "aws_route53_record" "docs" {
  zone_id = data.aws_route53_zone.chizography-net.zone_id
  name    = local.docs_name
  type    = local.docs_type
  ttl     = 300

  records = [
    "ghs.google.com.",
  ]
}

# google74f327ae84f6403.chizography.net (CNAME) -> google.com.

locals {
  google_name = "google74f327ae84f6403.chizography.net"
  google_type = "CNAME"
}

## import the existing record
import {
  to = aws_route53_record.google
  id = "${data.aws_route53_zone.chizography-net.zone_id}_${local.google_name}_${local.google_type}"
}

resource "aws_route53_record" "google" {
  zone_id = data.aws_route53_zone.chizography-net.zone_id
  name    = local.google_name
  type    = local.google_type
  ttl     = 300

  records = [
    "google.com.",
  ]
}

# mail.chizography.net (CNAME) -> ghs.google.com.

locals {
  mail_name = "mail.chizography.net"
  mail_type = "CNAME"
}

## import the existing record
import {
  to = aws_route53_record.mail
  id = "${data.aws_route53_zone.chizography-net.zone_id}_${local.mail_name}_${local.mail_type}"
}

resource "aws_route53_record" "mail" {
  zone_id = data.aws_route53_zone.chizography-net.zone_id
  name    = local.mail_name
  type    = local.mail_type
  ttl     = 300

  records = [
    "ghs.google.com.",
  ]
}

# preview.chizography.net (A) -> 157.245.34.199

locals {
  preview_chizography_name = "preview.chizography.net"
  preview_chizography_type = "A"
}

## import the existing record
import {
  to = aws_route53_record.preview_chizography
  id = "${data.aws_route53_zone.chizography-net.zone_id}_${local.preview_chizography_name}_${local.preview_chizography_type}"
}

resource "aws_route53_record" "preview_chizography" {
  zone_id = data.aws_route53_zone.chizography-net.zone_id
  name    = local.preview_chizography_name
  type    = local.preview_chizography_type
  ttl     = 300

  records = [
    "157.245.34.199",
  ]
}

# protomolecule.chizography.net (A) -> 157.245.34.199
# This is defunct since shutting down the DigitalOcean droplet in Dec 2024

locals {
  protomolecule_name = "protomolecule.chizography.net"
  protomolecule_type = "A"
}

## import the existing record
import {
  to = aws_route53_record.protomolecule
  id = "${data.aws_route53_zone.chizography-net.zone_id}_${local.protomolecule_name}_${local.protomolecule_type}"
}

resource "aws_route53_record" "protomolecule" {
  zone_id = data.aws_route53_zone.chizography-net.zone_id
  name    = local.protomolecule_name
  type    = local.protomolecule_type
  ttl     = 300

  records = [
    "157.245.34.199",
  ]
}

# sites.chizography.net (CNAME) -> ghs.google.com.

locals {
  sites_name = "sites.chizography.net"
  sites_type = "CNAME"
}

## import the existing record
import {
  to = aws_route53_record.sites
  id = "${data.aws_route53_zone.chizography-net.zone_id}_${local.sites_name}_${local.sites_type}"
}

resource "aws_route53_record" "sites" {
  zone_id = data.aws_route53_zone.chizography-net.zone_id
  name    = local.sites_name
  type    = local.sites_type
  ttl     = 300

  records = [
    "ghs.google.com.",
  ]
}

# start.chizography.net (CNAME) -> ghs.google.com.

locals {
  start_name = "start.chizography.net"
  start_type = "CNAME"
}

## import the existing record
import {
  to = aws_route53_record.start
  id = "${data.aws_route53_zone.chizography-net.zone_id}_${local.start_name}_${local.start_type}"
}

resource "aws_route53_record" "start" {
  zone_id = data.aws_route53_zone.chizography-net.zone_id
  name    = local.start_name
  type    = local.start_type
  ttl     = 300

  records = [
    "ghs.google.com.",
  ]
}

# status.chizography.net (CNAME) -> 0ytkqcog3csby.sp-production.firehydrant-customer.com.
# Almost certainly defunct

locals {
  status_name = "status.chizography.net"
  status_type = "CNAME"
}

## import the existing record
import {
  to = aws_route53_record.status
  id = "${data.aws_route53_zone.chizography-net.zone_id}_${local.status_name}_${local.status_type}"
}

resource "aws_route53_record" "status" {
  zone_id = data.aws_route53_zone.chizography-net.zone_id
  name    = local.status_name
  type    = local.status_type
  ttl     = 300

  records = [
    "0ytkqcog3csby.sp-production.firehydrant-customer.com.",
  ]
}

# unloq_ssyscuecvfkwgokiadjc.chizography.net (TXT) -> "unloq_ssyscuecvfkwgokiadjc"

locals {
  unloq_ssyscuecvfkwgokiadjc_name = "unloq_ssyscuecvfkwgokiadjc.chizography.net"
  unloq_ssyscuecvfkwgokiadjc_type = "TXT"
}

## import the existing record
import {
  to = aws_route53_record.unloq_ssyscuecvfkwgokiadjc
  id = "${data.aws_route53_zone.chizography-net.zone_id}_${local.unloq_ssyscuecvfkwgokiadjc_name}_${local.unloq_ssyscuecvfkwgokiadjc_type}"
}

resource "aws_route53_record" "unloq_ssyscuecvfkwgokiadjc" {
  zone_id = data.aws_route53_zone.chizography-net.zone_id
  name    = local.unloq_ssyscuecvfkwgokiadjc_name
  type    = local.unloq_ssyscuecvfkwgokiadjc_type
  ttl     = 300

  records = [
    "unloq_ssyscuecvfkwgokiadjc",
  ]
}
