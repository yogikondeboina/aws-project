terraform {
  backend "s3" {
    bucket         = "statefile-lab1"
    key            = "s3-frontendlab1"
    region         = "us-east-1"
    encrypt        = true
  }
}