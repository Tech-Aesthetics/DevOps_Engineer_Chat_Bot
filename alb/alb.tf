resource "aws_lb" "nginx_alb" {
    name               = "nginx-alb"
    internal           = false
    load_balancer_type = "application"
    
    security_groups    = [var.nginx_sg]
    subnets            = [var.public_subnet_a, var.public_subnet_b] 
}

resource "aws_lb_listener" "nginx_listener" {
    load_balancer_arn = aws_lb.nginx_alb.arn
    port              = "80"
    protocol          = "HTTP"

    default_action {
        target_group_arn = aws_lb_target_group.nginx_target_group.arn
        type             = "forward"
    }
}

resource "aws_lb_target_group" "nginx_target_group" {
    name        = "nginx-target-group"
    port        = 80
    protocol    = "HTTP"
    vpc_id      = var.vpc_id
    target_type = "instance"
}

resource "aws_lb_target_group_attachment" "alb_target_attachment" {
    target_group_arn = aws_lb_target_group.nginx_target_group.arn
    target_id        = var.instance_id
}