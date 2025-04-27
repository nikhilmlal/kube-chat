resource "aws_eks_addon" "example" {
  cluster_name = aws_eks_cluster.eks_cluster_1.name
  addon_name   = "vpc-cni"
}