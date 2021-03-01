resource "aws_iam_group" "group" {
  name = var.iam_group_name
}

resource "aws_iam_group_policy_attachment" "policy_attachment" {
  count = length(var.iam_group_policies_arns)
  group = aws_iam_group.group.name
  policy_arn = var.iam_group_policies_arns[count.index]
}