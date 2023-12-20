terraform {
    backend "s3" {
        bucket         = "demo-assessment-bucket-2023"
        key            = "alb"
        region         = "eu-west-1"
    }
}

provider "aws" {
    region = "eu-west-1"
}