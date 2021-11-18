# Do not change the order of these default values. it will force the build to destory and rebuid
variable "s3_bucket_names" {
  type = list
  default = ["qa-ramkannan-s-platform-challenge", "staging-ramkannan-s-platform-challenge"]
}