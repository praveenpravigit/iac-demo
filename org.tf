resource "aws_cloudfront_origin_request_policy" "example" {
  name    = "example-policy"
  comment = "example comment"
  cookies_config {
    cookie_behavior = "whitelist"
    cookies {
      items = ["Host"]
    }
  }
  headers_config {
    header_behavior = "whitelist"
    headers {
      items = ["Host"]
    }
  }
  query_strings_config {
    query_string_behavior = "whitelist"
    query_strings {
      items = ["Host"]
    }
  }
}
