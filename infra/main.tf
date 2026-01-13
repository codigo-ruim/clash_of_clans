provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_role" "lambda_exec_role" {
  name = "lambda-execution-role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Action = "sts:AssumeRole",
      Effect = "Allow",
      Principal = {
        Service = "lambda.amazonaws.com"
      },
    }]
  })
}

resource "aws_iam_role_policy_attachment" "lambda_policy" {
  role       = aws_iam_role.lambda_exec_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

resource "aws_lambda_function" "meu_lambda" {
  function_name = "clash-of-clans"
  role          = aws_iam_role.lambda_exec_role.arn
  handler       = "lambda_function.lambda_handler"
  runtime       = "python3.14"
  filename      = "lambda_function.zip"
  source_code_hash = data.aws_s3_bucket
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "terraform-state"
}

terraform {
  backend "s3" {
    bucket = "bucket-terraform-state-unico"
    key    = "lambda-project/terraform.tfstate"
    region = "us-east-1"
  }
}
