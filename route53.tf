resource "aws_route53_record" "api-alibekcluster-com" {
  name = "api.alibekcluster.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.api-alibekcluster-com.dns_name}"
    zone_id                = "${aws_elb.api-alibekcluster-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/Z1ECAEIPT3OQIB"
}

resource "aws_route53_record" "bastion-alibekcluster-com" {
  name = "bastion.alibekcluster.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.bastion-alibekcluster-com.dns_name}"
    zone_id                = "${aws_elb.bastion-alibekcluster-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/Z1ECAEIPT3OQIB"
}

resource "aws_route53_zone_association" "Z1ECAEIPT3OQIB" {
  zone_id = "/hostedzone/Z1ECAEIPT3OQIB"
  vpc_id  = "${aws_vpc.alibekcluster-com.id}"
}