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

# numbers, Booleans & strings
variable "list1"{
  default = [
  10, 20, "xyz",false
  ]
}

# list can have combination of multiple data types also
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


# declare a empty variable and we can get the value from CLI, Unlike ansible or shell we must and should declare a variable in order to use it
variable  "trainer_name"{

}