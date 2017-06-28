variable "s3_bucket_name" {}
variable "s3_bucket_acl" {
  type="string"
  default="private"
}
variable "versioning" {
  default = "false"
}
variable "s3_logging" {
    type="string"
  default = "default"
}
variable "log_destination_bucket" {
  type="string"
}
variable "s3_aws_region" {
  type="string"
}
