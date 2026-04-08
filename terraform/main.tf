provider "aws" {
  region = "us-east-1"
}

module "s3" {
  source = "../modules/s3"

  buckets = {
    site = var.bucket_name
    logs = var.logs_bucket_name
  }

  tags = var.tags
}

