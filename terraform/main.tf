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

module "cloudfront" {
  source = "../modules/cloudfront"

  bucket_name              = module.s3.bucket_ids["site"]
  bucket_domain_name       = module.s3.bucket_domain_names["site"]
  logs_bucket_domain_name  = "${module.s3.bucket_ids["logs"]}.s3.amazonaws.com"

  tags = var.tags
}