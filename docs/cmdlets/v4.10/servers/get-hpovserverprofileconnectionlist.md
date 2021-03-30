---
description: Retrieve Server Profile Connections
---

# Get-HPOVServerProfileConnectionList

## Syntax

```text
Get-HPOVServerProfileConnectionList
    [<CommonParameters>]
```

## Description

Obtain a formatted list of server profile connection IDs, include hardware address, device mapping, and boot settings.

## Examples

###  Example 1 

```text
Get-HPOVServerProfileConnectionList "test"
serverProfile   portId    cid networkType macAddress        wwpn             boot      arrayTarget lun
-------------   --------  --- ----------- ----------        ----             ----      ----------- ---                     
test            Flb 1:1-a   1 Ethernet    36:37:6B:90:00:08 1000378079e00011 Primary                  
test            Flb 1:1-b   2 Ethernet    36:37:6B:90:00:06 1000378079e0000d Secondary                

```

List Server Profile connections for Test.

## Parameters

### -Name &lt;String&gt;

The name of the server profile resource to be returned.  All server profile resources will be returned if name is omitted.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Aliases [-Appliance]

Specify one `[HPOneView.Appliance.Connection]` object or Name property value.

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**System.Collections.ArrayList**_

Formatted table of Server Profile Connections

## Related Links

