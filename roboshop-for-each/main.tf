variable "instances" {
  default = {
    frontend = {}
    mongobd = {}
    cart = {}
    catalogue = {}
    user = {}
    shipping = {}
    payment = {}
    rabbitmq  = {}
    mysql = {}
    redis = {}
  }
}

resource "aws_instance" "instance" {
  count = var.instances
  ami   = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids =["sg-01afef600657f35e7"]
  tags = {
    Name = each.key
  }
}

resource "aws_route53_record" "record" {
  count = var.instances
  zone_id = "Z10227673MRFB0EY34RV8"
  name    = "${each.key}.venkysiridevops.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.instance[each.key].private_ip]
}