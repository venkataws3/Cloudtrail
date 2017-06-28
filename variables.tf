variable "aws_cloudtrail_name" {
  type = "string"
  description = "cloud trail unique name"
}
variable "s3_bucket_name" {
  type = "string"
  description = "bucket name for cloudtrail logs"
}
variable "multi_region" {
  default =true
  description = "To find whether cloutrail supports multi region"
}
variable "log_file_validation" {
  default=true
  description = "log file validation"
}
variable "including_global_services" {
  default=true
  description = "including the logging of global servcies like IAM,Billing"
}
variable "s3_aws_region" {
  type="string"
}
