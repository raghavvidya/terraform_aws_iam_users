# AWS IAM Users Creation

This repo contains a module that will be used to creating multiple IAM users in specific environment/s.

Sample IAM users

- nevsa, cordelia, kriste, darleen, wynnie, vonnie, emelita, maurita, devinne, breena

- Environments: dev, qa, uat, test, prod

Write simple HCL code to:

- Create users in AWS for each environment: *($USERNAME-$ENV)

- All resources must be created with single `terraform apply`

- Please make your solution available in a public source-code repository.

- Extra point if you nicely format the output with username, access_key, secret access key in one line.


## Usage

```
module "iam_user_creation" {
  for_each = toset(var.environment)
  source = "./iam-users"
  environment = each.key
  iam_users  = var.iam_users
}
```

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.14.0 |
| aws | >= 3.24 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 3.24 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| env  | Environment name for the user to be created | list(string) | dev, qa, uat, test, prod| yes |
| iam_users  | Create IAM users with these names | list(string) | nevsa, cordelia, kriste, darleen, wynnie, vonnie, emelita, maurita, devinne, breena | yes |

## Outpus

Sample outputs
```
AWS_IAM_Users_List = {
  "dev" = {
    "iam_user_details" = {
      "breena-dev" = "AKIA6E4UY232323S5,02ABhQxM87gwj+hIj8VDFKUnqvZz/iASXCLJZC0K"
      "cordelia-dev" = "AKIweweweweC3U3J,A9hyr5bd+sGD5RFXsLF5NxhxD6kCyicI6v17laVh"
      "darleen-dev" = "AKIA6E232323VXXD,726iM8HdWO9NQ120iGXMSeWDeg0UYGoKzfqtDYha"
      "devinne-dev" = "AKI232323232BFLIG7,1uP1c9Tj3qlhjBJKjR8TQqq5vNFg+BBeccHyPoKt"
      "emelita-dev" = "AK232323EOKS67,4q2+b+zVqxYM830yzmlWZFq576+vbEQajAbsKGVo"
      "kriste-dev" = "AKIA62323232UWUHM,bOKrymSgHeafJ89HKCCeL321OJjaicavmKLMzyH0"
      "maurita-dev" = "AKIA623233OXJK,7ygNzHU22323233Hda1+gEDr8ln9eOCYq2LrGP"
      "nevsa-dev" = "AKIA6E4UYPOQKMP22Q45,FIyyL232323237ViITL+sZtUOqoiRGjWuqRB"
      "vonnie-dev" = "AKIA6E232323UE4O,vwxb+sxm232323230WheQeAtK+9J"
      "wynnie-dev" = "AKIA6232323233RYG3,T6fyU16LcE23233vlK1eMlyXJWwnda"
    }
  }
  "prod" = {
    "iam_user_details" = {
      "breena-prod" = "AKIA6E41222322FNOF,8lYUq6jQ2323232323232K/QjgSJCo/kMYJsh"
      "cordelia-prod" = "AKI23232323QD7TYD,3SNkzhqsmA9J232323233226LWOwDwcPTHuMAaXE/8"
      "darleen-prod" = "AKIA6E423232323EIE4TJ,3FvvInAxxzoe32323232lj+VS9UmJ2HO4Z6elpc"
      "devinne-prod" = "AKIA62323232CXO5VXQ,mkDuW7d82323232R1gjcum948SbxVja9otTJxJgn"
      "emelita-prod" = "AKI23232QBQCL62WG,WqXyweNk232322EgSPh5ONwxigVI3JBPlcCy2LK0"
      "kriste-prod" = "AKIA623232332LPDSFR,rrYQYHyLa23234m0B/YSt+v1Ry7/cr2pC+"
      "maurita-prod" = "AKIA6E423232323XCLGH,dUcsVc7CNN23232tixwKknehdmEPXAdWrmaWfBP"
      "nevsa-prod" = "AKIA62323254PFS,Qle+zWx22323N7/jIvpvP8StGyy0O4nYNkpcV3"
      "vonnie-prod" = "AKIA6E42323232QYHC7M,sMsFp79hd3rPXoTnCIGjsalghhcym3a8Pi6wyy5x"
      "wynnie-prod" = "AKIA232323232QCL,MiyJtseSVypI232323HM27YHmDPQLSArjt6w"
    }
  }
  .....
  ...

  }
 }
}
```
