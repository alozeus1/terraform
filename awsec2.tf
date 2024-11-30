resource "aws_instance" "terraform-demo" {
  ami           = "ami-0022f774911c1d690"
  instance_type = "t2.micro"
  key_name      = "demo"
  tags = {
    Name = "Jenkins"
    Env  = "dev"
    Owner = "alo"
  }
}

output "public-ip" {
  value = aws_instance.terraform-demo.public_ip
}
output "public-dns" {
  value = aws_instance.terraform-demo.public_dns
}
