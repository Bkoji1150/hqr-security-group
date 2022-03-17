
locals {
  security_groups = {
    public = {
      name        = "Project-Omega-web-sg"
      description = "Allow http and ssh inbound traffic"
      ingress = {
      
        nginx = {
          from        = 8000
          to          = 8000
          protocol    = "tcp"
          cidr_blocks = ["0.0.0.0/0"]
        }
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

module "sg" {
  source = "./Sg"

  Sg_Name = "Test"
  name  = "Test"
  vpc_id = "vpc-b13e8bda"
  security_groups = local.security_groups
}