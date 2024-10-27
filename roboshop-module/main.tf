module "roboshop"{
  for_each = var.instacnes
  source = "./module"
  component_name = "each.key"
}

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

