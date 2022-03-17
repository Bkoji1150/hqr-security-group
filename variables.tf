

variable "ingress" {
  description = <<-EOT
  If a user in this map does not also exist in the db_users list, it will be ignored.
  Example usage of db_users:
  ```mysql = [
    {
        from        = 3306
        to          = 3306
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
  ]```
  Note: An empty objects list applies the privilege on all database objects matching the type provided.
  For information regarding types and privileges, refer to: https://www.postgresql.org/docs/13/ddl-priv.html
  EOT
  type = list(object({
    user       = string
    type       = string
    schema     = string
    privileges = list(string)
    objects    = list(string)
  }))
  default = []
}

variable "vpc_id" {
  description = "Vpc id to which sg would be created in"
  default     = "vpc-b13e8bda"
}

variable "SgName" {
  description = "security group name "
  default     = "vpc-b13e8bda"

}

variable "TagName" {
  description = "security group Tag name "
  default     = ""
}

variable "Sg_description" {
  description = "security group Name "
  default     = "SgTest"
}
