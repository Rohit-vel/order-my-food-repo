resource "aws_eks_cluster" "project_cluster" {
  name                        = "project_cluster"
  role_arn                    = aws_iam_role.project_role.arn

  #outpost_config {
       #control_plane_instance_type = "t2.medium"
       #outpost_arns                = [data.aws_outposts_outpost.cluster.arn]
  #}
  vpc_config {
    subnet_ids = [aws_subnet.public-sub-1.id, aws_subnet.public-sub-2.id, aws_subnet.public-sub-3.id]
  }

  # Ensure that IAM Role permissions are created before and deleted after EKS Cluster handling.
  # Otherwise, EKS will not be able to properly delete EKS managed EC2 infrastructure such as Security Groups.
  depends_on = [
    aws_iam_role_policy_attachment.project_role-AmazonEKSClusterPolicy,
    aws_iam_role_policy_attachment.project_role-AmazonEKSVPCResourceController,
  ]
}

output "endpoint" {
  value = aws_eks_cluster.project_cluster.endpoint
}

output "kubeconfig-certificate-authority-data" {
  value = aws_eks_cluster.project_cluster.certificate_authority[0].data
}

############ IAM Role for cluster ##################################

resource "aws_iam_role" "project_role" {
  name = "project-cluster-role"

  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "eks.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role_policy_attachment" "project_role-AmazonEKSClusterPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = aws_iam_role.project_role.name
}

# Optionally, enable Security Groups for Pods
# Reference: https://docs.aws.amazon.com/eks/latest/userguide/security-groups-for-pods.html
resource "aws_iam_role_policy_attachment" "project_role-AmazonEKSVPCResourceController" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController"
  role       = aws_iam_role.project_role.name
}


