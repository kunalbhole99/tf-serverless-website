## Terraform Project includes following use-cases:

`` version-1: website host in publicly hosted s3 bucket``

`` version-2: website host in privately hosted s3 bucket and access through cloudfront``



![h0ncxz1lcbquzj3ndsjq](https://github.com/kunalbhole99/tf-serverless-website/assets/113830783/d007f12c-c510-4725-a7c2-30a00155785e)



``version-3: website hosting using S3, Cloudfront, ACM certificate, Route53 ``

* Create s3 bucket
* Add S3 bucket policy to allow cloudfront
* Add code files into s3 bucket
* Create route53 zone
* Add Name servers in domain registrar
* Create ACM certificate in "us-east-1" region
* Create cloudfront distribution
* Add cname records and A records in hosted zone

![S3-web-hosting-with-CDN-Route53](https://github.com/kunalbhole99/tf-serverless-website/assets/113830783/da0a3f73-d6fd-4d82-8d8d-f7b2af82af15)
