variable "aws_region" {
  description = "The AWS region to deploy to (e.g. us-east-1)"
  type        = string
}

variable "name" {
  description = "The name of the bucket"
  type        = string
}

variable "environment" {
  description = "The environment (e.g. dev, qa, prod)"
  type        = string
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
}
