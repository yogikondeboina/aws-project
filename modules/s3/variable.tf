variable "bucket_name" {
  description = "Name of the S3 bucket"
}

variable "tags" {
  description = "Common tags"
  type        = map(string)
}


variable "environment_variables" {
  description = "Environment variables for Lambda"
  type        = map(string)
  default     = {}
}