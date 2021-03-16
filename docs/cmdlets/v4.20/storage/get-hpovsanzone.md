---
description: View Managed SAN Zones.
---

# Get-HPOVSanZone

## Syntax

```text
Get-HPOVSanZone
    [-ManagedSan <Object>]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

This Cmdlet will dispay the Managed SAN Zone details, which include Zone Name, state, status, Managed SAN and Alias members with their WWN(s).  By default, all SAN Zones will be returned.  You can filter the results based on Managed SAN resource.

## Examples

###  Example 1 

```text
Get-HPOVSanZone
Appliance SAN    Name       State   Status Members
--------- ---    ----       -----   ------ -------
appliance SAN1_1 dummy_zone Managed OK
appliance SAN1_0 dummy_zone Managed OK
appliance SAN1_1 Node_1_8   Managed OK     {Target_ThreePAR72004506_0_2_2, Initiator_Node_1_8, Target_ThreePAR72004506_1_2_2}
appliance SAN1_0 Node_1_7   Managed OK     {Initiator_Node_1_7, Target_ThreePAR72004506_0_2_1, Target_ThreePAR72004506_1_2_1}
```

Return all SAN Zones from the appliance(s).

###  Example 2 

```text
Get-HPOVManagedSan SAN1_0 | Get-HPOVSanZone
Appliance SAN    Name       State   Status Members
--------- ---    ----       -----   ------ -------
appliance SAN1_0 dummy_zone Managed OK
appliance SAN1_0 Node_1_7   Managed OK     {Initiator_Node_1_7, Target_ThreePAR72004506_0_2_1, Target_ThreePAR72004506_1_2_1}
```

Return the specific SAN Zone for the specified Managed SAN resource from the appliance.

###  Example 3 

```text
Get-HPOVManagedSan SAN1_0 | Get-HPOVSanZone
$Zones = Get-HPOVManagedSan SAN1_0 | Get-HPOVSanZone
$Zones | ? Name -eq "Node_1_7"

Appliance SAN    Name     State   Status Members
--------- ---    ----     -----   ------ -------
hpov-tot2 SAN1_0 Node_1_7 Managed OK     {Initiator_Node_1_7, Target_ThreePAR72004506_0_2_1, Target_ThreePAR72004506_1_2_1}

($Zones | ? Name -eq "Node_1_7").members

Name                          WWN
----                          ---
Initiator_Node_1_7            {10:00:F6:9F:5F:70:00:00}
Target_ThreePAR72004506_0_2_1 {20:00:00:02:AC:00:08:DE}
Target_ThreePAR72004506_1_2_1 {20:00:00:02:AC:00:08:E2}
```

Get the Zone information from the specific Managed SAN, then display the associated aliases including their WWNs.

## Parameters

### -ManagedSan &lt;Object&gt;

The Managed SAN Resource Object.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

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

_**HPOneview.Storage.ManagedSan [System.Management.Automation.PSCustomObject]**_

Managed SAN resource from Get-HPOVManagedSan

## Return Values

_**HPOneView.Storage.ManagedSan.Zone [System.Management.Automation.PSCustomObject]**_

Managed SAN Zone resource object

## Related Links

