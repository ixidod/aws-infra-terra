variable "aws_region" {
  type        = string
  default     = "eu-west-1"
  description = "Aws region to deploy ec2 instance"
}

variable "ami_id" {
  type        = string
  description = "ami id for ec2 instance"
}
