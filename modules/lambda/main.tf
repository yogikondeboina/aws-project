resource "aws_lambda_function" "lambda" {
  function_name = var.function_name
  role          = var.iam_role_arn
  handler       = var.handler
  runtime       = var.runtime

  filename         = var.filename
  source_code_hash = filebase64sha256(var.filename)

  dead_letter_config {
    target_arn = aws_sqs_queue.queue.arn
  }

  timeout = var.timeout


  environment {
    variables = var.environment_variables
  }

  tags = var.tags
}

resource "aws_iam_role_policy" "lambda_sqs" {
  role = aws_iam_role.lambda_role.id

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Action = ["sqs:SendMessage"],
        Resource = var.dlq_arn
      }
    ]
  })
}