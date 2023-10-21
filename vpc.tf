resource "aws_vpc" "rds_primer" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.rds_primer.id
  cidr_block = var.public_subnets
  tags = {
    Name = var.public_subnet_names
  }
}

resource "aws_subnet" "private" {
  count  = length(var.private_subnets)
  vpc_id = aws_vpc.rds_primer.id

  cidr_block = element(var.private_subnets, count.index)

  tags = {
    Name = var.private_subnet_names[count.index]
  }
}