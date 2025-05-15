########here we are defining the provider which means hear we are altering the resource default behaviour and we will call it by using alias in provider block

resource "aws_instance" "bhanu_instance"{
    instance_type = "t2.micro"
    ami = "ami-0953476d60561c955"
    provider = aws.europe
    tags = {
        "Name" = "my_instance1"
    }
}
