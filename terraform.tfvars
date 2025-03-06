#dummy values

region       = "us-east-1"
vpc_id       = "vpc-05478d8554332c54"
subnet_id    = "subnet-0611122d178e41"
key_name     = "bastion-key.pem"
allowed_cidrs = ["19.168.10.24/32"]

tags = {
  Environment = "Dev"
  Project     = "Bastion-EC2"
}
