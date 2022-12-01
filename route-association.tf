resource "aws_route_table_association" "public-association" {
  route_table_id = aws_route_table.pub-route.id
  subnet_id = aws_subnet.pub-sub.id
}
resource "aws_route_table_association" "private-association" {
  route_table_id = aws_route_table.pvt-route.id
  subnet_id = aws_subnet.pvt-sub.id
}