terraform {
  backend "s3" {
    bucket  = "nixos-terraform-state"
    encrypt = true
    key     = "targets/terraform"
    region  = "eu-west-1"
  }

  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    fastly = {
      source = "fastly/fastly"
    }
    netlify = {
      source = "AegirHealth/netlify"
    }
    secret = {
      source = "nixpkgs/secret"
    }
  }
}
