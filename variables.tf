variable "iam_group_name" {
  type = string
  description = "Defines a group name."
}
variable "iam_group_policies_arns" {
  type = list(string)
  description = "Defines a list of policies' ARNs which will be attached to the group."
  default = []
}