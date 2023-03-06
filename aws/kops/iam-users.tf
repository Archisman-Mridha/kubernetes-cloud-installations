resource "aws_iam_user" "kops" {
    name= "kops"
}

// adding the `kops` iam user to the `aws_kops_Demo` iam group
resource "aws_iam_group_membership" "kops_kops_iam_group_membership" {
    name= "kops_kops_iam_group_membership"

    group= aws_iam_group.kops_iam_group.name
    users= [aws_iam_user.kops.name]
}

//-- outputting the access and secret keys of `kops` iam user

    resource "aws_iam_access_key" "kops_iam_access_key" {
        user= aws_iam_user.kops.name
    }

    output "kops_access_key" {
        value= aws_iam_access_key.kops_iam_access_key.id

        sensitive= true
    }

    output "kops_secret_key" {
        value= aws_iam_access_key.kops_iam_access_key.secret

        sensitive= true
    }

//--