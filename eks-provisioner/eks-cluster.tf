resource "aws_eks_cluster" "sales-order-system-eks-cluster" {
    name        = "eks-cluster"
    role_arn    = aws_iam_role.eks_cluster_role.arn
    
    vpc_config  {
        subnet_ids = ["subnet-c6e1d98b", "subnet-96acd9c9", "subnet-358ee653", "subnet-a9cabd88", "subnet-5bb49655"]
    }
}

resource "aws_iam_role" "eks_cluster_role" {
    name = "eks-cluster-role"

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

resource "aws_iam_role_policy_attachment" "sales-order-system-AmazonEKSClusterPolicy" {
    policy_arn  = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
    role        = aws_iam_role.eks_cluster_role.name
}

resource "aws_iam_role_policy_attachment" "sales-order-system-AmazonEKSServicePolicy" {
    policy_arn  = "arn:aws:iam::aws:policy/AmazonEKSServicePolicy"
    role        = aws_iam_role.eks_cluster_role.name
}