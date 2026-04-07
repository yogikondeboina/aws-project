variable "bucket_name" {
  description = "S3 bucket name for static site"
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
  type = map(string)
}