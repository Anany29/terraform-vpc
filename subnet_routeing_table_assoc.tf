resource "aws_route_table_association" "RTA1a" {
  subnet_id      = aws_subnet.main.id
  route_table_id = aws_route_table.ams_rounting_table.id
}

resource "aws_route_table_association" "RTA1b" {
  subnet_id      = aws_subnet.main-1b.id
  route_table_id = aws_route_table.ams_rounting_table.id
}