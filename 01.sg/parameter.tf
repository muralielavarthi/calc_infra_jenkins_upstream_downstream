resource "aws_ssm_parameter" "sg_id" {
  name  = "/calculator/sg_id"
  type  = "String"
  value = aws_security_group.ec2_sg.id
}