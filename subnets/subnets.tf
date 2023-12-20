resource "aws_subnet" "public_subnet_a" {
    vpc_id            = var.vpc_id
    cidr_block        = "10.0.1.0/24"
    availability_zone = "eu-west-1a"
    map_public_ip_on_launch = true
}

resource "aws_subnet" "public_subnet_b" {
    vpc_id            = var.vpc_id
    cidr_block        = "10.0.2.0/24"
    availability_zone = "eu-west-1b"
    map_public_ip_on_launch = true
}