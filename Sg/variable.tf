

variable "Tags" {
  type        = string
  description = "tag name"
}
variable "description" {

}
variable "vpc_id" {
  type        = string
  description = "Provide vpc id"
}

variable "ingress" {
  description = <<-EOT
  User should provide this 
  ``` 
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
  ```
  Note: An empty objects list applies the privilege on all database objects matching the type provided.
  For information regarding types and privileges, refer to: https://www.postgresql.org/docs/13/ddl-priv.html
  EOT

}


variable "Sg_description" {
  type        = string
  description = "security group Name "

}
