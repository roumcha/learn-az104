# 解説

Connect-AzAccount

$rgName = "ARMテンプレートの練習"
$location = "japanwest"
$deploymentName = "mytemplate"
$templateFile = "explore-arm-template.json"

New-AzResourceGroup -Name $rgName -Location $location
New-AzResourceGroupDeployment `
    -Name $deploymentName `
    -ResourceGroupName $rgName `
    -TemplateFile $templateFile

Disconnect-AzAccount

# 演習

Connect-AzAccount
$subscription = Get-AzSubscription
Set-AzContext $subscription
Set-AzDefault `
    -ResourceGroupName learn-45bb597f-88eb-44df-92ff-cff6b65a2290

$templateFile = "azuredeploy.json"
$today = Get-Date -Format "yyyy-MM-dd"
$deploymentName = "addstorage-$today"
New-AzResourceGroupDeployment `
    -Name $deploymentName `
    -TemplateFile $templateFile
