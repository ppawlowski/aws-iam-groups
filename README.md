Terraform module for managing [AWS IAM groups](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_groups.html).

___
###Usage

```hcl-terraform
module "my_group" {
  source = "../modules/iam_group"
  iam_group_name = "my_group_name"
  iam_group_policies_arns = [
    "arn:aws:iam::aws:policy/AmazonS3FullAccess",
    module.iam_policy.policy_arn
  ]
}
```

### Inputs
| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
|iam_group_name|Defines a group name.|string|``|yes|
|iam_group_policies_arns|Defines a list of policies' ARNs which will be attached to the group.|list|`[]`|no|

### Outputs

| Name | Description |
|------|-------------|
|group_name|Returns the group name.|
