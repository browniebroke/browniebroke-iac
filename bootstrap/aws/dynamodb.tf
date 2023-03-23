resource "aws_dynamodb_table" "terraform_lock" {
  name         = "browniebroke_terraform_lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
