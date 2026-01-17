terraform {
  required_version = "1.14.3"

  backend "s3" {
    region = "us-east-1"
    bucket = "personal-infra-states"
    key    = "shared-infra/aws"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6"
    }
  }
}

provider "aws" {
  alias = "us-east-1"

  region = "us-east-1"

  default_tags {
    tags = {
      Project = "shared-infra"
      Type    = "personal"
      Owner   = "nicolesjlee"
    }
  }
}
