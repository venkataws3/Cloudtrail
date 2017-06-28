module "s3_bucket_for_cloudtrail" {
  source = "../s3bucket-module"
  s3_bucket_name="${var.s3_bucket_name}"
  s3_aws_region="${var.s3_aws_region}"
  versioning=true
}


resource "aws_cloudtrail" "prototype_ct" {
  name ="${var.aws_cloudtrail_name}"
  s3_bucket_name="${module.s3_bucket_for_cloudtrail.bucket_id}"
   include_global_service_event="${var.including_global_services}"
   is_multi_region_trail="${var.multi_region}"
   enable_log_file_validation="${var.log_file_validation}"
}

resource "aws_s3_bucket_policy" "tsys_bucket_policy_for_cloudtrail" {
    bucket= "${module.s3_bucket_for_cloudtrail.bucket_id}"
    policy = <<POLICY
    {

    }
}
