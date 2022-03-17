# hqr-security-group
https://github.com/Bkoji1150/hqr-security-group.git 
# Usage
```hcl

locals {
    ssecurity_groups = {
    public = {
      name        = "Project-Omega-web-sg"
      description = "Allow http and ssh inbound traffic"
      ingress = {
    
        mysql = {
          from        = 3306
          to          = 3306
          protocol    = "tcp"
          cidr_blocks = ["0.0.0.0/0"]
        }
      }
    }
    rds = {
      name        = "rds_sg"
      description = "rds access"
      ingress = {
        mysql = {
          from        = 3306
          to          = 3306
          protocol    = "tcp"
          cidr_blocks = ["0.0.0.0/0"]
        }
 }
}
 }
}


module "Security_module" {
  source = "git::git@github.com:Bkoji1150/hqr-security-group.git//Sg"

  Sg_Name         = "test"
  name            = "test"
  vpc_id          = "vpc-b13e8bda"
  security_groups = local.ssecurity_groups
}


```
