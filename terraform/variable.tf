variable "bucket_name" {
  description = "S3 bucket name"
  type        = string
}

variable "logs_bucket_name" {
  description = "S3 bucket name"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "tags" {
  description = "Common tags"
  type        = map(string)
}