# s3 bucket outputs:

output "s3-DNS" {
  value = aws_s3_bucket.website_bucket.website_endpoint
}