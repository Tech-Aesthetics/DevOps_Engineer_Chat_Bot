variable "vpc_cidr_block" {
    description = "CIDR for the environment VPC"
    type = string
    default = "10.0.0.0/16"
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