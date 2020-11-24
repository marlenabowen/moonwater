terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

resource "aws_s3_bucket" "moonwater" {
  bucket = "moonwater-s3-terraform-bucket"
  acl    = "public-read"
  policy = file("policy.json")

  website {
    index_document = "index.html"
  }
}
