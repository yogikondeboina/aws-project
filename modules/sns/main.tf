resource "aws_sns_topic" "topic" {
  name = var.topic_name
}

resource "aws_sns_topic_subscription" "email" {
  topic_arn = aws_sns_topic.topic.arn
  protocol  = "azdevopsazure@gmail.com"
  endpoint  = var.email
}
