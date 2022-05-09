//Netskope Resources
//
//Create Publisher in Netskope
resource "netskope_publishers" "Publisher" {
  name = var.publisher_name
}

//AWS Data
//
// Filter Netskope Publishers AMIs for the latests version
data "aws_ami" "npa-publisher" {
  most_recent = true
  owners      = ["679593333241"]

  filter {
    name   = "name"
    values = ["Netskope Private Access Publisher*"]
  }
}



// Create EC2 Instance for the Publisher
resource "aws_instance" "NPAPublisher" {
  ami                         = var.ami_id != "" ? var.ami_id : "${data.aws_ami.npa-publisher.id}"
  associate_public_ip_address = var.associate_public_ip_address
  instance_type               = var.aws_instance_type
  key_name                    = var.aws_key_name
  subnet_id                   = var.aws_subnet
  vpc_security_group_ids      = [var.aws_security_group]
  user_data                   = netskope_publishers.Publisher.token

  tags = {
    "Name" = var.publisher_name
  }

}