resource "aws_key_pair" "kubernetes-alibekcluster-com-2fc79c17c389bb42da7e8bb9db50e3fc" {
  key_name   = "kubernetes.alibekcluster.com-2f:c7:9c:17:c3:89:bb:42:da:7e:8b:b9:db:50:e3:fc"
  public_key = "${file("${path.module}/data/aws_key_pair_kubernetes.alibekcluster.com-2fc79c17c389bb42da7e8bb9db50e3fc_public_key")}"
}