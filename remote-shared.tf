// service/remote-shared.tf
data "terraform_remote_state" "shared" {
 backend = "s3"

 config {
   bucket = "ttg-tf-test-bucket"
   key    = "dev/terraform.tfstate"
   region = "us-west-2"
 }
}