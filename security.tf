resource "aws_security_group" "bastion" {
  name          = "bastion-sg"
  description   = "Bastion secuirty group"
  vpc_id        = "var.vpc_id"

  ingress {
    description = "SSH Access"
    from_port   = "22"
    to_port     = "22"
    protocol    = "tcp"
    cidr_blocks = var.allowed_cidrs
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(var.tags, { Name = "Bastion-SG"})

}
