resource "aws_eip" "eu-west-1a-alibekcluster-com" {
  vpc = true

  tags = {
    KubernetesCluster                         = "alibekcluster.com"
    Name                                      = "eu-west-1a.alibekcluster.com"
    "kubernetes.io/cluster/alibekcluster.com" = "owned"
  }
}

resource "aws_eip" "eu-west-1b-alibekcluster-com" {
  vpc = true

  tags = {
    KubernetesCluster                         = "alibekcluster.com"
    Name                                      = "eu-west-1b.alibekcluster.com"
    "kubernetes.io/cluster/alibekcluster.com" = "owned"
  }
}

resource "aws_eip" "eu-west-1c-alibekcluster-com" {
  vpc = true

  tags = {
    KubernetesCluster                         = "alibekcluster.com"
    Name                                      = "eu-west-1c.alibekcluster.com"
    "kubernetes.io/cluster/alibekcluster.com" = "owned"
  }
}