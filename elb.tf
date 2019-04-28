resource "aws_elb" "api-alibekcluster-com" {
  name = "api-alibekcluster-com-nl03bn"

  listener = {
    instance_port     = 443
    instance_protocol = "TCP"
    lb_port           = 443
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.api-elb-alibekcluster-com.id}"]
  subnets         = ["${aws_subnet.utility-eu-west-1a-alibekcluster-com.id}", "${aws_subnet.utility-eu-west-1b-alibekcluster-com.id}", "${aws_subnet.utility-eu-west-1c-alibekcluster-com.id}"]

  health_check = {
    target              = "SSL:443"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  idle_timeout = 300

  tags = {
    KubernetesCluster = "alibekcluster.com"
    Name              = "api.alibekcluster.com"
  }
}

resource "aws_elb" "bastion-alibekcluster-com" {
  name = "bastion-alibekcluster-com-mfarp9"

  listener = {
    instance_port     = 22
    instance_protocol = "TCP"
    lb_port           = 22
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.bastion-elb-alibekcluster-com.id}"]
  subnets         = ["${aws_subnet.utility-eu-west-1a-alibekcluster-com.id}", "${aws_subnet.utility-eu-west-1b-alibekcluster-com.id}", "${aws_subnet.utility-eu-west-1c-alibekcluster-com.id}"]

  health_check = {
    target              = "TCP:22"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  idle_timeout = 300

  tags = {
    KubernetesCluster = "alibekcluster.com"
    Name              = "bastion.alibekcluster.com"
  }
}