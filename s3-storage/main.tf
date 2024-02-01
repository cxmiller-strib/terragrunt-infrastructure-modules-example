resource "aws_s3_bucket" "this" {
  bucket = "${var.name}-${var.environment}-${var.aws_region}"

  tags = merge(
    var.tags,
    {
      Name        = var.name
      Environment = var.environment
    }
  )
}
