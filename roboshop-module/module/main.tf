resource "aws_instance" "instance" {
  ami   = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids =["sg-01afef600657f35e7"]
  tags = {
    Name = var.component_name
  }
}

resource "aws_route53_record" "record" {
  zone_id = "Z10227673MRFB0EY34RV8"
  name    = "${var.component_name}-dev.venkysiridevops.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.instance.private_ip]
}

variable "component_name" {}