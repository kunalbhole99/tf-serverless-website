# s3 bucket outputs:

output "s3-DNS" {
  value = aws_s3_bucket.website_bucket.website_endpoint
}


output "cloudfront_url" {
  value = aws_cloudfront_distribution.cdn_static_site.domain_name
}