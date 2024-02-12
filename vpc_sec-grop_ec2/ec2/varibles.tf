variable "ami_for_ec2" {
  type = string
}

variable "instance_type" {
    type = string
}

variable "ec2-tags" {
    type = map(string)
}

variable "sub1a-id" {
  type = string
}

variable "vpc_sg-ids" {
  type = string
}