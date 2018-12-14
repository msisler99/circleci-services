terraform {
  backend "s3" {
    bucket = "ttg-tf-test-bucket2"
    dynamodb_table = "terraform-state-lock-dev"
    key    = "CA-MMIS/terraform.tfstate"
    region = "us-west-2"
  }
}
