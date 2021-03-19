### variable.tf
variable "aws_region" {
  description = "AWS region on which we will setup the rabbitmq cluster"
  default = "us-east-1"
}
variable "aws_amis" {
  description = "Windows AMI with chocolately installed"
  default = {
  us-east-1 = "ami-07f81362e258ce62e"
  }
}
variable "instance_type" {
  description = "Instance type"
  default = "t2.micro"
}
variable "key_name" {
  description = "Desired name of Keypair..."
  default = "Winodws-RMQ"
}