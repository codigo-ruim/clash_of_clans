// Optional: configure a remote S3 backend for Terraform state.
// Using a remote backend ensures both `apply` and `destroy` operate on the same state
// (the reason your `terraform destroy` did nothing is probably because the runner
// didn't have the same local state that was used during apply).
//
// Two options:
// 1) Don't include this file and pass `-backend-config` arguments to `terraform init` (recommended for CI).
// 2) Create this file with concrete values (bucket and dynamodb_table must already exist) and run `terraform init`.
//
// Example backend block (uncomment and set values if you created the S3 bucket and DynamoDB table already):
/*
terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket"
    key            = "clash_of_clans/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
*/

// Recommended in CI: do NOT commit concrete backend values; instead pass these at `terraform init` time
// from GitHub Actions using repository secrets (see updated workflows).

