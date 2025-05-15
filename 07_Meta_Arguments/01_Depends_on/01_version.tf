terraform{
    required_version = "~>1.9.8"
    required_provider = {
        aws = {
            source = "hashicorp/aws"
            version = ">=6.0.0-beta1"
        }
    }

}
provider "aws"{
    profile = "default"
    region = "us-east-1"
}