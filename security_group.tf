resource "aws_security_group" "api-elb-alibekcluster-com" {
  name        = "api-elb.alibekcluster.com"
  vpc_id      = "${aws_vpc.alibekcluster-com.id}"
  description = "Security group for api ELB"

  tags = {
    KubernetesCluster                         = "alibekcluster.com"
    Name                                      = "api-elb.alibekcluster.com"
    "kubernetes.io/cluster/alibekcluster.com" = "owned"
  }
}

resource "aws_security_group" "bastion-alibekcluster-com" {
  name        = "bastion.alibekcluster.com"
  vpc_id      = "${aws_vpc.alibekcluster-com.id}"
  description = "Security group for bastion"

  tags = {
    KubernetesCluster                         = "alibekcluster.com"
    Name                                      = "bastion.alibekcluster.com"
    "kubernetes.io/cluster/alibekcluster.com" = "owned"
  }
}

resource "aws_security_group" "bastion-elb-alibekcluster-com" {
  name        = "bastion-elb.alibekcluster.com"
  vpc_id      = "${aws_vpc.alibekcluster-com.id}"
  description = "Security group for bastion ELB"

  tags = {
    KubernetesCluster                         = "alibekcluster.com"
    Name                                      = "bastion-elb.alibekcluster.com"
    "kubernetes.io/cluster/alibekcluster.com" = "owned"
  }
}

resource "aws_security_group" "masters-alibekcluster-com" {
  name        = "masters.alibekcluster.com"
  vpc_id      = "${aws_vpc.alibekcluster-com.id}"
  description = "Security group for masters"

  tags = {
    KubernetesCluster                         = "alibekcluster.com"
    Name                                      = "masters.alibekcluster.com"
    "kubernetes.io/cluster/alibekcluster.com" = "owned"
  }
}

resource "aws_security_group" "nodes-alibekcluster-com" {
  name        = "nodes.alibekcluster.com"
  vpc_id      = "${aws_vpc.alibekcluster-com.id}"
  description = "Security group for nodes"

  tags = {
    KubernetesCluster                         = "alibekcluster.com"
    Name                                      = "nodes.alibekcluster.com"
    "kubernetes.io/cluster/alibekcluster.com" = "owned"
  }
}

resource "aws_security_group_rule" "all-master-to-master" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-alibekcluster-com.id}"
  source_security_group_id = "${aws_security_group.masters-alibekcluster-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "all-master-to-node" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-alibekcluster-com.id}"
  source_security_group_id = "${aws_security_group.masters-alibekcluster-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "all-node-to-node" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-alibekcluster-com.id}"
  source_security_group_id = "${aws_security_group.nodes-alibekcluster-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "api-elb-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.api-elb-alibekcluster-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.bastion-alibekcluster-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-elb-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.bastion-elb-alibekcluster-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-to-master-ssh" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-alibekcluster-com.id}"
  source_security_group_id = "${aws_security_group.bastion-alibekcluster-com.id}"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "bastion-to-node-ssh" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-alibekcluster-com.id}"
  source_security_group_id = "${aws_security_group.bastion-alibekcluster-com.id}"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "https-api-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.api-elb-alibekcluster-com.id}"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "https-elb-to-master" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-alibekcluster-com.id}"
  source_security_group_id = "${aws_security_group.api-elb-alibekcluster-com.id}"
  from_port                = 443
  to_port                  = 443
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "master-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.masters-alibekcluster-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "node-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.nodes-alibekcluster-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "node-to-master-tcp-1-2379" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-alibekcluster-com.id}"
  source_security_group_id = "${aws_security_group.nodes-alibekcluster-com.id}"
  from_port                = 1
  to_port                  = 2379
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-tcp-2382-4000" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-alibekcluster-com.id}"
  source_security_group_id = "${aws_security_group.nodes-alibekcluster-com.id}"
  from_port                = 2382
  to_port                  = 4000
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-tcp-4003-65535" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-alibekcluster-com.id}"
  source_security_group_id = "${aws_security_group.nodes-alibekcluster-com.id}"
  from_port                = 4003
  to_port                  = 65535
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-udp-1-65535" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-alibekcluster-com.id}"
  source_security_group_id = "${aws_security_group.nodes-alibekcluster-com.id}"
  from_port                = 1
  to_port                  = 65535
  protocol                 = "udp"
}

resource "aws_security_group_rule" "ssh-elb-to-bastion" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.bastion-alibekcluster-com.id}"
  source_security_group_id = "${aws_security_group.bastion-elb-alibekcluster-com.id}"
  from_port                = "${var.bastion_ssh_port}"
  to_port                  = "${var.bastion_ssh_port}"
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "ssh-external-to-bastion-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.bastion-elb-alibekcluster-com.id}"
  from_port         = "${var.bastion_ssh_port}"
  to_port           = "${var.bastion_ssh_port}"
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}