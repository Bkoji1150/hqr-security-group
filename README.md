# hqr-security-group
https://github.com/Bkoji1150/hqr-security-group.git 
# Usage
```hcl

locals = {
    ssh = 
    {
        from        = 22
        to          = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

module "Security_module" {
  source = "git::git@github.com:Bkoji1150/hqr-security-group.git"

  Sg_Name         = var.SgName
  name            = var.TagName
  vpc_id          = var.vpc_id
  security_groups = local.ssh
}

```
