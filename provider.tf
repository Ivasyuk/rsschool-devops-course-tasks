terraform {
  backend "s3" {
    bucket      = "ruslan-rsschool-state"
    profile     = "ivasiuk"
    encrypt     = true
    region      = "eu-central-1"
    key         = "terraform.tfstate"
  }
}

provider "aws" {
    shared_credentials_files = ["~/.aws/credentials"]
    profile = "ivasiuk"
    region = var.aws_region
}

