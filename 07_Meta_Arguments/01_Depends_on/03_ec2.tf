#####before creating instance we need vpc and subnet so for that scenario we can we depends_on meta argument, but don't use it as regular basis very rare case it is prefered.

resource "aws_instance" "fyroz_instance"{
    availability_zone = "us-east-1a"
    ami = "ami-05b10e08d247fb927"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.my_sub.id
    depends_on = [
        aws_vpc.fyroz_vpc
    ]
    tags = {
        "Name" = "my_instance"
    }
}