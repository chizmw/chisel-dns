# lookup the zone
data "aws_route53_zone" "chizovation-com" {
  name = "chizovation.com"
}

# chizovation.com (NS)

locals {
  chizovation_NS_name = "chizovation.com"
  chizovation_NS_type = "NS"
}

## import the existing record
import {
  to = aws_route53_record.chizovation_NS
  id = "${data.aws_route53_zone.chizovation-com.zone_id}_${local.chizovation_NS_name}_${local.chizovation_NS_type}"
}

resource "aws_route53_record" "chizovation_NS" {
  zone_id = data.aws_route53_zone.chizovation-com.zone_id
  name    = local.chizovation_NS_name
  type    = local.chizovation_NS_type
  ttl     = 172800

  records = [
    "ns-1303.awsdns-34.org.",
    "ns-1728.awsdns-24.co.uk.",
    "ns-327.awsdns-40.com.",
    "ns-653.awsdns-17.net.",
  ]
}

# chizovation.com (SOA)

locals {
  chizovation_SOA_name = "chizovation.com"
  chizovation_SOA_type = "SOA"
}

## import the existing record
import {
  to = aws_route53_record.chizovation_SOA
  id = "${data.aws_route53_zone.chizovation-com.zone_id}_${local.chizovation_SOA_name}_${local.chizovation_SOA_type}"
}

resource "aws_route53_record" "chizovation_SOA" {
  zone_id = data.aws_route53_zone.chizovation-com.zone_id
  name    = local.chizovation_SOA_name
  type    = local.chizovation_SOA_type
  ttl     = 900

  records = [
    "ns-1303.awsdns-34.org. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400",
  ]
}

# chizovation.com (MX)

locals {
  chizovation_MX_name = "chizovation.com"
  chizovation_MX_type = "MX"
}

## import the existing record
import {
  to = aws_route53_record.chizovation_MX
  id = "${data.aws_route53_zone.chizovation-com.zone_id}_${local.chizovation_MX_name}_${local.chizovation_MX_type}"
}

resource "aws_route53_record" "chizovation_MX" {
  zone_id = data.aws_route53_zone.chizovation-com.zone_id
  name    = local.chizovation_MX_name
  type    = local.chizovation_MX_type
  ttl     = 300

  records = [
    "1 ASPMX.L.GOOGLE.COM.",
    "10 ALT3.ASPMX.L.GOOGLE.COM.",
    "10 ALT4.ASPMX.L.GOOGLE.COM.",
    "5 ALT1.ASPMX.L.GOOGLE.COM.",
    "5 ALT2.ASPMX.L.GOOGLE.COM.",
  ]
}

# chizovation.com (TXT)

locals {
  chizovation_TXT_name = "chizovation.com"
  chizovation_TXT_type = "TXT"
}

## import the existing record
import {
  to = aws_route53_record.chizovation_TXT
  id = "${data.aws_route53_zone.chizovation-com.zone_id}_${local.chizovation_TXT_name}_${local.chizovation_TXT_type}"
}

resource "aws_route53_record" "chizovation_TXT" {
  zone_id = data.aws_route53_zone.chizovation-com.zone_id
  name    = local.chizovation_TXT_name
  type    = local.chizovation_TXT_type
  ttl     = 300

  records = [
    "google-site-verification=dMJFjnrzH0kx3t4pxGfvcCTzQ_jPZPf6_-yAUxfqtJo",
  ]
}
