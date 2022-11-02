# EC2 Instance
resource "aws_instance" "myec2" {
  ami = data.aws_ami.amzlinux2.id
  #instance_type = var.instance_type
  instance_type = var.instance_type_list[0] # reference List values
  #instance_type = var.instance_type_map["dev"] #reference Map values
  key_name = var.instance_keypair
  user_data = file("${path.module}/app1-install.sh")
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id,aws_security_group.vpc-web.id]
  count =2 
  tags = {
    "Name" = "EC2-Demo-${count.index}"
  }
  
}