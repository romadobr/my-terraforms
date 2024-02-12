####### Varibles for vpc-main.tf

variable "cidr-vpc" {
  type = string
}

variable "vpc-name-tag" {
  type = map(string)
}

variable "cidr-pubsub1a" {
  type = string
}

variable "cidr-pubsub2b" {
  type = string
}

variable "tag-sub1" {
  type = map(string)
}

variable "tag-sub2" {
  type = map(string)
}

variable "az1" {
  type = string
}

variable "az2" {
  type = string
}