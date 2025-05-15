resource "aws_vpc" "bhanu_vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "bhanu_subnet" {
  vpc_id                  = aws_vpc.bhanu_vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
}


resource "aws_instance" "tf-server" {
  ami           = "ami-0c02fb55956c7d316"  # Amazon Linux 2 for us-east-1
  #availability_zone = "us-east-1b"
  availability_zone = "us-east-1a"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.bhanu_subnet.id

  tags = {
    Name = "web_server"
  }
  lifecycle{
    prevent_destroy = true
  }
}

resource "aws_instance" "tf-server1" {
  ami           = "ami-0c02fb55956c7d316"  # Amazon Linux 2 for us-east-1
  #availability_zone = "us-east-1b"
  availability_zone = "us-east-1a"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.bhanu_subnet.id

  tags = {
    Name = "web_server1"
  }
}


#### ususally when we give "terraform destroy" it will destroy all the resources which we created
#### but in this case hen we give destroy it will give an errror like preventing to destroy "tf-server", soo
#### it didn't even destroy "tf-server1", so if developer want to delete specific resource while giving this lifecycle meta argument prevent_destroy
### we need to specify --target flag as (terraform destroy --target aws_instance.tf-server1)
