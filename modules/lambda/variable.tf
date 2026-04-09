variable "function_name" {}
variable "iam_role_arn" {}
variable "handler" {}
variable "runtime" {}
variable "filename" {}
variable "timeout" {
  default = 10
}

variable "environment" {
  default = "dev"
}

variable "tags" {
  description = "Common tags"
  type        = map(string)
}