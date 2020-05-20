provider "aws" {
  region = "us-east-2"
}

module "ecs" {
  source = "./modules/ecs"

  environment          = var.environment
  cluster              = var.environment
  cloudwatch_prefix    = var.environment #See ecs_instances module when to set this and when not!
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  availability_zones   = var.availability_zones
  max_size             = var.max_size
  min_size             = var.min_size
  desired_capacity     = var.desired_capacity
  key_name             = aws_key_pair.ecs.key_name
  instance_type        = var.instance_type
  ecs_aws_ami          = var.ecs_aws_ami
}

resource "aws_key_pair" "ecs" {
  key_name   = "ecs-key-${var.environment}"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDZXjJ1+l1GmiPQ4SicpLa6kBuMZB7EgNnrTPNsaGVklfod17zY/K9Z8qXYlcxhSQ9lSCxcqozFGokjjZLWH1V9Wi2mGeD0XrSVLvHz2kVl9vrKIgOqnAEhOu6LO+gC64E+vjcvITW+4nJzElkBLfuWd4dnEUG6MDHdkPBZ/81lj+R5Tz7II4UAAeG/bkoD8g3dLtaI+mXO0Y8UxYe644cO9GREelVH4D5rcQdkW5zK3qq1Wcpr3tQfHOFhcGkpE/P5UqbbV8CcsWddonyI1tOdjc1yZ/5wbZAVgratq8BPbVklO9pjskCMYVjAOSpPo6QOvmDou2cWke5r4Qi8lVnH mike@ip-x-x-x-x"
}
