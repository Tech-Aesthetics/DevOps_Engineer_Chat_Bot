resource "aws_instance" "ec2_instance_a" {
    ami           = "ami-02cad064a29d4550c"
    instance_type = "t2.micro"
    key_name      = aws_key_pair.access_key_pair.key_name
    subnet_id     = "subnet-0e2ba44a30994f24a"
    associate_public_ip_address = true
    availability_zone = var.availability_zone_1a
    vpc_security_group_ids = [aws_security_group.allow_traffic.id]
}

resource "aws_instance" "ec2_instance_b" {
    ami           = "ami-02cad064a29d4550c"
    instance_type = "t2.micro"
    key_name      = aws_key_pair.access_key_pair.key_name
    subnet_id     = "subnet-0b2f260dd160ff078"
    associate_public_ip_address = true
    availability_zone = var.availability_zone_1b
    vpc_security_group_ids = [aws_security_group.allow_traffic.id]
}

resource "aws_key_pair" "access_key_pair" {
    key_name   = "ec2-access-key"
    public_key = base64decode("c0VFhUeEZXUFU2NW9mb2s0SnFLMndqRDhJcEN6L3hyOEVvV2dGZjJ0VzZRcENvRXlOaTlDNzJmeUh5ZEhnZU5tV0ZuRzhlcDZaMHRJZHdmMEgrVVREWWJQc1hWVXcyNXlIQnltY0Fta2FxK0pqbFJveGRiemJGckhzMXQgY3AzNzA5NzVAS2h3ZWxpc2lsZXMtTWFjQm9vay1Qcm8ubG9jYWwK")
}

resource "aws_security_group" "allow_traffic" {
    name        = "allow_traffic"
    description = "Allow RDP and SSH"
    vpc_id      = var.vpc_id

    ingress {
        from_port = 0
        to_port   = 0
        protocol  = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}