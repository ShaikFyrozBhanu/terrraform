### Need to create 3 buckets with different names and in different environments that is dev-botique,qa-botique,prod-botique
#### bucket name should in smaller case and start and end with alphabets or numbers

resource "aws_s3_bucket" "my_bucket"{
    for_each = {
        "dev" = "botique"
        "qa" = "botique"
        "prod" = "botique"
    }
    bucket = "${each.key}-${each.value}"
    tags={
        Environment = "each.key"
    }
}