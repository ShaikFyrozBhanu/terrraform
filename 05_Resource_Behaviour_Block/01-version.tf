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
}