resource "aws_autoscaling_attachment" "bastions-alibekcluster-com" {
  elb                    = "${aws_elb.bastion-alibekcluster-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.bastions-alibekcluster-com.id}"
}

resource "aws_autoscaling_attachment" "master-eu-west-1a-masters-alibekcluster-com" {
  elb                    = "${aws_elb.api-alibekcluster-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-eu-west-1a-masters-alibekcluster-com.id}"
}

resource "aws_autoscaling_attachment" "master-eu-west-1b-masters-alibekcluster-com" {
  elb                    = "${aws_elb.api-alibekcluster-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-eu-west-1b-masters-alibekcluster-com.id}"
}

resource "aws_autoscaling_attachment" "master-eu-west-1c-masters-alibekcluster-com" {
  elb                    = "${aws_elb.api-alibekcluster-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-eu-west-1c-masters-alibekcluster-com.id}"
}

resource "aws_autoscaling_group" "bastions-alibekcluster-com" {
  name                 = "bastions.alibekcluster.com"
  launch_configuration = "${aws_launch_configuration.bastions-alibekcluster-com.id}"
  max_size             = "${var.bastion_min_size}"
  min_size             = "${var.bastion_max_size}"
  vpc_zone_identifier  = ["${aws_subnet.utility-eu-west-1a-alibekcluster-com.id}", "${aws_subnet.utility-eu-west-1b-alibekcluster-com.id}", "${aws_subnet.utility-eu-west-1c-alibekcluster-com.id}"]

  tag {
    key                 = "KubernetesCluster"
    value               = "alibekcluster.com"
    propagate_at_launch = true
  }

  tag {
    key                 = "Name"
    value               = "bastions.alibekcluster.com"
    propagate_at_launch = true
  }

  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "bastions"
    propagate_at_launch = true
  }

  tag {
    key                 = "k8s.io/role/bastion"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]

  tag {
    key                 = "Env"
    value               = "${var.env}"
    propagate_at_launch = true
  }
  tag {
    key                 = "Created by"
    value               = "${var.created_by}"
    propagate_at_launch = true
  }
  tag {
    key                 = "Dept"
    value               = "${var.dept}"
    propagate_at_launch = true
  }

}

resource "aws_autoscaling_group" "master-eu-west-1a-masters-alibekcluster-com" {
  name                 = "master-eu-west-1a.masters.alibekcluster.com"
  launch_configuration = "${aws_launch_configuration.master-eu-west-1a-masters-alibekcluster-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1a-alibekcluster-com.id}"]

  tag {
    key                 = "KubernetesCluster"
    value               = "alibekcluster.com"
    propagate_at_launch = true
  }

  tag {
    key                 = "Name"
    value               = "master-eu-west-1a.masters.alibekcluster.com"
    propagate_at_launch = true
  }

  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-eu-west-1a"
    propagate_at_launch = true
  }

  tag {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]

  tag {
    key                 = "Env"
    value               = "${var.env}"
    propagate_at_launch = true
  }
  tag {
    key                 = "Created by"
    value               = "${var.created_by}"
    propagate_at_launch = true
  }
  tag {
    key                 = "Dept"
    value               = "${var.dept}"
    propagate_at_launch = true
  }
}

resource "aws_autoscaling_group" "master-eu-west-1b-masters-alibekcluster-com" {
  name                 = "master-eu-west-1b.masters.alibekcluster.com"
  launch_configuration = "${aws_launch_configuration.master-eu-west-1b-masters-alibekcluster-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1b-alibekcluster-com.id}"]

  tag {
    key                 = "KubernetesCluster"
    value               = "alibekcluster.com"
    propagate_at_launch = true
  }

  tag {
    key                 = "Name"
    value               = "master-eu-west-1b.masters.alibekcluster.com"
    propagate_at_launch = true
  }

  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-eu-west-1b"
    propagate_at_launch = true
  }

  tag {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]

  tag {
    key                 = "Env"
    value               = "${var.env}"
    propagate_at_launch = true
  }
  tag {
    key                 = "Created by"
    value               = "${var.created_by}"
    propagate_at_launch = true
  }
  tag {
    key                 = "Dept"
    value               = "${var.dept}"
    propagate_at_launch = true
  }
}

resource "aws_autoscaling_group" "master-eu-west-1c-masters-alibekcluster-com" {
  name                 = "master-eu-west-1c.masters.alibekcluster.com"
  launch_configuration = "${aws_launch_configuration.master-eu-west-1c-masters-alibekcluster-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1c-alibekcluster-com.id}"]

  tag {
    key                 = "KubernetesCluster"
    value               = "alibekcluster.com"
    propagate_at_launch = true
  }

  tag {
    key                 = "Name"
    value               = "master-eu-west-1c.masters.alibekcluster.com"
    propagate_at_launch = true
  }

  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-eu-west-1c"
    propagate_at_launch = true
  }

  tag {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]

  tag {
    key                 = "Env"
    value               = "${var.env}"
    propagate_at_launch = true
  }
  tag {
    key                 = "Created by"
    value               = "${var.created_by}"
    propagate_at_launch = true
  }
  tag {
    key                 = "Dept"
    value               = "${var.dept}"
    propagate_at_launch = true
  }
}

resource "aws_autoscaling_group" "nodes-alibekcluster-com" {
  name                 = "nodes.alibekcluster.com"
  launch_configuration = "${aws_launch_configuration.nodes-alibekcluster-com.id}"
  max_size             = "${var.node_min_size}"
  min_size             = "${var.node_max_size}"
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1a-alibekcluster-com.id}", "${aws_subnet.eu-west-1b-alibekcluster-com.id}", "${aws_subnet.eu-west-1c-alibekcluster-com.id}"]

  tag {
    key                 = "KubernetesCluster"
    value               = "alibekcluster.com"
    propagate_at_launch = true
  }

  tag {
    key                 = "Name"
    value               = "nodes.alibekcluster.com"
    propagate_at_launch = true
  }

  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "nodes"
    propagate_at_launch = true
  }

  tag {
    key                 = "k8s.io/role/node"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]

  tag {
    key                 = "Env"
    value               = "${var.env}"
    propagate_at_launch = true
  }
  tag {
    key                 = "Created by"
    value               = "${var.created_by}"
    propagate_at_launch = true
  }
  tag {
    key                 = "Dept"
    value               = "${var.dept}"
    propagate_at_launch = true
  }
}