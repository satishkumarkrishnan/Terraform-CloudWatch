output "asg_ec2" {
  value = module.asg.instance.id  
}

output "cw_log_group" {
  value = aws_cloudwatch_log_group.tokyo_cw.name 
}

output "s3_bucket" {
  value = aws_s3_bucket.kms_encrypted.name
}