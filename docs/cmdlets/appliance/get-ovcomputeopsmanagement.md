---
description: Get the appliance Compute Ops Management configuration.
---

# Get-OVComputeOpsManagement

## Syntax

```powershell
Get-OVComputeOpsManagement
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

HPE GreenLake for Compute Ops Management is a cloud-based as-a-Service application that manages various operations of HPE OneView appliances.  By integrating HPE OneView with HPE GreenLake for Compute Ops Management will unify server inventory and centralize management to a single console.  To enable the cloud management service for HPE OneView, you must onboard the appliance in the Compute Ops Management application in HPE GreenLake by using this Cmdlet to first generate the appliance ID.  Once the Cmdlet completes successfully, use the Get-OVComputeOpsManagement Cmdlet to retreive the appliance ID needed in the HPE GreenLake for Compute Ops Management to generate an activation key.  You can use this same Cmdlet with the `-ActivationKey` parameter, or Set-OVComputeOpsManagement Cmdlet to set the activation key for the appliance.

???+ info
    Minimum required privileges: Infrastructure administrator

## Examples

###  Example 1 

```powershell
Get-OVComputeOpsManagement

```

Show the connected status of the appliance to HPE GreenLake for Compute Ops Management - OneView Edition service.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this cmdlet.


## Return Values

=== "HPEOneView.Appliance.CloudSettings"
    Object that represents the current configuration
    
    

## Related Links

* [Connect-OVComputeOpsManagement](connect-ovcomputeopsmanagement.md)
* [Disable-OVComputeOpsManagement](disable-ovcomputeopsmanagement.md)
* [Enable-OVComputeOpsmanagement](enable-ovcomputeopsmanagement.md)
* [Set-OVComputeOpsManagement](set-ovcomputeopsmanagement.md)
* [Set-OVApplianceProxy](set-ovapplianceproxy.md)
