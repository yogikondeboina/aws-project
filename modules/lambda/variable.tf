variable "function_name" {}
variable "iam_role_arn" {}
variable "handler" {}
variable "runtime" {}
variable "filename" {}
variable "timeout" {
  default = 10
}

variable "environment_variables" {
  type    = map(string)
  default = {}
}

variable "tags" {
  description = "Common tags"
  type        = map(string)
}

variable "dlq_arn" {
  description = "SQS DLQ ARN"
  type        = string
}

variable "lambda_role_name" {
  type = string
}
