/*output "asg_ec2" {
  #value = module.asg.instance.id
  value = module.asg.instance.id
}*/

output "cw_log_group" {
  value = aws_cloudwatch_log_group.tokyo_cw.name 
}

output "s3_bucket" {
  #value = aws_s3_bucket.kms_encrypted.name
  value = aws_s3_bucket.kms_encrypted.bucket
}

output "vpc_id" {
  value = aws_vpc.tokyo-vpc.id
}

output "vpc_fe_subnet" {
  value = aws_subnet.private[0]
}

output "vpc_be_subnet" {
  value = aws_subnet.private[1]
}

output "vpc_fe_sg" {
  value = aws_security_group.tokyo-securitygroup[0].id
}

output "vpc_be_sg" {
  value = aws_security_group.tokyo-securitygroup[1].id
}

output "kms_arn" {
  value = kms_key_id
}

