terraform {
  # The configuration for this backend will be filled in by Terragrunt
  backend "s3" {}
}
resource "aws_route53_record" "www" {
  zone_id = "${var.zone_id}"
  name    = "${var.domain_name}"
  type    = "A"
  ttl     = "900"
  records = ["${var.records}"]
}