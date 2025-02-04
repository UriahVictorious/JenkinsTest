resource "aws_vpc" "NC_VPC" {              # VPC ID: aws_vpc.NC_VPC.id  
   cidr_block       = "10.246.0.0/16"
  
  tags = {
    Name = "NC_VPC"
    Service = "Jenkins"
    access = "Public"
    Owner = "UriahV"
    Planet = "Bootymeat"
    location = "Cackalack"
    zone = "XRP"
    availability_zone = "A"
  }
}
