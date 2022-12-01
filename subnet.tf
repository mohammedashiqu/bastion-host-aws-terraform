resource "aws_subnet" "pub-sub" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = "10.0.0.0/25"
  map_public_ip_on_launch = true
  availability_zone = "us-east-2a"
  tags = {
    Name = "public-Subnet-Terraform"
  }
}
resource "aws_subnet" "pvt-sub" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = "10.0.0.128/25"
  availability_zone = "us-east-2a"
  tags = {
    Name = "private-Subnet-Terraform"
  }
}