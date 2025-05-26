output "instance_public_ip" {
  description = "The public IP of the EC2 instance"
  value = aws_instance.nginxserver.public_ip
}

output "instance_url" {
    value = "http://${aws_instance.nginxserver.public_ip}"
}