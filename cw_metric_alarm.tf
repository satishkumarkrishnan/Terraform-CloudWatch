resource "aws_cloudwatch_metric_alarm" "tokyo_cw_ma" {
  alarm_name                = "tokyo-cw-ma"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = 2
  metric_name               = "CPUUtilization"
  namespace                 = "AWS/EC2"
  period                    = "120"
  statistic                 = "Average"
  threshold                 = "80"
  alarm_description         = "This metric monitors ec2 cpu utilization"
  treat_missing_data        = "missing"
  insufficient_data_actions = []
  dimensions = {
    AutoScalingGroupName = module.asg.asg_name
  }     
   alarm_actions     = [module.asg.asg_policy_arn]
}