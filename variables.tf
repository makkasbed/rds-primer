variable "region" {
  type    = string
  default = "us-east-1"
}

variable "vpc_cidr" {
  type    = string
  default = "10.30.0.0/16"
}

variable "vpc_name" {
  type    = string
  default = "Amazon RDS Project"
}

variable "private_subnets" {
  type    = list(any)
  default = ["10.30.101.0/24", "10.30.102.0/24"]
}
variable "public_subnets" {
  type    = string
  default = "10.30.201.0/24"
}
variable "private_subnet_names" {
  type    = list(any)
  default = ["RDS Project Private Subnet 01", "RDS Project Private Subnet 02"]
}

variable "public_subnet_names" {
  type    = string
  default = "RDS Project Public Subnet"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "ami_id" {
  type    = string
  default = "ami-0efce8b326230963a"
}