resource "aws_vpc" "first_vpc" {
    cidr_block = var.vpc_cidr_block
}

resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.first_vpc.id
}

resource "aws_route_table" "public_route_table" {
    vpc_id = aws_vpc.first_vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.igw.id
    }
}

resource "aws_route_table_association" "public_subnet_association_a" {
    subnet_id      = var.public_subnet_a
    route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "public_subnet_association_b" {
    subnet_id      = var.public_subnet_b
    route_table_id = aws_route_table.public_route_table.id
}