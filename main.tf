
locals {
  security_groups = {
    public = {
      name        = "Project-Omega-web-sg"
      description = "Allow http and ssh inbound traffic"
      ingress     = var.ingress
    }
  }
}

module "sg" {
  source = "./Sg"

  Sg_Name         = var.SgName
  name            = var.TagName
  vpc_id          = var.vpc_id
  security_groups = local.security_groups
}
