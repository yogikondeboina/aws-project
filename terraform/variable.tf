
variable "input_bucket_name" {
  type = string
}
variable "output_bucket_name" {
  type = string
}

variable "environment" {
  default = "dev"
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "tags" {
  description = "Common tags"
  type        = map(string)
}