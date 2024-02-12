
variable "sg-cidr" {
  type = string
}

variable "sg-tags" {
  type = map(string)
}
variable "ports" {
  type = list(number)
}

variable "vpc_id" {
  type = string
}