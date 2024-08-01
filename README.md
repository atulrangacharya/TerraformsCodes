# Multi-Region Resource creation block in terraform
# For this we need to write multiple provider block with alias name as region name

provider "aws" {
alias="ap-south-1"
region="ap-south-1"
}
provider "aws" {
alias="ap-southeast-1"
region="ap-southeast-1"
}

resource "aws_instance" "Web_Dev" {
ami=""
instance_type="t2.micro"
provider=aws.ap-south-1
}

resource "aws_instance" "Db_Dev" {
ami=""
instance_type="t2.small"
provider=aws.ap-southeast-1
}
