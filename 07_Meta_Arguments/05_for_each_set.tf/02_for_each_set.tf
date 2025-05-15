resource "aws_iam_user" "tf-user"{
    for_each = toset(["dingi" , "dinga"])
    name = each.key
}