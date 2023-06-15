provider "aws" {
  region = "your-aws-region"
}

resource "aws_instance" "ec2_instance" {
  ami           = "your-ami-id"
  instance_type = "your-instance-type"

  tags = {
    Name = "your-instance-name"
  }
}
