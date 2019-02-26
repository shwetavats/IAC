provider "aws" {
    region = "us-east-1"
}


module IAC_VPC { 
    source = "../modules/IAC_VPC"
    modCIDR = "${var.envCIDR}"
    IACpubcidr1="${var.envIACpubcidr1}"
    IACpubcidr2 = "${var.envIACpubcidr2}"
    IACprivcidr1="${var.envIACprivcidr1}"
}
