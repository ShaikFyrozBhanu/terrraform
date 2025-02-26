resource "aws_network_interface" "test" {
  subnet_id = aws_subnet.my_sub.id
  tags = {
        "Name" = "my_Net"
    }
}

resource "aws_route_table" "fyroz_table"{
    vpc_id = aws_vpc.fyroz_vpc.id
    route{
        cidr_block = "10.1.0.0/16"
        network_interface_id = aws_network_interface.test.id
    }
    tags = {
        "Name" = "my_Route"
    }

}