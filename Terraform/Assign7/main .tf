terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
  access_key= "AKIA4Y5SS2MX3WOWTZ76"
  secret_key= "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"
}

resource "random_id" "tf_bucket_id" {
 byte_length = 2
 count= var.number_of_instances
}
 resource "aws_s3_bucket" "tf_code" {
    bucket = "${var.project_name}-${random_id.tf_bucket_id[count.index].dec}"
    acl= "private"
    force_destroy= true
    tags = {
       Name= "tf_bucket-${count.index +1}"
    }
    count= var.number_of_instances
}

