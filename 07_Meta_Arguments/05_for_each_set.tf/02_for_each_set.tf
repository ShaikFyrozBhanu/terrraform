### Need to create 2 users here in this case for_each set we can see only keys so in this case we can say each.key = each.value

resource "aws_iam_user" "tf-user"{
    for_each = toset(["dingi" , "dinga"])
    name = each.key
}