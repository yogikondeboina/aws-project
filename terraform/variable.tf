
variable "input_bucket_name" {
  type = string
}
variable "output_bucket_name" {
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

variable "environment_variables" {
  description = "Environment variables for Lambda"
  type        = map(string)
  default     = {}
}

variable "queue_name" {
  type = string
}

variable "function_name" {
  type = string
}

variable "lambda_role_name" {
  type = string
}