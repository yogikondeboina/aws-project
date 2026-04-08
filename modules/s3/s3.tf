resource "aws_s3_bucket" "s3_backend" {
  for_each = var.buckets

  bucket = each.value
  tags   = merge(var.tags, {
    Name = each.key
  })
}

# Block public access (best practice)
resource "aws_s3_bucket_public_access_block" "bucket_public_access_block" {
  for_each = var.buckets

  bucket = aws_s3_bucket.s3_backend[each.key].id

  block_public_acls       = true
  block_public_policy     = true
  restrict_public_buckets = true
  ignore_public_acls      = true
}