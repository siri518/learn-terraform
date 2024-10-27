variable "URL" {
  default = "example.com"
}

## Access variables
output "URL" {
  value = var.URL
}

## Combination of some other string. Then we have to use ${}
output "URL1" {
  value = "URL - ${var.URL}"
}

# Data Types
variable  "num1" {
  default = 10
}

variable  "bool1" {
  default = true
}

variable "str1" {
  default = "hello"
}

variable "str2" {
  default = "World"
}

variable "list1"{
  default = [
  10, 20, "xyz",false
  ]
}

variable "map1"{
   default = {
     aws ={
       trainer = "john"
       duration = 30
     }

     devops = {
       trainer = "raghu"
       duration = 20
     }
   }
}

output "list_1"{
  value = var.list1[2]
}

output "map1_aws_trainer"{
  value = var.map1["aws"]["trainer"]
}
