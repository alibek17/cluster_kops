terraform {
  required_version = ">= 0.9.3"
  backend "s3"{
    bucket = "alibekcluster.com"
    key = "state/cluster_kops"
    region = "eu-west-1"
  }
}
