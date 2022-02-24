terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
}

variable "bucket_name" {
  description = "The name of the bucket"
  default     = "-example"
}

resource "aws_s3_bucket" "terratest_bucket" {
  bucket = "terratest${var.bucket_name}"
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.terratest_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

output "bucket_id" {
  value = aws_s3_bucket.terratest_bucket.id
}

