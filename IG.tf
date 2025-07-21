resource "aws_internet_gateway" "ams-gw" {
  vpc_id =  aws_vpc.ams_world.id

  tags = {
    Name = "ams world ig tf"
  }
}