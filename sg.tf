resource "aws_security_group" "sg" {
  name        = "${local.sgname}-${var.role_type}"
  description = var.sg_desc
  vpc_id      = data.aws_ssm_parameter.vpc_id.value

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

 tags =merge(
    var.common_tags,
    var.sg_tags,
 {
    Name = "${local.sgname}-${var.role_type}"
  }
 )
}