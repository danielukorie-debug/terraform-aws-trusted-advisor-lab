output "billing_alarm_name" {
  description = "Name of the planned billing alarm."
  value       = aws_cloudwatch_metric_alarm.billing_estimate.alarm_name
}

output "billing_alarm_arn" {
  description = "ARN of the planned billing alarm."
  value       = aws_cloudwatch_metric_alarm.billing_estimate.arn
}
