resources "aws_subnet" "IACpublicsubnet1" {
 vpc_id="${aws_vpc.terraVPC.id}"
 cidr_block="${var.IACpubcidr1}"
 availability_zone="us-east-1"
}

resources "aws_subnet" "IACprivatesubnet1" {
 vpc_id="${aws_vpc.terraVPC.id}"
 cidr_block="${var.IACprivcidr1}"
 availability_zone="us-east-1"
}

resources "aws_subnet" "IACpublicsubnet2" {
 vpc_id="${aws_vpc.terraVPC.id}"
 cidr_block="${var.IACpubcidr2}"
 availability_zone="us-east-2"
}
