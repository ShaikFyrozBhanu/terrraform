terraform{
    required_version = "~>1.9.8"
    required_providers{                  
        aws = {                           
            version = "~> 5.0"          
            source = "hashicorp/aws"      
        }
    }
}
provider "aws"{
    profile = "default"
    region = "us-east-1"
}