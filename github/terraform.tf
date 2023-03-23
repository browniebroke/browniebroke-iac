terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket  = "browniebroke-terraform-state"
    encrypt = true
    key     = "github.tfstate"
    region  = "eu-west-2"
  }
}
