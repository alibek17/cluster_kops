output "bastion_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.bastions-alibekcluster-com.id}"]
}

output "bastion_security_group_ids" {
  value = ["${aws_security_group.bastion-alibekcluster-com.id}"]
}

output "bastions_role_arn" {
  value = "${aws_iam_role.bastions-alibekcluster-com.arn}"
}

output "bastions_role_name" {
  value = "${aws_iam_role.bastions-alibekcluster-com.name}"
}

output "cluster_name" {
  value = "alibekcluster.com"
}

output "master_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.master-eu-west-1a-masters-alibekcluster-com.id}", "${aws_autoscaling_group.master-eu-west-1b-masters-alibekcluster-com.id}", "${aws_autoscaling_group.master-eu-west-1c-masters-alibekcluster-com.id}"]
}

output "master_security_group_ids" {
  value = ["${aws_security_group.masters-alibekcluster-com.id}"]
}

output "masters_role_arn" {
  value = "${aws_iam_role.masters-alibekcluster-com.arn}"
}

output "masters_role_name" {
  value = "${aws_iam_role.masters-alibekcluster-com.name}"
}

output "node_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.nodes-alibekcluster-com.id}"]
}

output "node_security_group_ids" {
  value = ["${aws_security_group.nodes-alibekcluster-com.id}"]
}

output "node_subnet_ids" {
  value = ["${aws_subnet.eu-west-1a-alibekcluster-com.id}", "${aws_subnet.eu-west-1b-alibekcluster-com.id}", "${aws_subnet.eu-west-1c-alibekcluster-com.id}"]
}

output "nodes_role_arn" {
  value = "${aws_iam_role.nodes-alibekcluster-com.arn}"
}

output "nodes_role_name" {
  value = "${aws_iam_role.nodes-alibekcluster-com.name}"
}

output "region" {
  value = "eu-west-1"
}

output "route_table_private-eu-west-1a_id" {
  value = "${aws_route_table.private-eu-west-1a-alibekcluster-com.id}"
}

output "route_table_private-eu-west-1b_id" {
  value = "${aws_route_table.private-eu-west-1b-alibekcluster-com.id}"
}

output "route_table_private-eu-west-1c_id" {
  value = "${aws_route_table.private-eu-west-1c-alibekcluster-com.id}"
}

output "route_table_public_id" {
  value = "${aws_route_table.alibekcluster-com.id}"
}

output "subnet_eu-west-1a_id" {
  value = "${aws_subnet.eu-west-1a-alibekcluster-com.id}"
}

output "subnet_eu-west-1b_id" {
  value = "${aws_subnet.eu-west-1b-alibekcluster-com.id}"
}

output "subnet_eu-west-1c_id" {
  value = "${aws_subnet.eu-west-1c-alibekcluster-com.id}"
}

output "subnet_utility-eu-west-1a_id" {
  value = "${aws_subnet.utility-eu-west-1a-alibekcluster-com.id}"
}

output "subnet_utility-eu-west-1b_id" {
  value = "${aws_subnet.utility-eu-west-1b-alibekcluster-com.id}"
}

output "subnet_utility-eu-west-1c_id" {
  value = "${aws_subnet.utility-eu-west-1c-alibekcluster-com.id}"
}

output "vpc_cidr_block" {
  value = "${aws_vpc.alibekcluster-com.cidr_block}"
}

output "vpc_id" {
  value = "${aws_vpc.alibekcluster-com.id}"
}