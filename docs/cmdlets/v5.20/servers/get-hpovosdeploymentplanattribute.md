---
description: Get OS deployment plan parameters and attributes.
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

An OS Deployment Plan is a recipe on how to deploy and configure an operating system, which has been created and is managed from on the associated OS deployment server.  It will contain custom attributes that are necessary to personalize the OS deployment plan.  The supported OS deployment server is HPE Image Streamer for Synergy.

Use this Cmdlet to return defined OS deployment plan custom attributes from a specified OS deployment plan.

{% hint style="info" %}
Minimum required privileges: Read
{% endhint %}
-only
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
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPEOneView.Appliance.OSDeploymentPlan [System.Management.Automation.PSCustomObject]**_

The OS Deployment Plan from [`Get-HPOVOSDeploymentPlan`](get-hpovosdeploymentplan.md).

## Return Values

_**HPEOneView.ServerProfile.OSDeployment.OSDeploymentParameter**_

The object contained the Name of the parameter, and its default Value.

## Related Links

* [Get-HPOVOSDeploymentPlan](get-hpovosdeploymentplan.md)
