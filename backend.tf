terraform {
  backend "s3" {
    bucket = "ttg-tf-test-bucket"
    dynamodb_table = "terraform-state-lock-dev"
    key    = "test-terraform.tfstate"
    region =  "us-west-2"
  }
}