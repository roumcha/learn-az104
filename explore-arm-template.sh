az login

rgName="ARMテンプレートの練習"
deploymentName="mytemplate"
location="japanwest"
templateFile="./explore-arm-template.json"

az group create --name $rgName --location $location

az deployment group create --name $deploymentName --resource-group $rgName --template-file $templateFile
