provider "aws" {
    region = "ap-south-1"
}

module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "2.0.0"
  # insert the 4 required variables here
  ami = "ami-0f1fb91a596abf28d"
  instance_type = "t2.micro"
  name = "myterraformserver"
  vpc_security_group_ids = ["sg-05a791d146988a86a"]
  subnet_id = "	subnet-077e03f59ce11e817"
}




