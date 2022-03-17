
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
  source = "./Sg" #"git::git@github.com:Bkoji1150/hqr-security-group.git//Sg"

  vpc_id         = "vpc-b13e8bda"
  ingress        = local.ingress
  description    = "Allow ssh inbound"
  Sg_description = var.Sg_description
  Tags           = "test"
}
