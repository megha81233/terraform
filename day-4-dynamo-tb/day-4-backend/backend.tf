 terraform {
backend "s3" {
    bucket         = "my-s3-bucket-2003"  # Name of the S3 bucket where the state will be stored.
    region         =  "ap-south-1"
    key            = "terraform.tfstatefile" # Path within the bucket where the state will be read/written.
    dynamodb_table = "terraform-state-lock-dynamo-db" # DynamoDB table used for state locking, note: first run day-4-s3-dynamodb resource then day-4-state-remote-backend
    encrypt        = true  # Ensures the state is encrypted at rest in S3.
}
}