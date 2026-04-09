
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