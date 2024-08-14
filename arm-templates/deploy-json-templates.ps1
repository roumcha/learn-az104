Connect-AzAccount

$today = Get-Date -Format "yyyy-MM-dd"
$subscription = Get-AzSubscription
$rgName = "learn-7f07b0b8-93be-4a66-9d1f-8dbc3f17e898"
$deploymentName = "storage-$today"
$templateFile = "deploy-json-templates.json"

Set-AzContext $subscription

Set-AzDefault -ResourceGroupName "$rgName"

New-AzResourceGroupDeployment `
    -Name $deploymentName `
    -TemplateFile $templateFile `
    -storageSKU Standard_LRS `
    -storageName "20231204learntemplate" `
| ConvertTo-Json -Depth 10

Disconnect-AzAccount
