resource "aws_route53_record" "record" {
  zone_id = "Z10227673MRFB0EY34RV8"
  name    = "${var.instance_name}-dev.venkysiridevops.online"
  type    = "A"
  ttl     = "30"
  records = [var.ip_address]
}

variable "instance_name" {}
variable "ip_address" {}