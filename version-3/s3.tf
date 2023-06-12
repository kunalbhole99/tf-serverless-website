############## S3 bucket for web hosting #################


resource "aws_s3_bucket" "website_bucket" {
  bucket = "my-public-bucket-for-website-456789876"
}

resource "aws_s3_account_public_access_block" "website_bucket" {
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}



resource "aws_s3_object" "website_bucket" {
  bucket       = aws_s3_bucket.website_bucket.id
  key          = "index.html"
  source       = "index.html"
  content_type = "text/html"
}


################## IAM data policy ######################


data "aws_iam_policy_document" "website_bucket" {
  statement {
    actions   = ["s3:GetObject"]
    resources = ["${aws_s3_bucket.website_bucket.arn}/*"]
    principals {
      type        = "Service"
      identifiers = ["cloudfront.amazonaws.com"]
    }
    condition {
      test     = "StringEquals"
      variable = "aws:SourceArn"
      values   = [aws_cloudfront_distribution.cdn_static_site.arn]
    }
  }
}


################### Attached policy to s3 bucket ###################

resource "aws_s3_bucket_policy" "website_bucket_policy" {
  bucket = aws_s3_bucket.website_bucket.id
  policy = data.aws_iam_policy_document.website_bucket.json
}