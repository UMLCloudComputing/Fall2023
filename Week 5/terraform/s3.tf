resource "aws_s3_bucket" "c3_s3_demo" {
  lifecycle {
    ignore_changes = [force_destroy]
  }

  bucket        = "c3-s3-demo"
  force_destroy = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "c3_s3_demo" {
  bucket = aws_s3_bucket.c3_s3_demo.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_versioning" "c3_s3_demo" {
  bucket = aws_s3_bucket.c3_s3_demo.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_public_access_block" "c3_s3_demo" {
  bucket = aws_s3_bucket.c3_s3_demo.id

  block_public_acls       = true
  block_public_policy     = var.website ? false : true
  ignore_public_acls      = true
  restrict_public_buckets = var.website ? false : true
}

resource "aws_s3_bucket_policy" "c3_s3_demo" {
  count = var.website_policy ? 1 : 0

  bucket = aws_s3_bucket.c3_s3_demo.id
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid       = "PublicReadGetObject"
        Effect    = "Allow"
        Principal = "*"
        Action    = "s3:GetObject"
        Resource  = "${aws_s3_bucket.c3_s3_demo.arn}/*"
      }
    ]
  })
}


resource "aws_s3_bucket_lifecycle_configuration" "expiration_policy" {
  bucket = aws_s3_bucket.c3_s3_demo.id

  rule {
    id     = "Expire Old Objects"
    status = "Enabled"

    noncurrent_version_expiration {
      newer_noncurrent_versions = 1
      noncurrent_days           = 1
    }
  }
}

resource "aws_s3_bucket_website_configuration" "website" {
  bucket = aws_s3_bucket.c3_s3_demo.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }
}

resource "aws_s3_object" "object" {
  for_each = var.website ? fileset("s3_src", "*") : []

  bucket       = aws_s3_bucket.c3_s3_demo.id
  key          = each.value
  source       = "s3_src/${each.value}"
  content_type = "text/html"
  etag         = filemd5("s3_src/${each.value}")
}