resource "aws_s3_bucket" "s3_backend" {
  bucket = var.bucket_name

  tags        = var.tags
}

# Block public access (best practice)
resource "aws_s3_bucket_public_access_block" "bucket_public_access_block" {
  bucket = aws_s3_bucket.s3_backend.id

  block_public_acls       = true
  block_public_policy     = true
  restrict_public_buckets = true
  ignore_public_acls      = true
}