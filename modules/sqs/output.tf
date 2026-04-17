output "queue_arn" {
  value = aws_sqs_queue.sqs.arn
}

output "queue_url" {
  value = aws_sqs_queue.sqs.id
}
