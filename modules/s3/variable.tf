variable "buckets" {
  description = "Map of bucket names"
  type        = map(string)
}

variable "tags" {
  description = "Common tags"
  type        = map(string)
}
