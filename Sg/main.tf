
locals {
  security_groups = {
    this = {
      name        = var.Sg_description
      description = var.description
      ingress     = var.ingress
    }

  }
}

resource "aws_security_group" "this" {
  for_each    = local.security_groups
  name        = each.value.name
  description = each.value.description
  vpc_id      = var.vpc_id

  dynamic "ingress" {
    for_each = each.value.ingress
    content {
      from_port   = ingress.value.from
      to_port     = ingress.value.to
      protocol    = ingress.value.protocol
      cidr_blocks = ingress.value.cidr_blocks

    }

  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }

  tags = {
    Name = var.Tags
  }
  lifecycle {
    create_before_destroy = true
    ignore_changes = [
      description,
    ]
  }
}
