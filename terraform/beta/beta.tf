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
module IAC_EC2 { 
    source = "../modules/IAC_EC2"
    modami="${var.envmodami}"
    modinstancetype="${var.envmodinstancetype}"
    modkeypair = "${var.envmodkeypair}"
    modinstancepubsubnet="${var.envmodinstancepubsubnet}"
    modenvtype = "${var.envmodenvtype}"
    modvpc_id = "${var.envmodvpc_id}"
}

