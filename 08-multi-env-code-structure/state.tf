terraform {
  backend "s3" {
    bucket = "terraform-siri518"
    key    = "sample/terraform.tfstate"
    region = "us-east-1"
  }
}