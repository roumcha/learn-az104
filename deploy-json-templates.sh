az login

today=$(date "+%F")
subscriptionId=$(az account show --query id --output tsv)
rgName="learn-7f07b0b8-93be-4a66-9d1f-8dbc3f17e898"
deploymentName="storage-$today"
templateFile="deploy-json-templates.json"

az account set --subscription $subscriptionId

# Azure CLI には `Set-AzDefault-ResourceGroupName "$rgName"` 相当の機能はないっぽい

az deployment group create \
    --name $deploymentName \
    --resource-group $rgName \
    --template-file $templateFile \
    --parameters \
        storageSKU=Standard_LRS \
        storageName="20231204learntemplate"

az logout
