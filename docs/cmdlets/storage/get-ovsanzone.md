---
description: View Managed SAN Zones.
---

# Get-OVSanZone

## Syntax

```powershell
Get-OVSanZone
    [-ManagedSan <Object>]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

SANs are Fibre Channel (FC) or Fibre Channel over Ethernet (FCoE) storage area networks that connect servers to storage systems. The possible states for SANs are:

* Discovered - A SAN that is not associated with a network. SANs are automatically discovered when a SAN manager is added to HPE OneView.
* Managed - A SAN that is associated with one or more networks in HPE OneView. Only managed SANs can be configured to be automatically zoned by HPE OneView.

The SAN Endpoints, or SAN zones, contain all device ports actively logged into or configured to log in to a SAN.

This Cmdlet will display the Managed SAN Zone details, which include Zone Name, state, status, Managed SAN and Alias members with their WWN(s). By default, all SAN Zones will be returned. You can filter the results based on Managed SAN resource.

???+ info
    Minimum required privileges: Read-only

## Examples

###  Example 1 

```powershell
Get-OVSanZone
Appliance SAN    Name       State   Status Members

--------- ---    ----       -----   ------ -------
appliance SAN1_1 dummy_zone Managed OK
appliance SAN1_0 dummy_zone Managed OK
appliance SAN1_1 Node_1_8   Managed OK     {Target_ThreePAR72004506_0_2_2, Initiator_Node_1_8, Target_ThreePAR72004506_1_2_2}
appliance SAN1_0 Node_1_7   Managed OK     {Initiator_Node_1_7, Target_ThreePAR72004506_0_2_1, Target_ThreePAR72004506_1_2_1}
```

Return all SAN Zones from the appliance(s).

###  Example 2 

```powershell
Get-OVManagedSan -Name SAN1_0 | Get-OVSanZone

Appliance SAN    Name       State   Status Members
--------- ---    ----       -----   ------ -------
appliance SAN1_0 dummy_zone Managed OK
appliance SAN1_0 Node_1_7   Managed OK     {Initiator_Node_1_7, Target_ThreePAR72004506_0_2_1, Target_ThreePAR72004506_1_2_1}
```

Return the specific SAN Zone for the specified Managed SAN resource from the appliance.

###  Example 3 

```powershell
$Zones = Get-OVManagedSan -Name SAN1_0 | Get-OVSanZone
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

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

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

=== "HPEOneView.Storage.ManagedSan [System.Management.Automation.PSCustomObject]"
    Managed SAN resource from Get-OVManagedSan
    

## Return Values

=== "HPEOneView.Storage.ManagedSan.Zone [System.Management.Automation.PSCustomObject]"
    Managed SAN Zone resource object
    

## Related Links

* [Get-OVManagedSan](get-ovmanagedsan.md)
