---
description: Helper Cmdlet to create proper add host request for New-OVClusterProfile.
---

# New-OVClusterProfileMember

## Syntax

```powershell
New-OVClusterProfileMember
    [-InputObject] <Object>
    [-IPv4Address <IPAaddress>]
    [-OSDeploymentAttributes <OSDeploymentParameter[]>]
    [<CommonParameters>]
```

## Description

This is a helper Cmdlet to create a valid resourc object New-OVClusterProfile will then use for the `-Servers` parameter.

???+ info
    Minimum required privileges: Infrastructure administrator, Server administrator, Server profile architect, or Server profile administrator.

## Examples

###  Example 1 

```powershell
$Server = Get-OVServer -Name "Encl1, Bay 1"
New-OVClusterProfileMember -InputObject $Server
```

Create a basic add host object for New-OVClusterProfile.

###  Example 2 

```powershell
$Server = Get-OVServer -Name "Encl1, Bay 1"
New-OVClusterProfileMember -InputObject $Server -IPAddress 192.168.10.1
```

Create anadd host object for New-OVClusterProfile and specify its managmenet IP Address if the associated Server Profile Template management network is not associated with an IP address pool.

###  Example 3 

```powershell
$MyDeploymentPlan = Get-OVOSDeploymentPlan -Name "vSphere 6.5 U3 Corp Standard" -ErrorAction Stop
$OSDeploymentAttributes = Get-OVOSDeploymentPlanAttributes -InputObject $MyDeploymentPlan
($OSDeploymentAttributes | Where-Object name -eq "CustomAttribute1").value = "MySpecialValue"
$Server = Get-OVServer -Name "Encl1, Bay 1"
New-OVClusterProfileMember -InputObject $Server -IPAddress 192.168.10.1 -OSDeploymentParameter $OSDeploymentAttributes
```

Create a basic add host object for New-OVClusterProfile.

## Parameters

### -IPv4Address &lt;IPAaddress&gt;

A valid IPv4 Address for the hypervisor host management interface.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InputObject &lt;Object&gt;

A server hardware resource

| Aliases | Server |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -OSDeploymentAttributes &lt;OSDeploymentParameter[]&gt;

Configured OS Deployment Plan parameters from Get-OVOSDeploymentPlanAttribute.  Only applicable for HPE Synergy Image Streamer deployment.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "HPEOneView.ServerHardware [System.Management.Automation.PSCustomObject]"
    An available server hardware resource.
    

## Return Values

=== "HPEOneView.Cluster.AddHostRequest"
    Properly formatted object for New-OVClusterProfile.
    

## Related Links

