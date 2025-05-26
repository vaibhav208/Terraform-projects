resource "aws_instance" "nginxserver" {
  ami = "ami-0e35ddab05955cf57"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.nginx-sg.id]
  associate_public_ip_address = true
  

  user_data = <<-EOF
            #!/bin/bash
            sudo yum install nginx -y
            sudo systemctl start nginx
                EOF

  tags = {
    Name = "NginxServer"
  }
}