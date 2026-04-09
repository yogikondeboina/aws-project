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


module "lambda" {
  source = "../modules/lambda"

  function_name = "s3-data-processor"
  iam_role_arn  = var.lambda_role_arn

  handler = "app.lambda_handler"
  runtime = "python3.10"

  filename = "lambda-code/lambda.zip"

environment_variables = {
  INPUT_BUCKET  = var.input_bucket_name
  OUTPUT_BUCKET = var.output_bucket_name
}

    tags = var.tags
}