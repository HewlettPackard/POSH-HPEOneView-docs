---
description: Get HPE Synergy Image Streamer deployment plan parameters.
---

# Get-HPOVOSDeploymentPlanAttribute

## Syntax

```text
Get-HPOVOSDeploymentPlanAttribute
    [-InputObject] <Object>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

HPE Synergy Image Streamer allows administrators to rapidly provision stateless operating systems along with bare metal provisioning.  An OS Deployment Plan dicates the characteristics of the OS, including vendor, version, boot disk size, and OS personalization parameters.  This Cmdlet will return OS Deployment Plan available and editable parameters. 

## Examples

###  Example 1 

```text
Get-HPOVOSDeploymentPlan -Name "RHEL 7.2 OS" -ErrorAction Stop | Get-HPOVOSDeploymentPlanAttribute
```

Return OS Deployment Plan parameters from the "RHEL 7.2 OS" deployment plan.

###  Example 2 

```text
$OSDeploymentAttributes = Get-HPOVOSDeploymentPlanAttributes -InputObject $MyDeploymentPlan
$OSDeploymentAttributes = $OSDeploymentAttributes | Where-Object name -NotMatch 'dns|gateway|ipaddress|netmask'
($OSDeploymentAttributes | Where-Object name -eq "NIC1.connectionid").value = 3
($OSDeploymentAttributes | Where-Object name -eq "NIC1.networkuri").value = $I3SCon3.networkUri
($OSDeploymentAttributes | Where-Object name -eq "NIC1.constraint").value = 'dhcp'
($OSDeploymentAttributes | Where-Object name -eq "NIC1.dhcp").value = $true
($OSDeploymentAttributes | Where-Object name -eq "NIC2.connectionid").value = 4
($OSDeploymentAttributes | Where-Object name -eq "NIC2.networkuri").value = $I3SCon4.networkUri
($OSDeploymentAttributes | Where-Object name -eq "NIC2.constraint").value = 'dhcp'
($OSDeploymentAttributes | Where-Object name -eq "NIC2.dhcp").value = $true
```

Get OS deployment plan attributes, and set DHCP for the two network connections.

## Parameters

### -InputObject &lt;Object&gt;

The OS Deployment Plan from `Get-HPOVOSDeploymentPlan`.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `(${Global:ConnectedSessions} | ? Default)` |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.Appliance.OSDeploymentPlan [System.Management.Automation.PSCustomObject]**_

The OS Deployment Plan from [`Get-HPOVOSDeploymentPlan`](get-hpovosdeploymentplan.md).


## Return Values

_**HPOneView.ServerProfile.OSDeployment.OSDeploymentParameter**_

The object containined the Name of the parameter, and its default Value.


## Related Links

