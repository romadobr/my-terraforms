provider "aws" {
    region = "us-east-1"
}


###########Creating RDS instance


resource "aws_db_instance" "roma-db" {
  allocated_storage    = var.storage
  db_name              = var.Name
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  username             = var.username
  password             = var.password
  skip_final_snapshot  = var.skip_final_snapshot
}