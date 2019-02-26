resource "aws_internet_gateway" "IACbetagw" {
 vpc_id="${aws_vpc.terraVPC.id}"
}
