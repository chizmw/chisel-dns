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
