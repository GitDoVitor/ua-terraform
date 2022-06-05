terraform {
  required_version = ">=1.0.0"

  required_providers {
    aws = {
      version = "3.73.0"
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  profile = "tf114"
  region  = "us-east-1"

  default_tags {
    tags = {
      "managed-by" = "terraform"
      "owner" = "vitor"
    }
  }
}