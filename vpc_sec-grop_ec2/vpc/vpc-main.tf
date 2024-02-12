###### Creat VPC 


resource "aws_vpc" "vpc-1" {
  cidr_block       = var.cidr-vpc
  

  tags = var.vpc-name-tag
}

###### Add 2 subnets to VPC "vpc-1" TagName VPC

resource "aws_subnet" "pub-sub1a" {
  vpc_id     = aws_vpc.vpc-1.id
  cidr_block = var.cidr-pubsub1a
  availability_zone = var.az1
  tags = var.tag-sub1
  
}

resource "aws_subnet" "pub-sub2b" {
  vpc_id     = aws_vpc.vpc-1.id
  cidr_block = var.cidr-pubsub2b
  availability_zone = var.az2
  tags = var.tag-sub2
}
############# Output of subnet 1a id to attach subnet
#################################################################
output "sub1-id" {
  value = aws_subnet.pub-sub1a.id
}

############# Output of vpc_id to attach vpc to security group
#################################################################
output "vpc_id" {
  value = aws_vpc.vpc-1.id
}
