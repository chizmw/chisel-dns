terraform {
  backend "s3" {
    bucket               = "436158765452-terraform-state"
    key                  = "chisel-dns"
    region               = "eu-west-2"
    workspace_key_prefix = "tf-state"
  }

  required_version = "~> 1.10"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5"
    }
  }
}

provider "aws" {
  alias  = "default"
  region = "eu-west-2"
  default_tags {
    tags = local.tag_defaults
  }
}

provider "aws" {
  alias  = "acm_provider"
  region = "us-east-1"
  default_tags {
    tags = local.tag_defaults
  }
}
