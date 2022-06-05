resource "aws_vpc" "this" {
  cidr_block = "192.168.0.0/16"
  tags = {
    "Name" = "Terraform VPC"
  }
}

resource "aws_internet_gateway" "this" {
  vpc_id = aws_vpc.this.id
  tags = {
    "Name" = "Terraform IGW"
  }
}

resource "aws_subnet" "public_a" {
  vpc_id            = aws_vpc.this.id
  cidr_block        = "192.168.0.0/24"
  availability_zone = "${var.aws_region}a"
  tags = {
    "Name" = "Public A"
  }
}

resource "aws_subnet" "public_b" {
  vpc_id            = aws_vpc.this.id
  cidr_block        = "192.168.1.0/24"
  availability_zone = "${var.aws_region}b"
  tags = {
    "Name" = "Public B"
  }
}


resource "aws_subnet" "private_a" {
  vpc_id            = aws_vpc.this.id
  cidr_block        = "192.168.2.0/24"
  availability_zone = "${var.aws_region}a"
  tags = {
    "Name" = "Private A"
  }
}

resource "aws_subnet" "private_b" {
  vpc_id            = aws_vpc.this.id
  cidr_block        = "192.168.3.0/24"
  availability_zone = "${var.aws_region}b"
  tags = {
    "Name" = "Public B"
  }
}
