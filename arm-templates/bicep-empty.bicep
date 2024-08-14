param location string

resource sample 'Microsoft.Storage/storageAccounts@2019-06-01' = {
  name: 'storageaccount01'
  location: location
  sku: { name: 'Standard_LRS' }
  kind: 'StorageV2'
  properties: {
    supportsHttpsTrafficOnly: true
  }
}
