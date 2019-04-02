### terraform-aws-s3policy<--

#### TL;DR;
- [Inputs](#input)
- [Outputs](#output)

### BODY ###
### BODY ###
### BODY ###
### BODY ###
### BODY ###

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| bucket | Bucket to be created | string | n/a | yes |
| read\_users | List of Users ARN | list | `<list>` | no |
| write\_users | List of Users ARN | list | `<list>` | no |

## Outputs

| Name | Description |
|------|-------------|
| read\_policy\_id | Policy ID |
| write\_policy\_id | Policy ID |

