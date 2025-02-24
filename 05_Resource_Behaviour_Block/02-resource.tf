resource "aws_instance" "my_instance"{
    ###ami = "ami-05b10e08d247fb927"
    ami = "ami-05b10e08d247fb927"
    ###availability_zone = "us-east-1a" ########if we are changing az then it will destroy the one which is already there then recreate a new one
    availability_zone = "us-east-1b"
    instance_type = "t2.micro"
    tags = {
        "Name" = "my_instance"        #########by changing Name it will be like update in place 
    }
}
