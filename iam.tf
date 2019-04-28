resource "aws_iam_role" "bastions-alibekcluster-com" {
  name               = "bastions.alibekcluster.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_bastions.alibekcluster.com_policy")}"
}

resource "aws_iam_role" "masters-alibekcluster-com" {
  name               = "masters.alibekcluster.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_masters.alibekcluster.com_policy")}"
}

resource "aws_iam_role" "nodes-alibekcluster-com" {
  name               = "nodes.alibekcluster.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_nodes.alibekcluster.com_policy")}"
}

resource "aws_iam_role_policy" "bastions-alibekcluster-com" {
  name   = "bastions.alibekcluster.com"
  role   = "${aws_iam_role.bastions-alibekcluster-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_bastions.alibekcluster.com_policy")}"
}

resource "aws_iam_role_policy" "masters-alibekcluster-com" {
  name   = "masters.alibekcluster.com"
  role   = "${aws_iam_role.masters-alibekcluster-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_masters.alibekcluster.com_policy")}"
}

resource "aws_iam_role_policy" "nodes-alibekcluster-com" {
  name   = "nodes.alibekcluster.com"
  role   = "${aws_iam_role.nodes-alibekcluster-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_nodes.alibekcluster.com_policy")}"
}