data "aws_caller_identity" "current" {}

data "aws_s3_bucket_object" "source-code" {
  key    = "" # O caminho completo (chave) do objeto dentro do bucket
  bucket = ""
}