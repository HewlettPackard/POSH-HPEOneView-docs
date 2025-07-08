---
description: Enable Compute Ops Management configuration.
---

# Enable-OVComputeOpsmanagement

## Syntax

```powershell
Enable-OVComputeOpsmanagement
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
Enable-OVComputeOpsmanagement
    [-ActivationKey] <string>
    [<CommonParameters>]
```

## Description

HPE GreenLake for Compute Ops Management is a cloud-based as-a-Service application that manages various operations of HPE OneView appliances.  By integrating HPE OneView with HPE GreenLake for Compute Ops Management will unify server inventory and centralize management to a single console.  To enable the cloud management service for HPE OneView, you must onboard the appliance in the Compute Ops Management application in HPE GreenLake by using this Cmdlet to first generate the appliance ID.  Once the Cmdlet completes successfully, use the Get-OVComputeOpsManagement Cmdlet to retreive the appliance ID needed in the HPE GreenLake for Compute Ops Management to generate an activation key.  You can use this same Cmdlet with the `-ActivationKey` parameter, or Set-OVComputeOpsManagement Cmdlet to set the activation key for the appliance.

???+ info
    Minimum required privileges: Infrastructure administrator

## Examples

###  Example 1 

```powershell
[PS] C:\> Enable-OVComputeOpsManagement
Appliance            Name                                 Owner         Created              Duration
---------            ----                                 -----         -------              ---
appliance.domain.com Edit Compute Ops Management settings Administrator 9/20/2023 6:42:02 PM 00ΓÇª

[PS] C:\> Get-OVComputeOpsManagement

Management          : Enabled
ApplianceID         : ed0538b9-011e-48d4-a70a-5b108e029ed1
AccountID           : a23cb1d4ecbe0aeca28966cc2ae80cb3
ConnectionState     : Connected
Region              : us-west
Url                 : https://us-west2.compute.cloud.hpe.com/
ApplianceConnection : appliance.domain.com
```

Enable the Compute Ops Management agent on the appliance, generating the appliance ID.

###  Example 2 

```powershell
$ActivationKey = "string"
Enable-OVComputeOpsManagement -ActivationKey $ActivationKey
```

Activate the appliance.

## Parameters

### -ActivationKey &lt;string&gt;

String value of the appliance unique activation key from the HPE GreenLake for Compute Ops Management portal.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

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

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
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

* [Connect-OVComputeOpsManagement](connect-ovcomputeopsmanagement.md)
* [Disable-OVComputeOpsManagement](disable-ovcomputeopsmanagement.md)
* [Get-OVComputeOpsManagement](get-ovcomputeopsmanagement.md)
* [Set-OVComputeOpsManagement](set-ovcomputeopsmanagement.md)
* [Set-OVApplianceProxy](set-ovapplianceproxy.md)
