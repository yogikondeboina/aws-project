provider "aws" {
  region = "us-east-1"
}


module "input_bucket" {
  source      = "../modules/s3"
  bucket_name = var.input_bucket_name
  tags        = var.tags
}

module "output_bucket" {
  source       = "../modules/s3"
  bucket_name  = var.output_bucket_name
  tags         = var.tags
}