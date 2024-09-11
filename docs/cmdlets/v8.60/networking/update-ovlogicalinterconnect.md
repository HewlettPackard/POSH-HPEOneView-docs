---
description: Updates a Logical Interconnect.
---

# Update-OVLogicalInterconnect

## Syntax

```powershell
Update-OVLogicalInterconnect
    [-InputObject] <Object>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

```powershell
Update-OVLogicalInterconnect
    [-FactoryReset]
    [-InputObject] <Object>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

```powershell
Update-OVLogicalInterconnect
    [-Reapply]
    [-InputObject] <Object>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

When a Logical Interconnect is inconsistent with its parent Logical Interconnect Group, it can be made consistent with this Cmdlet.  Updating the Logical Interconnect with its parent could cause an network outage depending on the changes about to be applied.

## Examples

###  Example 1 

```powershell
$task = Update-OVLogicalInterconnect -name Encl1-LI
Wait-OVTaskComplete $task
                    
```

Perform an update of the Encl1-LI Logical Interconnect.  Will be prompted for confirmation.

###  Example 2 

```powershell
$task = Update-OVLogicalInterconnect -name Encl1-LI -confirm:$false | Wait-OVTaskComplete
```

Perform an update of the Encl1-LI Logical Interconnect.  Disable confirmation prompt.

###  Example 3 

```powershell
Get-OVLogicalInterconnect | Update-OVLogicalInterconnect
```

Search for all Logical Interconnects and update them.

###  Example 4 

```powershell
Get-OVLogicalInterconnect -Name Encl1-Default VC FF LIG | Update-OVLogicalInterconnect -WhatIf
What if: Performing the operation "Update Logical Interconnect from Group "Default VC FF LIG". WARNING: Depending on the Update, there might be a brief outage." on target "Encl1-Default VC FF LIG".

InputObject                SideIndicator ParentSetting  ChildSetting Parent            Child                   Description
-----------                ------------- -------------  ------------ ------            -----                   -----------
macRefreshInterval         <=>           7              5            Default VC FF LIG Encl1-Default VC FF LIG SETTING_MISMATCH
enablePauseFloodProtection <=>           False          True         Default VC FF LIG Encl1-Default VC FF LIG SETTING_MISMATCH
enableRichTLV              <=>           True           False        Default VC FF LIG Encl1-Default VC FF LIG SETTING_MISMATCH
enableTaggedLldp           <=>           True           False        Default VC FF LIG Encl1-Default VC FF LIG SETTING_MISMATCH
ActiveQosConfig            <=            CustomWithFCoE Passthrough  Default VC FF LIG Encl1-Default VC FF LIG SETTING_MISMATCH
Uplink Set 2               <=            Heartbeat                   Default VC FF LIG Encl1-Default VC FF LIG MISSING_NETWORK
FC Fabric B                =>                           Bay2:X8      Default VC FF LIG Encl1-Default VC FF LIG ADDITIONAL_UPLINKPORT
FC Fabric B:Bay2:X7        <=>           Auto           2Gb          Default VC FF LIG Encl1-Default VC FF LIG LINKSPEED_MISMATCH
UplinkSets                 <=            New Uplink Set              Default VC FF LIG Encl1-Default VC FF LIG MISSING_UPLINKSET
InternalNetworks           =>                           Heartbeat    Default VC FF LIG Encl1-Default VC FF LIG EXTRA_NETWORK
InternalNetworks           <=            Dev VLAN 103-A              Default VC FF LIG Encl1-Default VC FF LIG MISSING_NETWORK
```

Refresh "LogicalEnclosure1" Logical Enclosure.

## Parameters

### -InputObject &lt;Object&gt;

The Logical Interconnect object(s), name(s) or uris(s) to be updated.

| Aliases | uri, li, name, Resource |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Reapply &lt;SwitchParameter&gt;

Switch to reapply the Logical Interconnect configuration.  This does NOT update the Logical Interconnect from the parent Logical Interconnect Group.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -WhatIf &lt;SwitchParameter&gt;

Use this parameter to identify what is different or changed from the parent group policy.

| Aliases | wi |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Confirm &lt;SwitchParameter&gt;



| Aliases | cf |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -FactoryReset &lt;SwitchParameter&gt;

Use to factory reset the HPE Synergy Fabric module.  Do know that an outage will happen while the fabric modules are reset.  Their configuration will need to be re-applied or deployed after task has completed.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPEOneView.Networking.LogicalInterconnect [System.Management.Automation.PSCustomObject]**_

Single Logical Interconnect resource object

_**System.Collections.ArrayList <HPEOneView.Networking.LogicalInterconnect>**_

Collection of Logical Interconnect Names, URIs or System.Management.Automation.PSCustomObject

## Return Values

_**HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Single async Update Task

_**System.Collections.ArrayList <HPEOneView.Appliance.TaskResource>**_

Multiple async Update Tasks

_**HPEOneView.Library.CompareObject**_

The Cmdlet will return a compare object with the Parent and Child object and settings that are different.  Otherwise, no object is returned.

    Property Name | Description
    ==========================================================
    InputObject   | Compared Object Property or Setting Value
    ----------------------------------------------------------
    ParentSetting | Name of Property or Setting
    ----------------------------------------------------------
    ChildSetting  | Name of Property or Setting
    ----------------------------------------------------------
    Parent        | Name of Parent Object
    ----------------------------------------------------------
    Child         | Name of Child Object
    ----------------------------------------------------------
    Description   | Description Name of difference
    ----------------------------------------------------------

## Related Links

* [Disable-OVLogicalInterconnectPortMonitoring](disable-ovlogicalinterconnectportmonitoring.md)
* [Enable-OVLogicalInterconnectPortMonitoring](enable-ovlogicalinterconnectportmonitoring.md)
* [Get-OVLogicalInterconnect](get-ovlogicalinterconnect.md)
* [Get-OVLogicalInterconnectGroup](get-ovlogicalinterconnectgroup.md)
* [Get-OVLogicalInterconnectPortMonitoring](get-ovlogicalinterconnectportmonitoring.md)
* [Install-OVLogicalInterconnectFirmware](install-ovlogicalinterconnectfirmware.md)
* [New-OVLogicalInterconnectGroup](new-ovlogicalinterconnectgroup.md)
* [Remove-OVLogicalInterconnectGroup](remove-ovlogicalinterconnectgroup.md)
* [Show-OVLogicalInterconnectMacTable](show-ovlogicalinterconnectmactable.md)
