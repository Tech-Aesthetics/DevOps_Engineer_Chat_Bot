variable "nginx_sg" {
    description = "Security group"
    type = string
    default = "sg-099f7eca4bffae9e8"
}

variable "public_subnet_a" {
    description = "subnets for VPC"
    type = string
    default = "subnet-0b2f260dd160ff078"
}

variable "public_subnet_b" {
    description = "subnets for VPC"
    type = string
    default = "subnet-0e2ba44a30994f24a"
}

variable "vpc_id" {
    description = "Environment vpc identifier"
    type = string
    default = "vpc-069fd578ff252b80b"
}

variable "instance_id" {
    description = "EC2 instance identifier"
    type = string
    default = "i-09b3872d5df5fe4e7"
}