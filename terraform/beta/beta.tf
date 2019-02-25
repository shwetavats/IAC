provider "aws" {
    region = "us-west-2"
}


module IAC_VPC { 
    source = "../modules/IAC_VPC"
    modCIDR = "${var.envCIDR}"
}