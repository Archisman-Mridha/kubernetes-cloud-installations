resource "aws_iam_group" "iam_group" {
    name= "kops"
}

//-- policies

    resource "aws_iam_group_policy_attachment" "ec2_full_access" {
        policy_arn= "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
        group= aws_iam_group.iam_group.name
    }

    resource "aws_iam_group_policy_attachment" "s3_full_access" {
        policy_arn= "arn:aws:iam::aws:policy/AmazonS3FullAccess"
        group= aws_iam_group.iam_group.name
    }

    resource "aws_iam_group_policy_attachment" "vpc_full_access" {
        policy_arn= "arn:aws:iam::aws:policy/AmazonVPCFullAccess"
        group= aws_iam_group.iam_group.name
    }

    resource "aws_iam_group_policy_attachment" "iam_full_access" {
        policy_arn= "arn:aws:iam::aws:policy/IAMFullAccess"
        group= aws_iam_group.iam_group.name
    }

//--