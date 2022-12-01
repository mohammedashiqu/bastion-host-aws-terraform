resource "aws_instance" "pubec2" {
  ami = "ami-0beaa649c482330f7"
  subnet_id = aws_subnet.pub-sub.id
  instance_type = "t2.micro"
  key_name = "keyohio"
  user_data = file("shell.sh")
  security_groups = [aws_security_group.sg.id]
  tags = {
    Name = "Terraform-pub-ec2"
  }
}
resource "aws_instance" "pvtec2" {
  ami = "ami-0beaa649c482330f7"
  subnet_id = aws_subnet.pvt-sub.id
  instance_type = "t2.micro"
  key_name = "keyohio"
  security_groups = [aws_security_group.sg.id]
  tags = {
    Name = "Terraform-pvt-ec2"
  }
}