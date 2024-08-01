provider "aws" {
 region="ap-south-1"
}

resource "aws_instance" "Web" {
 count=1
 ami=""
 instance_type="t2.micro"
}
