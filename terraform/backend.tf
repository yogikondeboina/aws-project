terraform {
  backend "s3" {
    bucket         = "statefile-lab1"
    key            = "s3-frontend"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}