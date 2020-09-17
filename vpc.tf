//--------------------------------------------------------------------
// Modules
module "aws" {
  source  = "app.terraform.io/mrbreaker2-training/aws/provider"
  version = "3.6.0"
}
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "Gaurav"
  }
}
