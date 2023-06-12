################### s3 bucket outputs ####################

output "s3-DNS" {
  value = aws_s3_bucket.website_bucket.website_endpoint
}

output "name" {
  value = aws_s3_bucket.website_bucket.arn
}


output "bucket_regional_domain_name" {
  value = aws_s3_bucket.website_bucket.bucket_regional_domain_name
}

################## Cloudfront Outouts ###################

output "cloudfront_url" {
  value = aws_cloudfront_distribution.cdn_static_site.domain_name
}

################### Route53 Nameservers Records #####################

output "ns-records" {
  value = aws_route53_zone.zone.name_servers
}

output "A-record" {
  value = aws_route53_record.www.fqdn
}