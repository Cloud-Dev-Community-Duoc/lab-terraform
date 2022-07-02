provider "aws" {
    access_key = var.aws_access_key
    secret_key = var.aws_secret_key
    token = var.aws_session_token
    region = var.aws_region
}

resource "aws_vpc" "WIP" {
  cidr_block = "10.1.0.0/16"
  tags = {
    name = "WIP"
  }
}

resource "aws_subnet" "WIP" {
  vpc_id = aws_vpc.WIP.id
  cidr_block = "10.1.10.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "WIP"
  }
}

resource "aws_network_interface" "WIP" {
  subnet_id = aws_subnet.WIP.id

  tags = {
    Name = "WIP_Interface"
  }
}

resource "aws_security_group" "WIP" {
  vpc_id = aws_vpc.WIP.id
  name = "WIP"

  ingress {
    protocol = "tcp"
    self = true
    from_port = 80
    to_port = 80
    cidr_blocks = ["0.0.0.0/0"]

  }

  ingress {
    protocol = "tcp"
    self = true
    from_port = 22
    to_port = 22
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Crear una instancia ec2 de nombre 'WIP'
resource "aws_instance" "WIP" {
	ami = "ami-0cff7528ff583bf9a" # Amazon Linux AMI (free tier)
	instance_type = "t2.micro"
    key_name = "vockey"
    network_interface {
        network_interface_id = aws_network_interface.WIP.id
        device_index = 0
    }
    tags = {
        Name = "WIP"
        }
}
