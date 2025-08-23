
#roboshop-dev-frontend
resource "aws_security_group" "main" {
    name = var.frontend_sg_name
    description = var.frontend_sg_description
    vpc_id  = var.vpc_id

    tags = merge(
        var.sg_tags,
        local.common_tags,
        {
            Name = "${var.project}.${var.environment}.${var.frontend_sg_name}"
        }
    )
  
}