terraform {
  required_version = ">= 1.5"
  backend "s3" {
    profile = "default"
    bucket  = "arc-kinesis-example-west-1"
    key     = "cm-terragrunt-testing/terraform.tfstate"
    region  = "us-west-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-west-1"
}

resource "aws_s3_bucket" "this" {
  bucket = "${var.name}-${var.environment}-${var.aws_region}"

  tags = merge(
    var.tags,
    {
      Name        = var.name
      Environment = var.environment
    }
  )
}
