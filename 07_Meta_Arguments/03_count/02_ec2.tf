resource "aws_vpc" "bhanu_vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "bhanu_subnet" {
  vpc_id                  = aws_vpc.bhanu_vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
}

#### wanted to create 2 instances with same infrastructure and name also be same with some index change at the end at this situation we prefer to use count

resource "aws_instance" "tf-server" {
  count         = 2
  ami           = "ami-0c02fb55956c7d316"  # Amazon Linux 2 for us-east-1
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.bhanu_subnet.id

  tags = {
    Name = "tf-server-${count.index}"
  }
}
