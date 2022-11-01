resource "aws_instance" "myec2" {
    ami = "ami-09d3b3274b6c5d4aa"
    instance_type = "t2.micro"
    user_data = file("${path.module}/app1-install.sh")
    tags = {
      "Name" = "EC2 Demo"
    }
}