terraform {
    required_providers {
        aws= {
            source= "hashicorp/aws"
            version= "~> 4.0"
        }
    }
}

// configuring the AWS provider
provider "aws" {
    region= "us-east-2"

    access_key= var.TF_VAR_AWS_ACCESS_KEY_ID
    secret_key= var.TF_VAR_AWS_SECRET_ACCESS_KEY
}