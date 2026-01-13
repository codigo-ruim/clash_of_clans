variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "function_name" {
  type    = string
  default = "lambda-clash-of-clans"
}

variable "runtime" {
  type    = string
  default = "python3.13"
}

variable "handler" {
  type    = string
  default = "lambda_function.lambda_handler"
}