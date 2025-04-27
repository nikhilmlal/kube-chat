resource "aws_eks_cluster" "eks_cluster_1" {
  name = "kube_chat_test_1"

  access_config {
    authentication_mode = "API"
  }

  version = "1.32"

  vpc_config {
    subnet_ids = [
      "subnet-0252cabc6835712af",
      "subnet-0783309e2edaddf5d",
      "subnet-0420c4032b2be5c4a"
    ]
  }

  role_arn = aws_iam_role.eks_cluster_role.arn

  depends_on = [
    aws_iam_role_policy_attachment.cluster_policy_attachment
  ]
}