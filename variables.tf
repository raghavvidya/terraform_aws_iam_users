variable "iam_users" {
  description = "List of IAM users to be created in all environments"
  type = list(string)
  default  = ["nevsa", "cordelia", "kriste", "darleen", "wynnie", "vonnie", "emelita", "maurita", "devinne", "breena"]
}

variable "environment" {
  description = "List of environments"
  type = list(string)
  default = ["dev", "qa", "uat", "test", "prod"]
}
