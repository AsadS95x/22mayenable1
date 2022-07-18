provider "aws" {
    access_key = "AKIAW2JZQJALTXGWB476"
    secret_key = "XQzJt6WeKe2zI58+LXEB+Z4Vu0zj3VCh1KDELJHg"
    region = "eu-west-2"
}

resource "aws_instance" "Terra_example" {
    ami = "ami-0fb391cce7a602d1f"
    instance_type = "t2.micro"
}