# CALIFORNIA TARGET GROUPS for LOAD BALANCER
resource "aws_lb_target_group" "nc_lb_tg80" {
  name     = "nc-lb-tg80"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.NC_VPC.id
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "nc-LB-TargetGroup"
    Service = "LoadBalancer"
    Owner   = "Him"
    Project = "Sowf"
  }
}


resource "aws_lb_target_group" "nc_lb_tg443" {
  name     = "nc-tg443"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.NC_VPC.id
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "nc-lb-TargetGroup443"
    Service = "LoadBalancer"
    Owner   = "Him"
    Project = "Sowf"
  }
}
