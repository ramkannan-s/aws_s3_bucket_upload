# Configure the AWS Provider
provider "aws" {
  access_key = "AKIAIJXKEOUG65DAOASQ"
  secret_key = "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"
  region     = "us-west-2"
}

/*--------------------------------------------------
 * S3 Buckets
 *-------------------------------------------------*/

resource "aws_s3_bucket" "create_buckets" {
  count         = length(var.s3_bucket_names)
  bucket        = var.s3_bucket_names[count.index]
  acl           = "private"
#  region        = "us-west-2"
  force_destroy = true
}