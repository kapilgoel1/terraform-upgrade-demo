terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "company-kapil"

    workspaces {
      name = "terraform-upgrade-demo"
    }
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
  required_version = ">= 0.13"
}