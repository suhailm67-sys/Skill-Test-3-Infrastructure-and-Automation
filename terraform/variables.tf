variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "ecommerce-store"
}

variable "key_name" {
  description = "AWS EC2 key pair name"
  type        = string
}

variable "dockerhub_username" {
  description = "Docker Hub username"
  type        = string
}