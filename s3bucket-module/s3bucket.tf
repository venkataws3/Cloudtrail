resource "aws_s3_bucket" "tsys_bucket" {
  bucket= "${var.s3_bucket_name}"
  acl="${var.s{3_bucket_acl}"
  versioning = {
    enabled="${var.versioning}"
  }
  logging = {
    target_bucket="${var.log_destination_bucket}"
  }
  tags ={
    owner ="blue Team"
  }
}

output "bucket_id" {
  value="${aws_s3_bucket.tsys_bucket.id}"
}
