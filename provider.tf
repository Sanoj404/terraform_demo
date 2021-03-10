#creating VPC and subnets with modules in hardcode way
provider "aws" {
  region  = "us-west-2"
}
resource "aws_vpc" "xeu" {    #VPC name XEU
  cidr_block  ="192.168.0.0/16"
  instance_tenancy  ="default"
  tags {
    Name = "xeu"
    Location  ="Bangalore"
  }
}
resource "aws_subnet" "subnet1" {
  vpc_id  ="${aws_vpc.xeu.id}"
  cidr_block  = "192.168.1.0/24"
  tags {
    Name =  "subnet1"
  }
}