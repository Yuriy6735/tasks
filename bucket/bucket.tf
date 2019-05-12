provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region = "${var.region}"

}
# terraform state file setup
# create an S3 bucket to store the state file in
resource "aws_s3_bucket" "tfss-s3-state" {
  bucket = "tfss-s3-state"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }

  tags {
    Name = "tfss-s3-state"
  }
}


