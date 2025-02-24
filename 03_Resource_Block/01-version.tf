terraform{
    required_version = "~>1.9.8"  
    
    required_providers{                  
        aws = {                           
            version = ">=5.87.0"          
            source = "hashicorp/aws"      
        }


    }
}
provider "aws"{
    region = "us-east-1"
}