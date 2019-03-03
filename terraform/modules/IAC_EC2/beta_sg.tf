resource "aws_security_group" "appserver_beta_sg" {
 name = "appserver_beta_sg"
 description = "allow ssh and http on server"
 vpc_id = "${var.modvpc_id}"
 
 ingress {
  from_port = 22
  to_port   = 22
  protocol      = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
 }
 
 ingress {
  from_port = 80
  to_port   = 80
  protocol      = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
 }
 
 egress { 
  from_port = 0
  to_port = 0
  protocol = "-1"
  cidr_blocks = ["0.0.0.0/0"]
 }
 
 tags {
  name = "appserver_beta_sg"
  creator = "Terraform"
 } 
}

