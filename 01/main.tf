provider "aws" {
    access_key = var.aws_access_key
    secret_key = var.aws_secret_key
    token = var.aws_session_token
    region = var.aws_region
}

# Crear una instancia ec2 de nombre 'Lab01'
resource "aws_instance" "LAB01" {
	ami 			= "ami-09d56f8956ab235b3" # ubuntu AMI (free tier)
	instance_type 	= "t2.micro"
    key_name        = "vockey"
    tags = {
        Name = "Lab01"
        }
}