Connect-AzAccount

$rgName = "ARMテンプレートの練習"
$deploymentName = "mytemplate"
$location = "japanwest"
$templateFile = "./explore-arm-template.json"

New-AzResourceGroup -Name $rgName -Location $location

New-AzResourceGroupDeployment -Name $deploymentName -ResourceGroupName $rgName -TemplateFile $templateFile
