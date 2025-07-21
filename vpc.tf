resource "aws_vpc" "ams_world" {
  cidr_block = var.CDIR
  enable_dns_support = true
  enable_dns_hostnames = true
	tags = {
            Name = "main"
       }
}