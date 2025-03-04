module "s3_bucket" {
    source = "terraform-aws-modules/s3-bucket/aws"

    bucket = "my-s3_bucket-2003"
    acl = "private"

    control_object_ownership = true
    object_ownership = "objectWriter"

    versioning = {
        enabled=true
    }

  
}