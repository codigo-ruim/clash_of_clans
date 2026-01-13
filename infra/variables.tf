variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "function_name" {
  type    = string
  default = "my-python-lambda"
}

variable "runtime" {
  type    = string
  default = "python3.14"
}

variable "handler" {
  type    = string
  default = "lambda_function.lambda_handler"
}