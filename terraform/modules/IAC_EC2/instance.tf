resource "aws_instance" "appserver" {
 ami = "${var.modami}"
 instance_type = "${var.modinstancetype}"
 key_name = "${var.modkeypair}"
 subnet_id = "${var.modinstancepubsubnet}"
 vpc_security_group_ids = ["${aws_security_group.appserver_beta_sg.id}"]
 associate_public_ip_address = "true"
 tags {
    Name = "${var.modenvtype}_appserver"
    Creator = "Terraform"
  }
 }
