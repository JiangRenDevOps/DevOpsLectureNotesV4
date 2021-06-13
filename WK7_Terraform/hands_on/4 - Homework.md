# Homework

## Question 1
In the first handon [1 - s3_lamda_gateway_api.md](1%20-%20s3_lamda_gateway_api.md), you may notice that we manually create
S3 and copy file over it.
Can you write a terraform code block that creates the S3 bucket?

Tip: Refer to https://www.terraform.io/docs/providers/aws/r/s3_bucket.html and https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html

## Question 2
Go through our terraform code base, what other attributes can you parametrise into variables.tf file?

Which of these variables should live in the `hands_on/variables.tf` file and which should live in the `hands_on/staging/services/backend_app/variables.tf` file?

Why?

## Question 3
How do you determine the changes between two different deployments in the past?

## Question 4
IaC code is also code. Think about programming best practices. How can you test your terraform code?
