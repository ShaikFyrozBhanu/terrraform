resource "aws_instance" "bhanu_instance"{
    instance_type = "t2.micro"
    ami = "ami-0953476d60561c955"
    provider = aws.europe
    tags = {
        "Name" = "my_instance1"
    }
}
