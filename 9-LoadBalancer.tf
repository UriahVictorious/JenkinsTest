


##########################################################################################################################
# CALIFORNIA LOAD BALANCER

/*
resource "aws_lb" "ca_lb01" {  
  name               = "ca-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.cali-LB01-sg443.id]
  subnets            = [
    aws_subnet.cali-public-us-west-1a.id,
    aws_subnet.cali-public-us-west-1b.id
  ]
  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false

  tags = {
    Name    = "ca_LoadBalancer"
    Service = "LoadBalancer"
    Owner   = "User"
    Project = "Web Service"
  }
}

resource "aws_lb_listener" "ca-http" {  
  load_balancer_arn = aws_lb.ca_lb01.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.ca_lb_tg80.arn
  }
}

data "aws_acm_certificate" "cert-ca" {  
  domain   = "jastek.click"
  statuses = ["ISSUED"]
  most_recent = true
}


resource "aws_lb_listener" "ca-https" {  
  load_balancer_arn = aws_lb.ca_lb01.arn
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"  # or whichever policy suits your requirements
  certificate_arn   = data.aws_acm_certificate.cert-ca.arn


  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.ca_lb_tg443.arn
  }
}

output "ca-lb_dns_name" {
  value       = aws_lb.ca_lb01.dns_name
  description = "The DNS name of the California Load Balancer."
}
*/
