resource "aws_iam_user" "users" {
  count = length(var.iam_users)
  name = join("-",[ element(var.iam_users,count.index), var.environment] )
  tags = {
    Terraform = "true"
    Environment = var.environment
  }
}

resource "aws_iam_access_key" "acccess_keys" {
  depends_on = [aws_iam_user.users]
  count = length(var.iam_users)
  user = element(aws_iam_user.users.*.name,count.index)
}
