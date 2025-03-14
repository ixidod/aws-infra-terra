# small comment for branch to trigger full build
# small agin to test this shit out 
terraform {
  required_version = "~> 1.8"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "micro_instance" {

  ami           = var.ami_id
  instance_type = "t3.micro"

  tags = {
    Name       = "terraform micro instance"
    Enviroment = "dev"
  }

}
