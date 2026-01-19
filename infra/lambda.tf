resource "aws_lambda_function" "function" {
  function_name    = var.function_name
  filename         = "deployment/package.zip"
  handler          = var.handler
  runtime          = var.runtime
  role             = aws_iam_role.lambda_role.arn
}
