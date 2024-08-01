# Multi-Region Resource creation block in terraform
# For this we need to write multiple provider block with alias name as region name

provider "aws" {
alias="abc"
region="ap-south-1"
}
provider "aws" {
alias="xyz"
region="ap-southeast-1"
}

resource "aws_instance" "Web_Dev" {
ami=""
instance_type="t2.micro"
provider=aws.abc
}

resource "aws_instance" "Db_Dev" {
ami=""
instance_type="t2.small"
provider=aws.xyz
}
