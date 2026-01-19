resource "aws_lambda_function" "function" {
  function_name    = var.function_name
  filename         = var.package_file
  handler          = var.handler
  runtime          = var.runtime
  role             = aws_iam_role.lambda_role.arn
  source_code_hash = try(filebase64sha256(var.package_file), "")

  lifecycle {
    ignore_changes = [filename]
  }

}
