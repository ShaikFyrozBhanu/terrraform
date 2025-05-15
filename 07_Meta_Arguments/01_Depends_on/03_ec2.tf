resource "aws_instance" "fyroz_instance"{
    availability_zone = "us-east-1a"
    ami = "ami-05b10e08d247fb927"
    instance_type = "t2.micro"
    depends_on = [
        aws_vpc.fyroz_vpc
    ]
    tags = {
        "Name" = "my_instance"
    }
}