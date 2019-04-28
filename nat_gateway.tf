resource "aws_nat_gateway" "eu-west-1a-alibekcluster-com" {
  allocation_id = "${aws_eip.eu-west-1a-alibekcluster-com.id}"
  subnet_id     = "${aws_subnet.utility-eu-west-1a-alibekcluster-com.id}"

  tags = {
    KubernetesCluster                         = "alibekcluster.com"
    Name                                      = "eu-west-1a.alibekcluster.com"
    "kubernetes.io/cluster/alibekcluster.com" = "owned"
  }
}

resource "aws_nat_gateway" "eu-west-1b-alibekcluster-com" {
  allocation_id = "${aws_eip.eu-west-1b-alibekcluster-com.id}"
  subnet_id     = "${aws_subnet.utility-eu-west-1b-alibekcluster-com.id}"

  tags = {
    KubernetesCluster                         = "alibekcluster.com"
    Name                                      = "eu-west-1b.alibekcluster.com"
    "kubernetes.io/cluster/alibekcluster.com" = "owned"
  }
}

resource "aws_nat_gateway" "eu-west-1c-alibekcluster-com" {
  allocation_id = "${aws_eip.eu-west-1c-alibekcluster-com.id}"
  subnet_id     = "${aws_subnet.utility-eu-west-1c-alibekcluster-com.id}"

  tags = {
    KubernetesCluster                         = "alibekcluster.com"
    Name                                      = "eu-west-1c.alibekcluster.com"
    "kubernetes.io/cluster/alibekcluster.com" = "owned"
  }
}