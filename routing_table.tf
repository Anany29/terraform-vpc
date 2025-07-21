resource "aws_route_table" "ams_rounting_table" {
  vpc_id = aws_vpc.ams_world.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ams-gw.id
  }

  tags = {
    Name = "ams rounting table for internet"
  }
}