resource "aws_launch_configuration" "bastions-alibekcluster-com" {
  name_prefix                 = "bastions.alibekcluster.com-"
  image_id                    = "ami-01666ac8d55438d0b"
  instance_type               = "${var.bastion_instance_type}"
  key_name                    = "${aws_key_pair.kubernetes-alibekcluster-com-2fc79c17c389bb42da7e8bb9db50e3fc.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.bastions-alibekcluster-com.id}"
  security_groups             = ["${aws_security_group.bastion-alibekcluster-com.id}"]
  associate_public_ip_address = true

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 32
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-eu-west-1a-masters-alibekcluster-com" {
  name_prefix                 = "master-eu-west-1a.masters.alibekcluster.com-"
  image_id                    = "ami-01666ac8d55438d0b"
  instance_type               = "${var.master_instance_type}"
  key_name                    = "${aws_key_pair.kubernetes-alibekcluster-com-2fc79c17c389bb42da7e8bb9db50e3fc.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-alibekcluster-com.id}"
  security_groups             = ["${aws_security_group.masters-alibekcluster-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-eu-west-1a.masters.alibekcluster.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-eu-west-1b-masters-alibekcluster-com" {
  name_prefix                 = "master-eu-west-1b.masters.alibekcluster.com-"
  image_id                    = "ami-01666ac8d55438d0b"
  instance_type               = "${var.master_instance_type}"
  key_name                    = "${aws_key_pair.kubernetes-alibekcluster-com-2fc79c17c389bb42da7e8bb9db50e3fc.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-alibekcluster-com.id}"
  security_groups             = ["${aws_security_group.masters-alibekcluster-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-eu-west-1b.masters.alibekcluster.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-eu-west-1c-masters-alibekcluster-com" {
  name_prefix                 = "master-eu-west-1c.masters.alibekcluster.com-"
  image_id                    = "ami-01666ac8d55438d0b"
  instance_type               = "${var.master_instance_type}"
  key_name                    = "${aws_key_pair.kubernetes-alibekcluster-com-2fc79c17c389bb42da7e8bb9db50e3fc.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-alibekcluster-com.id}"
  security_groups             = ["${aws_security_group.masters-alibekcluster-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-eu-west-1c.masters.alibekcluster.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "nodes-alibekcluster-com" {
  name_prefix                 = "nodes.alibekcluster.com-"
  image_id                    = "ami-01666ac8d55438d0b"
  instance_type               = "${var.node_instance_type}"
  key_name                    = "${aws_key_pair.kubernetes-alibekcluster-com-2fc79c17c389bb42da7e8bb9db50e3fc.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.nodes-alibekcluster-com.id}"
  security_groups             = ["${aws_security_group.nodes-alibekcluster-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_nodes.alibekcluster.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 128
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}