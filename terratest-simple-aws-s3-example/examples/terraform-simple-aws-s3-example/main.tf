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

output "bucket_id" {
  value = aws_s3_bucket.terratest_bucket.id
}

