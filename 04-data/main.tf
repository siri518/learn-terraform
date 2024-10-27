resource "aws_instance" "test" {
  instance_type = "t3.small"
  vpc_security_group_ids =["sg-01afef600657f35e7"]
  tags = {
    Name = "test"
  }
}

