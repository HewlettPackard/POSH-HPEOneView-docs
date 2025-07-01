---
description: Search the resource index.
---

# Search-OVIndex

## Syntax

```powershell
Search-OVIndex
    [-Search] <String>
    [-Category <String>]
    [-Count <Int32>]
    [-Start <Int32>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Search the resource index for any objects that match the specified search string or category

## Examples

###  Example 1 

```powershell
Search-OVIndex -Search "Profile1"
```

Return all the index entries which include this string.

###  Example 2 

```powershell
Search-OVIndex -Categroy uplink-sets
```

Search for all Uplink Set resources.

## Parameters

### -Search &lt;String&gt;

The search query, text to be found in the index.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Category &lt;String&gt;

The resource category to be matched, if specified.  Valid resource categories are:

* domains
* users
* racks
* enclosure-groups
* enclosures
* uplink-sets
* logical-interconnect-groups
* logical-interconnects
* interconnect-types
* interconnects
* networks
* firmware-drivers
* server-hardware-types
* server-hardware
* server-profiles
* alerts
* storage-volumes
* storage-systems

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Count &lt;Int32&gt;

The maximum number of resource index entries to be returned.  Defaults to 50.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | 50 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Start &lt;Int32&gt;

The index of the first resource index to be returned, defaults to 0.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | 0 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

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

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "System.Collections.ArrayList"
    The matching index entries
    

## Related Links

