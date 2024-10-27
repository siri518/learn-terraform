variable "instances" {
  default = [
    "frontend",
    "mongobd",
    "cart",
    "catalogue",
    "user",
    "shipping",
    "payment",
    "rabbitmq",
    "mysql",
    "redis"
  ]
}

resource "aws_instance" "instance" {
  count = length(var.instances)
  ami   = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids =["sg-01afef600657f35e7"]
  tags = {
    Name = var.instances[count.index]
  }
}

resource "aws_route53_record" "record" {
  count = length(var.instances)
  zone_id = "Z10227673MRFB0EY34RV8"
  name    = "frontend-dev.venkysiridevops.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.instance[count.index].private_ip]
}