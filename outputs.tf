output "asg_ec2" {
  value = module.asg.instance.id  
}

output "cw_log_group" {
  value = aws_cloudwatch_log_group.tokyo_cw.name 
}