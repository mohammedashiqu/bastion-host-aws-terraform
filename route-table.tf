resource "aws_route_table" "pub-route" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = "pub-route"
  }
}
resource "aws_route_table" "pvt-route" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = "pvt-route"
  }
}