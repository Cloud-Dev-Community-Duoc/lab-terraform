provider "aws" {
    access_key = var.aws_access_key
    secret_key = var.aws_secret_key
    token = var.aws_session_token
    region = var.aws_region
}

resource "aws_instance" "LAB" {
	ami 			= var.ami # ubuntu AMI (free tier)
	instance_type 	= var.type
    key_name        = var.key
    count           = var.quantity
    tags = {
        Name = "LAB ${count.index}"
        }
}