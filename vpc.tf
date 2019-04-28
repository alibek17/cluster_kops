resource "aws_vpc" "alibekcluster-com" {
  cidr_block           = "172.20.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    KubernetesCluster                         = "alibekcluster.com"
    Name                                      = "alibekcluster.com"
    "kubernetes.io/cluster/alibekcluster.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options" "alibekcluster-com" {
  domain_name         = "eu-west-1.compute.internal"
  domain_name_servers = ["AmazonProvidedDNS"]

  tags = {
    KubernetesCluster                         = "alibekcluster.com"
    Name                                      = "alibekcluster.com"
    "kubernetes.io/cluster/alibekcluster.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options_association" "alibekcluster-com" {
  vpc_id          = "${aws_vpc.alibekcluster-com.id}"
  dhcp_options_id = "${aws_vpc_dhcp_options.alibekcluster-com.id}"
}