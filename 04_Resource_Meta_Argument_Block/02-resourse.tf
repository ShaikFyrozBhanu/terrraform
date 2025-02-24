resource "aws_vpc" "my_vpc"{
    cidr_block = "10.0.0.0/16"
    tags = {
        "Name" = "my_vpc"
    }
}
resource "aws_vpc" "myaws_vpc"{
    cidr_block = "10.1.0.0/16"
    tags = {
        "Name" = "myaws_vpc"
    }
    provider = aws.aws-east     ##This is a meta argument for this we don't have to mention in double quotes and [syntax: provider = provider.alias]
}