---
description: Create a new Network Set.
---

# New-HPOVNetworkSet

## Syntax

```text
New-HPOVNetworkSet
    [<CommonParameters>]
```

## Description

Create a new Network Set and connection type resource.

## Examples

###  Example 1 

```text
New-HPOVNetworkSet -name "Production Networks" -untaggedNetwork yellow -networks blue, green, yellow

```

Create a new Network Set called "Production Networks", adding Ethernet Networks "blue", "green", and "yellow", on all connected appliances.

###  Example 2 

```text
$networks = "blue","green","yellow" | % { Get-HPOVNetwork $_ -type Ethernet }
New-HPOVNetworkSet -name "Production Networks" -Networks $networks -UntaggedNetwork $networks[1]


```

Get Ethernet Networks "blue", "green", and "yellow", then create a new Network Set, with "Green" as the UntaggedNetowrk for the specified appliance connection.

###  Example 3 

```text
New-HPOVNetworkSet -name "Production Networks" -untaggedNetwork yellow -networks blue, green, yellow -TypicalBandwidth 1000 -MaximumBandwidth 5000

```

Create a new Network Set called "Production Networks", adding Ethernet Networks "blue", "green", and "yellow", setting the Typical and Maximum Bandwidth.

## Parameters

### -Name &lt;String&gt;

The name of the new Network Set resource to be created.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Networks &lt;Object&gt;

Aliases [-networkUris]
Ethernet Network Name(s), URI(")s or Resource Object(s).

| Aliases | networkUris |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -UntaggedNetwork &lt;Object&gt;

Aliases [-untagged, `-native`, `-untaggedNetworkUri`]
Network (from the above list) to be considered the "native" network in this set.  Traffic on this network will leave the Virtual Connect downlink port untagged.  When untagged traffic is received on this port, it will be mapped to this network.

| Aliases | untagged, native, untaggedNetworkUri |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -TypicalBandwidth &lt;Int32&gt;

Optional preferred amount of bandwidth to assign, specified in Mbps.  Default value is 2500.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | 2500 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -MaximumBandwidth &lt;Int32&gt;

Optional maximum amount of bandwidth to assign, specified in Mbps.  Default value is 10000.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | 10000 |
| Accept pipeline input? | false |
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
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**System.Collections.ArrayList**_

If bandwidth settings are specified, the newly created Network Set resource is returned

_**System.Management.Automation.PSCustomObject**_

If no bandwidth settings specified, an async task object is returned

## Related Links

* [Get-HPOVNetworkSet](get-hpovnetworkset.md)
* [Remove-HPOVNetworkSet](remove-hpovnetworkset.md)
* [Set-HPOVNetworkSet](set-hpovnetworkset.md)
