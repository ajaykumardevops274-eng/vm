rg-name = {
  "metarg1"  = "eastus"
  "metarg2"  = "westus"
  "metarg3" = "centralindia"
}


meta_storge = { 
    
    "stgn1" = {
        name = "nestedmeta21"
        location = "eastus"
        resource_group_name = "metarg1"
        account_tier = "Standard"
        account_replication_type = "GRS"

    }

    "stgn2" = {
        name = "nestedmeta22"
        location = "westus"
        resource_group_name = "metarg2"
        account_tier = "Standard"
        account_replication_type = "GRS"

    }

    "stgn3" = {
        name = "nestedmeta23"
        location = "centralindia"
        resource_group_name = "metarg3"
        account_tier = "Standard"
        account_replication_type = "GRS"

    }
    
}