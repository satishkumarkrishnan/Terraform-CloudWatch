
resource "aws_cloudwatch_log_data_protection_policy" "tokyo_cw_dp" {
  log_group_name = aws_cloudwatch_log_group.tokyo_cw.name

  policy_document = jsonencode({
    Name    = "Example"
    Version = "2021-06-01"

    Statement = [
      {
        Sid            = "Audit"
        DataIdentifier = ["arn:aws:dataprotection::aws:data-identifier/EmailAddress"]
        Operation = {
          Audit = {
            FindingsDestination = {
              S3 = {
                Bucket = module.cloudwatch.s3_bucket_name
              }
            }
          }
        }
      },
      {
        Sid            = "Redact"
        DataIdentifier = ["arn:aws:dataprotection::aws:data-identifier/EmailAddress"]
        Operation = {
          Deidentify = {
            MaskConfig = {}
          }
        }
      }
    ]
  })
}