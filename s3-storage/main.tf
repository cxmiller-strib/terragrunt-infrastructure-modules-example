locals {
  bucket_name = "${var.name}-${var.environment}-${var.aws_region}"
}

resource "aws_s3_bucket" "this" {
  bucket = local.bucket_name

  tags = merge(
    var.tags,
    {
      Name        = local.bucket_name
      Environment = var.environment
    }
  )
}
