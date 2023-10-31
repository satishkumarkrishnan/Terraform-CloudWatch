resource "aws_cloudwatch_metric_alarm" "tokyo_cw_ma" {
  alarm_name                = "tokyo-cw-ma"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = 2
  metric_name               = "CPUUtilization"
  namespace                 = "AWS/EC2"
  period                    = 10
  statistic                 = "Average"
  threshold                 = 1
  alarm_description         = "This metric monitors ec2 cpu utilization"
  insufficient_data_actions = []
}