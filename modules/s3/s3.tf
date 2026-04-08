resource "aws_s3_bucket_public_access_block" "bucket_public_access_block" {
  for_each = var.buckets

  bucket = aws_s3_bucket.s3_backend[each.key].id

  block_public_acls       = each.key == "site" ? false : true
  block_public_policy     = each.key == "site" ? false : true
  restrict_public_buckets = each.key == "site" ? false : true
  ignore_public_acls      = each.key == "site" ? false : true
}

resource "aws_s3_bucket_policy" "public_read" {
  bucket = aws_s3_bucket.s3_backend["site"].id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid       = "PublicReadGetObject"
        Effect    = "Allow"
        Principal = "*"
        Action    = "s3:GetObject"
        Resource  = "arn:aws:s3:::${aws_s3_bucket.s3_backend["site"].id}/*"
      }
    ]
  })
}

resource "aws_s3_bucket_website_configuration" "website" {
  bucket = aws_s3_bucket.s3_backend["site"].id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }
}