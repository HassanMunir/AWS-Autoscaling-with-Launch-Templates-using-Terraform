# Creating Elastic IP for Bastion Host using Resource
resource "aws_eip" "bastion_eip" {
  depends_on = [module.ec2_public, module.vpc]
  instance   = module.ec2_public.id[0]
  vpc        = true
  tags       = local.common_tags
}
