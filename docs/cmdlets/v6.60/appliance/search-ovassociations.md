---
description: Search the association index.
---

# Search-OVAssociations

## Syntax

```powershell
Search-OVAssociations
    [-AssociationName <String>]
    [-Parent <Object>]
    [-Child <Object>]
    [-Count <Int32>]
    [-Start <Int32>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Search the association index for any associations that match the specified name or uri.

## Examples

###  Example 1 

```powershell
Search-OVAssociations -AssociationName server_profiles_to_server_hardware -Parent (Get-OVServerProfile -Name "My Profile1")
```

Return server_profiles_to_server_hardware that have an association with the specified object.

## Parameters

### -AssociationName &lt;String&gt;

The association name to be matched, if specified.  Valid association names are 

* server_profiles_to_server_hardware
* PROFILE_TO_SERVER_HARDWARE_TYPE
* RACK_TO_PHYSICAL_DEVICE
* BLADE_TO_INTERCONNECT
* ENCLOSURE_GROUP_TO_ENCLOSURE
* ENCLOSURE_GROUP_TO_LOGICAL_INTERCONNECT_GROUP
* ENCLOSURE_TO_BLADE
* ENCLOSURE_TO_SWITCH
* LOGICAL_SWITCH_TO_LOGICAL_UPLINK
* SWITCH_TO_LOGICAL_SWITCH
* SERVER_PROFILES_TO_FC_NETWORKS
* SERVER_PROFILES_TO_NETWORKS
* STORAGE_SYSTEM_TO_STORAGE_POOL
* FC_NETWORK_TO_STORAGE_SYSTEM
* STORAGE_POOL_TO_VOLUME
* STORAGE_POOL_TO_VOLUME_TEMPLATE

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Parent &lt;Object&gt;

The object which is the parent resource of an association.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Child &lt;Object&gt;

The object which is the child resource of an association.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Count &lt;Int32&gt;

The maximum number of association index entries to be returned.  Defaults to 50.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | 50 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Start &lt;Int32&gt;

The index of the first association index to be returned, defaults to 0.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | 0 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**System.Management.Automation.PSCustomObject**_

Resource Object to find associated resources

## Return Values

_**System.Management.Automation.PSCustomObject**_

Single association index entry

_**System.Collections.ArrayList**_

Multiple association index entries  The matching index entries

## Related Links

