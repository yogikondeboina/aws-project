output "bucket_ids" {
  value = {
    for k, v in aws_s3_bucket.s3_backend : k => v.id
  }
}