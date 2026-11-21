resource "aws_cloudwatch_metric_alarm" "billing_estimate" {
  alarm_name        = "terraform-governance-billing-estimate"
  alarm_description = "Example billing monitoring alarm for AWS governance learning."

  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 1
  threshold           = 10

  metric_name = "EstimatedCharges"
  namespace   = "AWS/Billing"
  period      = 21600
  statistic   = "Maximum"

  dimensions = {
    Currency = "USD"
  }

  treat_missing_data = "missing"
  actions_enabled    = false

  tags = {
    Project     = "terraform-aws-trusted-advisor-lab"
    Environment = "learning"
    ManagedBy   = "Terraform"
  }
}
