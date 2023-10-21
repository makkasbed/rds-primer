resource "aws_instance" "server" {
  instance_type = var.instance_type
  ami           = var.ami_id
  subnet_id     = aws_subnet.public.id
}