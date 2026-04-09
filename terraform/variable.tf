
variable "input_bucket_name" {
  type = string
}
variable "output_bucket_name" {
  type = string
}

variable "input_bucket_name" {
  type = string
}

variable "tags" {
  description = "Common tags"
  type        = map(string)
}

variable "region" {
  default = "ap-south-1"
}

variable "lambda_role_arn" {
  type = string
}