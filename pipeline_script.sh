#!/bin/bash

AccountName="st00ragenour"
RG="backend-rg"

echo "--------------------------------------------------------"
echo "|           Uploading to Azure Storage Account         |"
echo "--------------------------------------------------------"

Connection_String=$(az storage account show-connection-string --name $AccountName --resource-group $RG --query connectionString -o tsv)
az storage blob upload-batch \
  -d "\$web" \
  -s "website" \
  --connection-string $Connection_String \
  --overwrite \
  --pattern "*"
