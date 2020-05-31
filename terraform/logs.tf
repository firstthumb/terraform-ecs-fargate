# logs.tf

resource "aws_cloudwatch_log_group" "rest_log_group" {
  name              = "/ecs/rest-app"
  retention_in_days = 30

  tags = {
    Name = "rest-log-group"
  }
}

resource "aws_cloudwatch_log_stream" "rest_log_stream" {
  name           = "rest-log-stream"
  log_group_name = aws_cloudwatch_log_group.rest_log_group.name
}

