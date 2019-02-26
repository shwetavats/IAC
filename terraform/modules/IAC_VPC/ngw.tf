resources "aws_nat_gateway" "terraVPCngw" {
 allocation_id = "${aws_eip.terraVPCeip.id}"
 subnet_id = "${aws_subnet.IACpublicsubnet1.id}"
}

