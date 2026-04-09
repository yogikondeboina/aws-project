input_bucket_name = "cricket-live-site-dev"
output_bucket_name = "cricket-live-site-dev-logs"

tags = {
  Project     = "static-site"
  Environment = "dev"
}

lambda_role_arn   = "arn:aws:iam::596122389379:role/lambda-s3-processing-role"
