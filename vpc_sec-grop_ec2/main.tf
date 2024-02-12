################## Creting VPC from module
##################################################

module "vpc1" {
  source = "./vpc"
  cidr-vpc = "192.168.0.0/16"
  vpc-name-tag = {
    Name = "VPC1-task"
  }
  cidr-pubsub1a = "192.168.10.0/24"
  cidr-pubsub2b = "192.168.20.0/24"
  az1 = "us-east-1a"
  az2 = "us-east-1b"
  tag-sub1 = {
    Name = "pubsub1a"
  }
  tag-sub2 = {
    Name = "pubsub2b"
    
  }
}
######### Creting EC2 from module
########################################
module "ec2" {
  source = "./ec2"
  ami_for_ec2 = "ami-0cf10cdf9fcd62d37"
  instance_type = "t2.micro"
  sub1a-id = module.vpc1.sub1-id
  vpc_sg-ids = module.sec-group.sg-id-forec2
  ec2-tags = {
    Name = "New_ec2-pracice"
  }
}


################## Creating Security Group
##################################################

module "sec-group" {
  source = "./security_group"
  vpc_id = module.vpc1.vpc_id
  ports = [1, 2, 3, 4, 5]
  sg-cidr = "0.0.0.0/0"
  sg-tags = {
    Name = "SG-for-practice"
  }
}