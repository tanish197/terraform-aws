terraform{
    required_providers {
          aws =  {
             source = "hashicorp/aws"
             version = "~> 4.16"
}
}
required_version = ">= 1.2.0"
}

provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "my_ec2_instance" {
   count = 4
   ami = "ami-0f5ee92e2d63afc18"
   instance_type = "t2.micro"
   tags = {
      Name = "devops-tf-aws"
}
}

resource "aws_s3_bucket" "my_s3_bucket" {
      bucket = "tf-aws-s3-bucket"
      tags = {
        Name = "devops-s3-bucket"
	Environment = "Dev"
}      
}



output "ec2_details" {
  value = {
    public_ip    = aws_instance.my_ec2_instance[*].public_ip
    private_ip   = aws_instance.my_ec2_instance[*].private_ip
    public_dns   = aws_instance.my_ec2_instance[*].public_dns
  }
}

