#Key pair

resource "aws_key_pair" "deployer" {
  key_name   = "tws-key"
  public_key = file("/Users/manpreetsingh/Desktop/terraform/terrakey.pub")

}

#AWS VPC

resource "aws_default_vpc" "default" {

}

#Security Group

resource "aws_security_group" "twsSG" {
  name        = "allow-ports"
  description = "This SG open for EC2"
  vpc_id      = aws_default_vpc.default.id
  ingress {
    description = "This is for incomming traffic"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    description = "This is for outgoing traffic"
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }
}

#EC2

resource "aws_instance" "my-EC2" {
  ami             = "ami-0ea3c35c5c3284d82"
  instance_type   = "t2.micro"
  key_name        = aws_key_pair.deployer.key_name
  security_groups = [aws_security_group.twsSG.name]

  tags = {
    Name = "terra-automate"
  }
}
