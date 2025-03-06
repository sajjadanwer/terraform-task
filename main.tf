data "aws_ami" "amazon_linux_2" {
    most_recent  = true
    owners       = ["amazon"]

    filter {
        name     = "name"
        values   = ["amzn2-ami-hvm-*-x86_64-ebs"]
    }
}

resource "aws_instance" "bastion" {
    ami                    = "data.aws_ami.amazon_linux_2.id"
    instance_type          = var.instance_type
    subnet_id              = var.subnet_id
    vpc_security_group_ids = [aws_security_group.bastion.id]
    key_name               = var.key_name
    associate_public_ip_address = true

    tags = merge(var.tags, {Name = "Bastion-Host"})
}
