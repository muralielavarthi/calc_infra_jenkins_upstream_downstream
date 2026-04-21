resource "aws_instance" "web_server-1" {
  ami             = "ami-0220d79f3f480ecf5"
  vpc_security_group_ids = [data.aws_ssm_parameter.sg_id.value]
  instance_type   = "t2.micro"
  tags = {
    Name = "web_server-1"
  }
}