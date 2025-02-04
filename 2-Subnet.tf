# SUBNETS and ROUTE TABLES

#####################################################################################################
# NC SUBNETS and ROUTE TABLES

resource "aws_subnet" "NC_SUBNET" {
  vpc_id     = aws_vpc.NC_VPC.id
  cidr_block = "10.246.0.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "NC_SUBNET"
    Service = "application1"
    Owner   = "Him"
    Planet  = "Sowf"
  }
}


resource "aws_subnet" "nc-public-us-east-1a" {     
  vpc_id                  = aws_vpc.NC_VPC.id
  cidr_block              = "10.246.1.0/24"
  availability_zone       = "us-east-1a"
  #map_public_ip_on_launch = true

  tags = {
    Name    = "nc-public-us-east-1a"
    Service = "application1"
    Owner   = "Him"
    Planet  = "Sowf"
  }
}


resource "aws_subnet" "nc-public-us-east-1b" {    
  vpc_id                  = aws_vpc.NC_VPC.id
  cidr_block              = "10.246.2.0/24"
  availability_zone       = "us-east-1b"
  #map_public_ip_on_launch = true

  tags = {
    Name    = "nc-public-us-east-1b"
    Service = "application1"
    Owner   = "Him"
    Planet  = "Sowf"
  }
}


#these are for private
resource "aws_subnet" "nc-private-us-east-1a" {  
  vpc_id            = aws_vpc.NC_VPC.id
  cidr_block        = "10.246.11.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name    = "nc-private-us-east-1a"
    Service = "application1"
    Owner   = "Him"
    Planet  = "Sowf"
  }
}


resource "aws_subnet" "nc-private-us-east-1b" {  
  vpc_id            = aws_vpc.NC_VPC.id
  cidr_block        = "10.246.12.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name    = "nc-private-us-east-1b"
    Service = "application1"
    Owner   = "Him"
    Planet  = "Sowf"
  }
}


resource "aws_internet_gateway" "NC_IGW" {     # Internet Gateway ID: aws_internet_gateway.CA_IGW.id
  vpc_id     = aws_vpc.NC_VPC.id

  tags = {
    Name = "NC_IGW"
  }
}


/*

# NC Route Table
resource "aws_route_table" "NC_route_table" {   # Route Table ID: aws_route_table.NC_route_table.
  vpc_id = aws_vpc.Nc_VPC.id

  route {
    cidr_block = "10.246.1.0/24" # Route to TOKYO_VPC
    transit_gateway_id = aws_ec2_transit_gateway.nc-tgw.id
    }

  tags = {
    Name = "NC_ROUTE"
  }
}

*/