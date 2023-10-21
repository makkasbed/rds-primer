resource "aws_db_subnet_group" "db_subnet" {
  
  subnet_ids                  = aws_subnet.private[*].id
}

resource "aws_db_instance" "db" {
  count                = length(aws_subnet.private)
  db_name              = "RDS-Primer"
  instance_class       = "t3.micro"
  db_subnet_group_name = aws_db_subnet_group.db_subnet.name
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "5.7"
  username             = "foo"
  password             = "foobarbaz"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  security_group_names = [aws_security_group.rds_db.name]
}

