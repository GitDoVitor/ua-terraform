terraform {
  required_version = ">=1.0.0"

  required_providers {
    aws = {
      version = "4.17.1"
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  profile = var.aws_profile
  region  = var.aws_region

  default_tags {
    tags = {
      "managed-by" = "terraform"
      "owner"      = "vitor"
    }
  }
}
