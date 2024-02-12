###########Creating Security Group
########################################

resource "aws_security_group" "sg1" {
vpc_id = var.vpc_id

dynamic "ingress" {
    for_each = var.ports
    content {
    from_port        = ingress.value
    to_port          = ingress.value
    protocol         = "tcp"
    cidr_blocks      = [var.sg-cidr]
  }
}

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = var.sg-tags
}
############# Output of sg_id to attach vpc_security-group_ids
#################################################################
output "sg-id-forec2" {
  value = aws_security_group.sg1.id
}