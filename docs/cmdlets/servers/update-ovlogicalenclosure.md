---
description: Update or Refresh a Logical Enclosure.
---

# Update-OVLogicalEnclosure

## Syntax

```powershell
Update-OVLogicalEnclosure
    [-Reapply]
    [-InputObject] <Object>
    [-ApplianceConnection] <Array>
    [-Async]
    [<CommonParameters>]
```

```powershell
Update-OVLogicalEnclosure
    [-Update]
    [-InputObject] <Object>
    [-ApplianceConnection] <Array>
    [-Async]
    [<CommonParameters>]
```

## Description

This Cmdlet will update or refresh a Logical Enclosure.  A Refresh will instruct HPE OneView to go inventory the enclosure and update any missing management configurations. An Update will perform Logical Enclosure compliance remediation with the parent Enclosure Group.

Use the -Refresh switch for scenarios where adding an enclosure results in a warning or critical error when a BL server cannot be managed due to an existing _HPOneViewAdmin account that cannot be reset or too many HPE SSO Certificates are configured (iLO supports no more than 5) and you have manually cleared the HPE SSO list and/or removed the _HPOneViewAdmin account.

## Examples

###  Example 1 

```powershell
Get-OVLogicalEnclosure | Update-OVLogicalEnclosure -Refresh
```

Refresh all available Logical Enclosures, for the default connected session.

###  Example 2 

```powershell
Get-OVLogicalEnclosure -ApplianceConnect $ConnectedSessions | Update-OVLogicalEnclosure -Update
```

Refresh all available Logical Enclosures, for the all connected sessions.

###  Example 3 

```powershell
Get-OVLogicalEnclosure -Name LogicalEnclosure1 | Update-OVLogicalEnclosure -Refresh
```

Refresh "LogicalEnclosure1" Logical Enclosure.

###  Example 4 

```powershell
Get-OVLogicalEnclosure -Name Encl1 | Update-OVLogicalEnclosure -Update -WhatIf
What if: Performing the operation "Update Logical Enclosure configuration. WARNING: Depending on this action, there might be a brief outage." on target "Encl1".

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

Provide the Logical Enclosure name, URI or Object, or `[System.Collections.ArrayList` ] of names, URIs or Objects to refresh/update.

| Aliases | le, LogicalEnclosure |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Update &lt;SwitchParameter&gt;

Useing this switch will update the Logical Enclosure to be compliant with the Parent Enclosure Group.  Can be combined with the `-WhatIf` parameter to perform a Compare with group and return object with differences.

| Aliases | UpdateFromGroup |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Reapply &lt;SwitchParameter&gt;

Reapply the Enclosure Configuration.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
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

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "HPEOneView.LogicalEnclosure [System.Management.Automation.PSCustomObject]"
    Single Logical Enclosure resource
    

=== "System.Collections.ArrayList"
    Multiple Logical Enclosure resources
    

=== "HPEOneView.Library.CompareObject"
    The Cmdlet will return a compare object with the Parent and Child object and settings that are different.  Otherwise, no object is returned.
    
    Property Name | Description
    InputObject   | Compared Object Property or Setting Value
    ParentSetting | Name of Property or Setting
    ChildSetting  | Name of Property or Setting
    Parent        | Name of Parent Object
    Child         | Name of Child Object
    Description   | Description Name of difference
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Async task Resource object for monitoring the enclosure import process
    

## Related Links

* [Get-OVLogicalEnclosure](get-ovlogicalenclosure.md)
* [New-OVLogicalEnclosure](new-ovlogicalenclosure.md)
* [Remove-OVLogicalEnclosure](remove-ovlogicalenclosure.md)
* [Set-OVLogicalEnclosure](set-ovlogicalenclosure.md)
* [Update-OVLogicalEnclosureFirmware](../networking/update-ovlogicalenclosurefirmware.md)
