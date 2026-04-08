output "bucket_ids" {
  description = "Map of bucket names"
  value = {
    for key, bucket in aws_s3_bucket.s3_backend :
    key => bucket.id
  }
}

output "bucket_domain_names" {
  description = "Map of bucket domain names"
  value = {
    for key, bucket in aws_s3_bucket.s3_backend :
    key => bucket.bucket_domain_name
  }
}