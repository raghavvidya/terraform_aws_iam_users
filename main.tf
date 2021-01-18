
provider "aws" {
  region = "us-east-1"
}

module "iam_user_creation" {
  for_each = toset(var.environment)
  source = "./iam-users"
  environment = each.key
  iam_users  = var.iam_users
}
