resource "aws_vpc" "terraVPC" {
  cidr_block       = "${var.modCIDR}"
}