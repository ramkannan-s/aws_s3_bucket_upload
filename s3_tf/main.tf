# Configure the AWS Provider
provider "aws" {
  access_key = "AKIAIJXKEOUG65DAOASQ"
  secret_key = "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"
  region     = "us-west-2"
}

/*--------------------------------------------------
 * S3 Buckets
 *-------------------------------------------------*/

resource "aws_s3_bucket" "buckets_cleanup" {
    count         = length(var.s3_bucket_names)
    bucket        = var.s3_bucket_names[count.index]
    #bucket  = "${var.bucket_id}"
    #region        = "us-west-2"
    acl     = "private"
    force_destroy = true
    lifecycle_rule {
        id      = "clean-up-1-day"
        enabled = true

        expiration {
            days = 1
        }

        noncurrent_version_expiration {
            days = 1
        }
    }
}