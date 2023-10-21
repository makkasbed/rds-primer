resource "aws_security_group" "ec2_rds" {
  name        = "EC2 for RDS"
  description = "SSH access to EC2 for RDSProject"
  vpc_id      = aws_vpc.rds_primer.id

  ingress {
    description = "SSH access to EC2 for RDSProject"
    from_port   = 22
    to_port     = 22
    protocol    = "ssh"
    cidr_blocks = [aws_vpc.rds_primer.cidr_block]
  }
}

resource "aws_security_group" "rds_db" {
  name        = "RDS DB Access"
  description = "Access from EC2"
  vpc_id      = aws_vpc.rds_primer.id

  ingress {
    description = "SSH Access from EC2"
    from_port   = 0
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = [aws_vpc.rds_primer.cidr_block]
  }
}