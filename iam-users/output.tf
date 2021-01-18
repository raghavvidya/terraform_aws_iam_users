output "iam_user_details" {
  value = {
    for p in aws_iam_access_key.acccess_keys:
          p.user => join(",",[p.id,p.secret])
  }
}
