data "aws_ami" "app_ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["bitnami-tomcat-*-x86_64-hvm-ebs-nami"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["979382823631"] # Bitnami
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.app_ami.id
  instance_type = "t3.nano"

  tags = {
    Name = "HelloWorld"
  }
resource "aws_subnet" "some_public_subnet" {
  vpc_id            = vpc-0f72d0fcb34f25235
 # cidr_block        = "10.0.1.0/24"
 # availability_zone = "us-east-1a"

  tags = {
    Name = "vpc-0f72d0fcb34f25235"
  }
}

}
