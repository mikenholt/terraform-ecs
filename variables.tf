variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "environment" {
  default = "acc"
}

variable "public_subnet_cidrs" {
  default = ["10.0.0.0/24", "10.0.1.0/24"]
}

variable "private_subnet_cidrs" {
  default = ["10.0.50.0/24", "10.0.51.0/24"]
}

variable "availability_zones" {
  default = ["us-east-2a", "us-east-2b", "us-east-2c"]
}

variable "max_size" {
  default = 6
}

variable "min_size" {
  default = 0
}

variable "desired_capacity" {
  default = 0
}

variable "instance_type" {
  default = "m5a.xlarge"
}

variable "ecs_aws_ami" {
  default = "ami-0d9ef3d936a8fa1c6"
}

