---
description: Reestablish appliance connection to Compute Ops Management.
---

# Connect-OVComputeOpsManagement

## Syntax

```powershell
Connect-OVComputeOpsManagement
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

HPE GreenLake for Compute Ops Management is a cloud-based as-a-Service application that manages various operations of HPE OneView appliances.  By integrating HPE OneView with HPE GreenLake for Compute Ops Management will unify server inventory and centralize management to a single console.  To enable the cloud management service for HPE OneView, you must onboard the appliance in the Compute Ops Management application in HPE GreenLake by using the Enable-OVComputeOpsManagement and Set-OVComputeOpsManagement Cmdlets.

This Cmdlet is used to re-connect an already configured, yet disconnected appliance.

???+ info
    Minimum required privileges: Infrastructure administrator

## Examples

###  Example 1 

```powershell
Connect-OVComputeOpsManagement

```

Reestablish connection to Compute Ops Management.

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

=== "HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Async task resource to monitor.
    

## Related Links

* [Disable-OVComputeOpsManagement](disable-ovcomputeopsmanagement.md)
* [Enable-OVComputeOpsmanagement](enable-ovcomputeopsmanagement.md)
* [Get-OVComputeOpsManagement](get-ovcomputeopsmanagement.md)
* [Set-OVComputeOpsManagement](set-ovcomputeopsmanagement.md)
* [Set-OVApplianceProxy](set-ovapplianceproxy.md)
