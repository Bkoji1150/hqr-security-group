
variable "Sg_Name" {
  description = "Sg name"
}

variable "name" {
  description = "tag name"
}

variable "vpc_id" {
  description = "Provide vpc id"
}

variable "security_groups" {
  description = <<-EOT
  User should provide this 
  ```
    ssecurity_groups = {
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
    rds = {
      name        = "rds_sg"
      description = "rds access"
      ingress = {
        mysql = {
          from        = 3306
          to          = 3306
          protocol    = "tcp"
          cidr_blocks = [local.omega_vpc]
        }
 }
}
 }
  ```
  Note: An empty objects list applies the privilege on all database objects matching the type provided.
  For information regarding types and privileges, refer to: https://www.postgresql.org/docs/13/ddl-priv.html
  EOT

}
