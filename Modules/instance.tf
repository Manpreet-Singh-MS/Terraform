#EC2

resource "aws_instance" "my-EC2" {
  count = var.instance_count
  ami             = var.ami_id
  instance_type   = var.instance_type
  tags = {
    Name = "${var.env}terra-automate"
  }
}