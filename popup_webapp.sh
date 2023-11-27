export RESOURCE_GROUP=learn-b5e83438-dae8-493c-98a9-b29dffe2251e
export AZURE_REGION=eastus
export AZURE_APP_PLAN=popupappplan-$RANDOM
export AZURE_WEB_APP=popupwebapp-$RANDOM


az group list --output table
az group list --query "[?name == '$RESOURCE_GROUP']"


az appservice plan create --help
az appservice plan create --name $AZURE_APP_PLAN --resource-group $RESOURCE_GROUP --location $AZURE_REGION --sku FREE
az appservice plan list --output table


az webapp create --name $AZURE_WEB_APP --resource-group $RESOURCE_GROUP --plan $AZURE_APP_PLAN
az webapp list --output table


site="http://$AZURE_WEB_APP.azurewebsites.net"
echo $site
curl $site


az webapp deployment source config --name $AZURE_WEB_APP --resource-group $RESOURCE_GROUP --repo-url "https://github.com/Azure-Samples/php-docs-hello-world" --branch master --manual-integration
curl $site
