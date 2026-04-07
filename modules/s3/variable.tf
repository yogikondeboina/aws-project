variable "bucket_name" {
  description = "S3 bucket name"
  type        = string
}

variable "tags" {
  description = "Common tags"
  type        = map(string)
}
