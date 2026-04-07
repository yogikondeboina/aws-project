# terraform {
#   backend "s3" {
#     bucket         = "terraform-state-bucket-12345"
#     key            = "s3-static-site/terraform.tfstate"
#     region         = "us-east-1"
#     dynamodb_table = "terraform-lock"
#     encrypt        = true
#   }
# }