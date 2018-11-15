provider "aws" {
  region     = "${var.aws_region}"
}
 
 resource "aws_instance" "Terraform" {
   ami            = "${var.AMI_Id}"
   instance_type  = "${var.EC2_instance_type}" 
   subnet_id      = "${data.terraform_remote_state.shared.private_subnet_ids.0}"
   
   tags { 
     Name = "Terraform" 
   } 
  } 
