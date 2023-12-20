variable "subnet_cidr_block" {
    description = "CIDR for the environment public subnet"
    type = list(string)
    default = ["10.0.0.0/28", "10.0.1.0/28"]
}

variable "availability_zone" {
    description = "Avalible zone for the subnets"
    type = list(string)
    default = ["eu-west-1a", "eu-west-1b"]
}

variable "vpc_id" {
    description = "Environment vpc identifier"
    type = string
    default = "vpc-069fd578ff252b80b"
}