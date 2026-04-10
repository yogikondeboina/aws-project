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

  function_name = var.function_name
  iam_role_arn  = var.lambda_role_arn

  handler       = "app.lambda_handler"
  runtime       = "python3.10"

  filename      = "lambda-code/lambda.zip"
  dlq_arn       = module.sqs_dlq.sqs_arn

environment_variables = {
  INPUT_BUCKET  = var.input_bucket_name
  OUTPUT_BUCKET = var.output_bucket_name
}

    tags = var.tags
}

resource "aws_lambda_permission" "allow_s3" {
  statement_id  = "AllowS3Invoke"
  action        = "lambda:InvokeFunction"
  function_name = module.lambda.lambda_function_name
  principal     = "s3.amazonaws.com"
  source_arn    = module.input_bucket.bucket_arn
}

resource "aws_s3_bucket_notification" "bucket_notification" {
  bucket = module.input_bucket.bucket_id

  lambda_function {
    lambda_function_arn = module.lambda.lambda_arn 
    events              = ["s3:ObjectCreated:*"]
  }

  depends_on = [aws_lambda_permission.allow_s3]
}

module "sqs_dlq" {
  source       = "../modules/sqs"
  queue_name   = var.queue_name
  tags         = var.tags
}