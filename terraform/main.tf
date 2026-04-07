provider "aws" {
  region = "us-east-1"
}

module "s3_bucket" {
  source = "../modules/s3"

  bucket_name = var.bucket_name
  tags        = var.tags
}