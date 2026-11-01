resource "aws_s3_bucket_policy" "releases" {
  bucket = "trustline-demo-release-artifacts"
  policy = file("policy.json")
}
