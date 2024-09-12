# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  access_key = "AKIASUL3NMTR5TVXS45E"
  secret_key = "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"
  region = "us-east-1"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity_T2" {
  count = 4
  ami = "ami-0182f373e66f89c85"
  instance_type = "t2.micro"
  subnet_id = "subnet-086dc018baaaa4af8"
  tags = {
    Name = "Udacity T2"
  }
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "Udacity_M4" {
  count = 2
  ami = "ami-0182f373e66f89c85"
  instance_type = "m4.large"
  subnet_id = "subnet-086dc018baaaa4af8"
  tags = {
    Name = "Udacity M4"
  }
}