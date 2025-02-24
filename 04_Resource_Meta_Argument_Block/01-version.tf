terraform{
    required_version = "~>1.9.8"  
    
    required_providers{                  
        aws = {                           
            version = ">=5.87.0"          
            source = "hashicorp/aws"      
        }


    }
}

##this is to create an vpc in us-east-1
provider "aws"{
    region = "us-east-1"
    profile = "default"
}

##this is to create an vpc in us-east-2
provider "aws"{
    region = "us-east-2"
    alias = "aws-east" ### this is used to call the provider to create new vpc in new region we mentioned this here
    profile = "other"  ### this ia an aws configuration file this we can see in ~/.aws/credentials
}