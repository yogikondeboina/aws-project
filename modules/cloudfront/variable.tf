variable "bucket_name" {
  description = "S3 bucket name"
  type        = string
}

variable "bucket_domain_name" {
  description = "S3 bucket domain name"
  type        = string
}

variable "logs_bucket_domain_name" {
  description = "Logs bucket domain name"
  type        = string
}

variable "tags" {
  description = "Common tags"
  type        = map(string)
}