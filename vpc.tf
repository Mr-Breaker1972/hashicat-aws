//--------------------------------------------------------------------
// Modules
module "aws" {
  source  = "app.terraform.io/mrbreaker2-training/aws/provider"
  version = "3.6.0"
}
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "Gaurav1"
  }
}
resource "aws_vpc_ipv4_cidr_block_association" "secondary_cidr" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "172.2.0.0/16"
}

resource "aws_subnet" "in_secondary_cidr" {
  vpc_id     = aws_vpc_ipv4_cidr_block_association.secondary_cidr.vpc_id
  cidr_block = "172.2.0.0/24"
}