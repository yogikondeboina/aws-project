terraform {
  backend "s3" {
    bucket         = "statefile-lab1"
    key            = "lab1"
    region         = "us-east-1"
    encrypt        = true
  }
}