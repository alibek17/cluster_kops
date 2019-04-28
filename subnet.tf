resource "aws_subnet" "eu-west-1a-alibekcluster-com" {
  vpc_id            = "${aws_vpc.alibekcluster-com.id}"
  cidr_block        = "172.20.32.0/19"
  availability_zone = "eu-west-1a"

  tags = {
    KubernetesCluster                         = "alibekcluster.com"
    Name                                      = "eu-west-1a.alibekcluster.com"
    SubnetType                                = "Private"
    "kubernetes.io/cluster/alibekcluster.com" = "owned"
    "kubernetes.io/role/internal-elb"         = "1"
  }
}

resource "aws_subnet" "eu-west-1b-alibekcluster-com" {
  vpc_id            = "${aws_vpc.alibekcluster-com.id}"
  cidr_block        = "172.20.64.0/19"
  availability_zone = "eu-west-1b"

  tags = {
    KubernetesCluster                         = "alibekcluster.com"
    Name                                      = "eu-west-1b.alibekcluster.com"
    SubnetType                                = "Private"
    "kubernetes.io/cluster/alibekcluster.com" = "owned"
    "kubernetes.io/role/internal-elb"         = "1"
  }
}

resource "aws_subnet" "eu-west-1c-alibekcluster-com" {
  vpc_id            = "${aws_vpc.alibekcluster-com.id}"
  cidr_block        = "172.20.96.0/19"
  availability_zone = "eu-west-1c"

  tags = {
    KubernetesCluster                         = "alibekcluster.com"
    Name                                      = "eu-west-1c.alibekcluster.com"
    SubnetType                                = "Private"
    "kubernetes.io/cluster/alibekcluster.com" = "owned"
    "kubernetes.io/role/internal-elb"         = "1"
  }
}

resource "aws_subnet" "utility-eu-west-1a-alibekcluster-com" {
  vpc_id            = "${aws_vpc.alibekcluster-com.id}"
  cidr_block        = "172.20.0.0/22"
  availability_zone = "eu-west-1a"

  tags = {
    KubernetesCluster                         = "alibekcluster.com"
    Name                                      = "utility-eu-west-1a.alibekcluster.com"
    SubnetType                                = "Utility"
    "kubernetes.io/cluster/alibekcluster.com" = "owned"
    "kubernetes.io/role/elb"                  = "1"
  }
}

resource "aws_subnet" "utility-eu-west-1b-alibekcluster-com" {
  vpc_id            = "${aws_vpc.alibekcluster-com.id}"
  cidr_block        = "172.20.4.0/22"
  availability_zone = "eu-west-1b"

  tags = {
    KubernetesCluster                         = "alibekcluster.com"
    Name                                      = "utility-eu-west-1b.alibekcluster.com"
    SubnetType                                = "Utility"
    "kubernetes.io/cluster/alibekcluster.com" = "owned"
    "kubernetes.io/role/elb"                  = "1"
  }
}

resource "aws_subnet" "utility-eu-west-1c-alibekcluster-com" {
  vpc_id            = "${aws_vpc.alibekcluster-com.id}"
  cidr_block        = "172.20.8.0/22"
  availability_zone = "eu-west-1c"

  tags = {
    KubernetesCluster                         = "alibekcluster.com"
    Name                                      = "utility-eu-west-1c.alibekcluster.com"
    SubnetType                                = "Utility"
    "kubernetes.io/cluster/alibekcluster.com" = "owned"
    "kubernetes.io/role/elb"                  = "1"
  }
}