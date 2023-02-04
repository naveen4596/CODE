provider "aws" {
region="us-west-1"
access_key=""
secret_key= ""
}

resource "aws_iam_user" "user1"{
name= "user1"
}

resource "aws_iam_user" "user2"{
name= "user2"
}

resource "aws_iam_user" "user3"{
name= "user3"
}



resource "aws_iam_group" "group"{
name= "group1"
}

resource "aws_iam_group_membership" "test"{
name= "users with grp"

users=[aws_iam_user.user1.name,aws_iam_user.user2.name,aws_iam_user.user3.name]
group= aws_iam_group.group.name
}

