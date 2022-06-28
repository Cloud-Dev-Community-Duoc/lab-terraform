variable "aws_session_token" {
    description = "Temporary session token used to create instances"
}

variable "aws_region" {
    description = "Region defined to use create instance"
}

variable "aws_secret_key" {
    description = "Secret key To use create instance"
}

variable "aws_access_key" {
    description = "Access key to use create instances"
}

variable "quantity" {
    description = "quantity amoun vms to deploy"
}

variable "ami" {
    description = "Imageto deploy"
}

variable "type" {
    description = "type vm hardware to deploy"
}

variable "key" {
    description = "key to use connect and associate to vm"
}
