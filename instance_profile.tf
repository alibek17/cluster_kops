resource "aws_iam_instance_profile" "bastions-alibekcluster-com" {
  name = "bastions.alibekcluster.com"
  role = "${aws_iam_role.bastions-alibekcluster-com.name}"
}

resource "aws_iam_instance_profile" "masters-alibekcluster-com" {
  name = "masters.alibekcluster.com"
  role = "${aws_iam_role.masters-alibekcluster-com.name}"
}

resource "aws_iam_instance_profile" "nodes-alibekcluster-com" {
  name = "nodes.alibekcluster.com"
  role = "${aws_iam_role.nodes-alibekcluster-com.name}"
}