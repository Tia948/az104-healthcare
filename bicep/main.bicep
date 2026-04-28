param availabilitySets_as_labos_compute_name string = 'as-labos-compute'
param virtualMachines_VM_LABO_01_externalid string = '/subscriptions/613ed35f-7368-45ee-9ed5-2f8dfea5a24d/resourceGroups/RG-LABO-COMPUTE/providers/Microsoft.Compute/virtualMachines/VM-LABO-01'
param virtualMachines_VM_LABO_02_externalid string = '/subscriptions/613ed35f-7368-45ee-9ed5-2f8dfea5a24d/resourceGroups/RG-LABO-COMPUTE/providers/Microsoft.Compute/virtualMachines/VM-LABO-02'

resource availabilitySets_as_labos_compute_name_resource 'Microsoft.Compute/availabilitySets@2025-04-01' = {
  name: availabilitySets_as_labos_compute_name
  location: 'northeurope'
  sku: {
    name: 'Aligned'
  }
  properties: {
    platformUpdateDomainCount: 5
    platformFaultDomainCount: 2
    virtualMachines: [
      {
        id: virtualMachines_VM_LABO_01_externalid
      }
      {
        id: virtualMachines_VM_LABO_02_externalid
      }
    ]
  }
}
