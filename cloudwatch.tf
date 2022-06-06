resource "aws_cloudwatch_metric_alarm" "up" {
  alarm_name          = "ASG Up"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 1
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 60
  statistic           = "Average"
  threshold           = 30

  dimensions = {
    "AutoScalingGroupName" = aws_autoscaling_group.this.id
  }

  actions_enabled = true
  alarm_actions   = [aws_autoscaling_policy.scaleUp.arn]
}

resource "aws_cloudwatch_metric_alarm" "down" {
  alarm_name          = "ASG Down"
  comparison_operator = "LessThanOrEqualToThreshold"
  evaluation_periods  = 1
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 60
  statistic           = "Average"
  threshold           = 40

  dimensions = {
    "AutoScalingGroupName" = aws_autoscaling_group.this.id
  }

  actions_enabled = true
  alarm_actions   = [aws_autoscaling_policy.scaleDown.arn]
}
