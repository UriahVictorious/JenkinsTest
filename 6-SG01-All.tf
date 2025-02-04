#Target Group for Port 80 app

#California Security Group
resource "aws_security_group" "ec2-nc-sg80" {
  provider = aws.virginia
  vpc_id = aws_vpc.NC_VPC.id 
  /*
  tags = {
    Name = "cali-sg"
  } 
  */

  # Allow HTTP access from anywhere for testing (consider restricting later)
  ingress {
    description = "MyHomePage"
    from_port = 80
    to_port   = 80
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  } 


  # Allow all outbound traffic for simplicity (consider restricting later)
  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  tags = {
    Name    = "ec2-nc-sg80"
    # Name: "${var.env_prefix}-sg-80"
    Service = "web-application"
    Owner   = "Him"
    Planet  = "Sowf"
  }
}


# CALIFORNIA Port 443 Security Group for Load Balancer 443 - add ingress for 443
resource "aws_security_group" "nc-LB01-sg443" {
  provider         = aws.virginia
  name        = "nc_LB01-SG01-443"
  description = "ec2-nc-sg443"
  vpc_id      = aws_vpc.NC_VPC.id

  ingress {
    description = "MyHomePage"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Secure"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "ec2-nc-sg443"
    Service = "application1"
    Owner   = "Him"
    Planet  = "Sowf"
  }

}



# CALIFORNIA Port 443 Security Group for Syslog Server 443 - add ingress for 443
resource "aws_security_group" "nc_SL01-SG01-443" {
  provider         = aws.virginia
  name        = "nc_SL01-SG01-443"
  description = "nc_SL01-SG01-443"
  vpc_id      = aws_vpc.NC_VPC.id

  ingress {
    description = "MyHomePage"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Secure"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "nc_SL01-SG01-443"
    Service = "application1"
    Owner   = "Him"
    Planet  = "Sowf"
  }

}
