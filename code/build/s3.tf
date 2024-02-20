provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "49a211e9-1118-4899-962b-4ddf633e2e92"
    git_commit           = "61791a27879faaee4239ebe633bf59d79b60b925"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-02-20 17:25:56"
    git_last_modified_by = "carlos.e.coy@gmail.com"
    git_modifiers        = "carlos.e.coy"
    git_org              = "cecoy"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
