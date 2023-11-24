param([string]$resourceGroup)

$adminCredential = Get-Credential -Message "Enter a username and password for the VM administrator."
$vmImageUrn = "Canonical:0001-com-ubuntu-server-focal:20_04-lts:latest"

for ($i = 0; $i -lt 3; $i++) {
    $vmName = "ConferenceDemo" + $i
    Write-Host "Creating VM: " $vmName
    New-AzVM -ResourceGroupName $resourceGroup -Name $vmName -Credential $adminCredential -Image $vmImageUrn
}

# 並列化してみる
3..5 | Foreach-Object -ThrottleLimit 5 -Parallel {
    $vmName = "ConferenceDemo$_"
    Write-Host "Creating VM: $vmName"
    New-AzVM -ResourceGroupName $using:resourceGroup -Name $vmName -Credential $using:adminCredential -Image $using:vmImageUrn | Out-File -FilePath "log$_.txt"
    Write-Host "Successfully created VM: $vmName"
}
