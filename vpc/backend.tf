terraform {
    backend "s3" {
        bucket         = "demo-assessment-bucket-2023"
        key            = "vpc"
        region         = "eu-west-1"
    }
}

provider "aws" {
    region = "eu-west-1"
}