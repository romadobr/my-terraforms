resource "aws_instance" "myec2-1" {
  ami                     = var.ami_for_ec2
  instance_type           = var.instance_type
  key_name                = "linuxkey"
  associate_public_ip_address = true
  subnet_id = var.sub1a-id
  vpc_security_group_ids = [var.vpc_sg-ids]

  tags = var.ec2-tags
}