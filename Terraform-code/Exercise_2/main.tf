provider "aws" {
  access_key = "<ACCESS_KEY>"
  secret_key = "<SECRET_KEY>"
  region = var.aws_region
}

data "archive_file" "zip" {  
  type = "zip"  
  source_file = "./greet_lambda.py"
  output_path = "./bin/lambda.zip"
}


resource "aws_lambda_function" "Part2" {
  function_name = "Part2"
  runtime       = "python3.10"
  handler       = "greet_lambda.lambda_handler"
  role          = "arn:aws:iam::181184324835:role/Lambda_full"
  filename      = "./bin/lambda.zip"

  environment {
    variables = {
      greeting: var.greeting_var
    }
  }
}
