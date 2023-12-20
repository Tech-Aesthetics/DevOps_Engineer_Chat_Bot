variable "availability_zone_1a" {
    description = "Avalible zone for the subnets"
    type = string
    default = "eu-west-1a"
}

variable "availability_zone_1b" {
    description = "Avalible zone for the subnets"
    type = string
    default = "eu-west-1b"
}

variable "vpc_id" {
    description = "Environment vpc identifier"
    type = string
    default = "vpc-069fd578ff252b80b"
}