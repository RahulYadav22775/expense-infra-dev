resource "aws_key_pair" "openvpn" {
  key_name   = "openvpn"
  public_key = file("D:/keypairs/openvpn.pub")

}




module "vpn_instance" {
  
  source  = "terraform-aws-modules/ec2-instance/aws"
  key_name = aws_key_pair.openvpn.key_name
  name = local.resource_name
  ami = data.aws_ami.joindevops.id
  instance_type          = "t2.micro"
  vpc_security_group_ids = [local.vpn_sg_id]
  subnet_id              = local.public_subnet_ids

  tags = merge(
    var.common_tags,
    var.vpn_tags,
    {
    Name = local.resource_name
  }
  )
}