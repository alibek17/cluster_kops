resource "aws_internet_gateway" "alibekcluster-com" {
  vpc_id = "${aws_vpc.alibekcluster-com.id}"

  tags = {
    KubernetesCluster                         = "alibekcluster.com"
    Name                                      = "alibekcluster.com"
    "kubernetes.io/cluster/alibekcluster.com" = "owned"
  }
}