terraform {
  backend "s3" {
    bucket  = "browniebroke-terraform-state"
    encrypt = true
    key     = "bootstrap/aws.tfstate"
    region  = "eu-west-2"
  }
}
