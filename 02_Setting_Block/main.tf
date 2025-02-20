###terraform settings block/terraform block which is used to define the terraform configuration itself in config file like version, providers etc..,
terraform{
    required_version = "~>1.9.8"  #### version constraints, it will compare with the locally installed terraform version with this mentioned version if it doesn't match it will through an error and exits
    
    required_providers{                   #### we can mention as many providers as we want this should contain below three areas
        aws = {                           #### local provider name this we can give as we want ex:my_aws etc..,
            version = ">=5.87.0"          #### provider version this one also constraint version this will compare with aws version which in registry and with this version if it doesn't match it will through an error and exits
            source = "hashicorp/aws"      #### source address actually even we mention like hashicorp/aws it will go to "https://registry.io/hashicorp/aws"
        }


    }
}
provider "aws"{
    region = "us-east-1"
    ####Don't disclose your crediatials to any SCM(Git Hub) otherwise your will suspend by getting mail as your data has exposed, then we need to create a new account
    access key ="*********"
    secreat key = "*******"
}
###this is a resource block which is used to create our resources inside the provider here it is aws so we have to give aws credetials to create resources
resource "aws_vpc" "fyroz_vpc"{
    cidr_block = "10.0.0.0/16"
    tags = {
        "name" = "my_vpc"
    }
}