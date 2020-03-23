---
description: Retrieve Address Pool Range information.
---

# Get-HPOVAddressPoolRange

## Syntax

```text
Get-HPOVAddressPoolRange
    [-Type] <Object>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```text
Get-HPOVAddressPoolRange
    [-InputObject] <Object>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

THis Cmdlet will display configured Address Pool Ranges defined on an HPE OneView appliance.

## Examples

###  Example 1 

```text
[PS] C:\> Get-HPOVAddressPoolRange
Name Enabled Category  Total   Allocated Available Reserved Start                   End
---- ------- --------  -----   --------- --------- -------- -----                   ---
VMAC True    Generated 1048576 2         1048574   0        62:79:84:50:00:00       62:79:84:5F:FF:FF
VWWN True    Generated 1048576 0         1048576   0        10:00:92:5a:1f:b0:00:00 10:00:92:5a:1f:bf:ff:ff
VSN  True    Generated 46656   1         46655     0        VCGBWAB000              VCGBWABZZZ
VMAC True    Generated 1048576 0         1048576   0        F6:38:E6:90:00:00       F6:38:E6:9F:FF:FF
VWWN True    Generated 1048576 0         1048576   0        10:00:ce:58:fa:50:00:00 10:00:ce:58:fa:5f:ff:ff
VSN  True    Generated 46656   0         46656     0        VCGA290000              VCGA290ZZZ


```

Get all configured Address Pool Ranges from all connected appliances.

###  Example 2 

```text
[PS] C:\> Get-HPOVAddressPoolRange vmac
Name Enabled Category  Total   Allocated Available Reserved Start             End
---- ------- --------  -----   --------- --------- -------- -----             ---
VMAC True    Generated 1048576 2         1048574   0        62:79:84:50:00:00 62:79:84:5F:FF:FF
VMAC True    Generated 1048576 0         1048576   0        F6:38:E6:90:00:00 F6:38:E6:9F:FF:FF


```

Get a specific Address Pool Range type (VMAC) from all connected appliances.

## Parameters

### -InputObject &lt;Object&gt;

Aliases [-Pool]
Specify the type of Address Range Pool, or the Address Pool object fro `Get-HPOVAddressPool`.  Allowed values are:

	* IPv4
	* VMAC
	* VWWN
	* VSN
	* All

Default: All

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | all |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Type &lt;Object&gt;

Aliases [-Pool]
Specify the type of Address Range Pool, or the Address Pool object fro `Get-HPOVAddressPool`.  Allowed values are:

	* IPv4
	* VMAC
	* VWWN
	* VSN
	* All

Default: All

| Aliases | Pool |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | all |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

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

_**HPOneView.Appliance.AddressPool [System.Management.Automation.PSCustomObject]**_

Address Pool resource object.


## Return Values

_**HPOneView.Appliance.AddressPoolRange [System.Management.Automation.PSCustomObject]**_

Single Address Pool Range object.


_**System.Collections.ArrayList <HPOneView.Appliance.AddressPoolRange>**_

Collection of Address Pool Range(s).


## Related Links

* [New-HPOVAddressPoolRange](new-hpovaddresspoolrange.md)
* [Remove-HPOVAddressPoolRange](remove-hpovaddresspoolrange.md)
