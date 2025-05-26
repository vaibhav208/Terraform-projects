output "aws-instance-public-ip" {
  value = aws_instance.myserver.public_ip
}