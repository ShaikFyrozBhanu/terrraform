resource "aws_subnet" "my_sub"{
    vpc_id = aws_vpc.fyroz_vpc.id
    availability_zone = "us-east-1a"
    cidr_block = "10.0.0.0/16"
    tags = {
        "Name" = "my_sub"
    }
}