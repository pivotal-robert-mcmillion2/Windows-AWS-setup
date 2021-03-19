### output.tf
output "node1_public_ip" {
    value = ["${aws_instance.win-node1.public_ip}"]
}

output "node1_password" {
    value = rsadecrypt(aws_instance.win-node1.password_data,file("rmq-key"))
}

output "node2_public_ip" {
    value = ["${aws_instance.win-node2.public_ip}"]
}

output "node2_password" {
    value = rsadecrypt(aws_instance.win-node2.password_data,file("rmq-key"))
}

output "node3_public_ip" {
    value = ["${aws_instance.win-node3.public_ip}"]
}

output "node3_password" {
    value = rsadecrypt(aws_instance.win-node3.password_data,file("rmq-key"))
}
