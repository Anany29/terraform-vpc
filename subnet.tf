resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.ams_world.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-south-1a"
  map_public_ip_on_launch = true 
  tags = {
    Name = "ams public subnet 1"
  }
}

resource "aws_subnet" "main-1b" {
  vpc_id     = aws_vpc.ams_world.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "ap-south-1b"
  map_public_ip_on_launch = true 
  tags = {
    Name = "ams public subnet 1b"
  }
}

resource "aws_subnet" "main-1c" {
  vpc_id     = aws_vpc.ams_world.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "ap-south-1c"
  map_public_ip_on_launch = true 
  tags = {
    Name = "ams public subnet 1c"
  }
}