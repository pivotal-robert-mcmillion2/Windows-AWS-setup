terraform {
  required_version = "0.14.7"
}

provider "aws" {
  region  = "${var.aws_region}"
  profile = "default"
}

resource "aws_key_pair" "RMQ-VM-key" {
  key_name   = "RMQ-key"
  public_key = file("RMQ-key.pub")
}

resource "aws_instance" "win-node1" {
    ami               = "${lookup(var.aws_amis, var.aws_region)}"
    instance_type     = "${var.instance_type}"
    key_name          = "RMQ-key"
    associate_public_ip_address = true
    vpc_security_group_ids = ["${aws_security_group.win-rabbitsg.id}"]
    tags = {
        Name  = "win-rabbit-node1"
      }
    get_password_data = true
    
}

resource "aws_instance" "win-node2" {
    ami               = "${lookup(var.aws_amis, var.aws_region)}"
    instance_type     = "${var.instance_type}"
    key_name          = "RMQ-key"
    associate_public_ip_address = true
    vpc_security_group_ids = ["${aws_security_group.win-rabbitsg.id}"]
    tags = {
        Name  = "win-rabbit-node2"
      }
    get_password_data = true
}
resource "aws_instance" "win-node3" {
    ami               = "${lookup(var.aws_amis, var.aws_region)}"
    instance_type     = "${var.instance_type}"
    key_name          = "RMQ-key"
    associate_public_ip_address = true
    vpc_security_group_ids = ["${aws_security_group.win-rabbitsg.id}"]
    tags = {
        Name  = "win-rabbit-node3"
      }
    get_password_data = true
}
