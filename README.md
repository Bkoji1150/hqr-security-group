# hqr-security-group
https://github.com/Bkoji1150/hqr-security-group.git 
# Usage
```hcl
locals {
ingress = {
   mysql = {
          from        = 3306
          to          = 3306
          protocol    = "tcp"
          cidr_blocks = ["0.0.0.0/0"]
        } 
    }
}

# To add another rule 

locals {
ingress = {
   mysql = {
          from        = 3306
          to          = 3306
          protocol    = "tcp"
          cidr_blocks = ["0.0.0.0/0"]
        } 
    ssh = {
          from        = 22
          to          = 22
          protocol    = "tcp"
          cidr_blocks = ["0.0.0.0/0"]
        } 
    }
}

module "Security_module" {
  source = "git::git@github.com:Bkoji1150/hqr-security-group.git//Sg"

  Sg_Name         = "test"
  name            = "test"
  vpc_id          = "vpc-b13e8bda"
  security_groups = local.ingress
  security_groupName = var.security_groupName
}


```
