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