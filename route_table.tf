resource "aws_route_table" "alibekcluster-com" {
  vpc_id = "${aws_vpc.alibekcluster-com.id}"

  tags = {
    KubernetesCluster                         = "alibekcluster.com"
    Name                                      = "alibekcluster.com"
    "kubernetes.io/cluster/alibekcluster.com" = "owned"
    "kubernetes.io/kops/role"                 = "public"
  }
}

resource "aws_route_table" "private-eu-west-1a-alibekcluster-com" {
  vpc_id = "${aws_vpc.alibekcluster-com.id}"

  tags = {
    KubernetesCluster                         = "alibekcluster.com"
    Name                                      = "private-eu-west-1a.alibekcluster.com"
    "kubernetes.io/cluster/alibekcluster.com" = "owned"
    "kubernetes.io/kops/role"                 = "private-eu-west-1a"
  }
}

resource "aws_route_table" "private-eu-west-1b-alibekcluster-com" {
  vpc_id = "${aws_vpc.alibekcluster-com.id}"

  tags = {
    KubernetesCluster                         = "alibekcluster.com"
    Name                                      = "private-eu-west-1b.alibekcluster.com"
    "kubernetes.io/cluster/alibekcluster.com" = "owned"
    "kubernetes.io/kops/role"                 = "private-eu-west-1b"
  }
}

resource "aws_route_table" "private-eu-west-1c-alibekcluster-com" {
  vpc_id = "${aws_vpc.alibekcluster-com.id}"

  tags = {
    KubernetesCluster                         = "alibekcluster.com"
    Name                                      = "private-eu-west-1c.alibekcluster.com"
    "kubernetes.io/cluster/alibekcluster.com" = "owned"
    "kubernetes.io/kops/role"                 = "private-eu-west-1c"
  }
}

resource "aws_route_table_association" "private-eu-west-1a-alibekcluster-com" {
  subnet_id      = "${aws_subnet.eu-west-1a-alibekcluster-com.id}"
  route_table_id = "${aws_route_table.private-eu-west-1a-alibekcluster-com.id}"
}

resource "aws_route_table_association" "private-eu-west-1b-alibekcluster-com" {
  subnet_id      = "${aws_subnet.eu-west-1b-alibekcluster-com.id}"
  route_table_id = "${aws_route_table.private-eu-west-1b-alibekcluster-com.id}"
}

resource "aws_route_table_association" "private-eu-west-1c-alibekcluster-com" {
  subnet_id      = "${aws_subnet.eu-west-1c-alibekcluster-com.id}"
  route_table_id = "${aws_route_table.private-eu-west-1c-alibekcluster-com.id}"
}

resource "aws_route_table_association" "utility-eu-west-1a-alibekcluster-com" {
  subnet_id      = "${aws_subnet.utility-eu-west-1a-alibekcluster-com.id}"
  route_table_id = "${aws_route_table.alibekcluster-com.id}"
}

resource "aws_route_table_association" "utility-eu-west-1b-alibekcluster-com" {
  subnet_id      = "${aws_subnet.utility-eu-west-1b-alibekcluster-com.id}"
  route_table_id = "${aws_route_table.alibekcluster-com.id}"
}

resource "aws_route_table_association" "utility-eu-west-1c-alibekcluster-com" {
  subnet_id      = "${aws_subnet.utility-eu-west-1c-alibekcluster-com.id}"
  route_table_id = "${aws_route_table.alibekcluster-com.id}"
}