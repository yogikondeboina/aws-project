resource "aws_sqs_queue" "sqs" {
  name = var.queue_name

  message_retention_seconds = 1209600
  visibility_timeout_seconds = 30

  tags = var.tags
}