variable "bucket_name" {
  description = "Name of the S3 bucket"
}

variable "tags" {
  description = "Common tags"
  type        = map(string)
}