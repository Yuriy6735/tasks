provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region = "${var.region}"

}

terraform {
  backend "s3" {
    encrypt = true
    bucket = "tfss-s3-state"
    region = "us-west-2"
    key = "sstf.state"
  }
}

resource "aws_instance" "example1" {
  ami = "ami-01e24be29428c15b2"
  instance_type = "t2.micro"

  tags {
    Name = "super puper instance"
  }
}

resource "aws_instance" "example2" {
  ami = "ami-01e24be29428c15b2"
  instance_type = "t2.micro"

  tags {
    Name = "super puper2 instance"
  }
}

