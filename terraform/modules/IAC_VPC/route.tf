resource "aws_route_table" "terraVPCroutetable" {
 vpc_id = "${aws_vpc.terraVPC.id}"
 route {
  cidr_block = "${var.IACpubcidr1}"
  gateway_id = "${aws_internet_gateway.IACbetagw.id}"
 }
}
