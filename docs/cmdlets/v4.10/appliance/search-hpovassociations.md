---
description: Search the association index.
---

# Search-HPOVAssociations

## Syntax

```text
Search-HPOVAssociations
    [<CommonParameters>]
```

## Description

Search the association index for any associations that match the specified name or uri.

## Examples

### Example 1

```text
Search-HPOVAssociations BLADE_TO_PROFILE -endObjUri /rest/server-profiles/1ab4c031-a631-4288-9e7d-3cfca24d30cf
```

Return any BLADE\_TO\_PROFILE associations that have an end object with the specified uri

## Parameters

### -AssociationName &lt;String&gt;

The association name to be matched, if specified. Valid association names are

* BLADE\_TO\_PROFILE
* PROFILE\_TO\_SERVER\_HARDWARE\_TYPE
* RACK\_TO\_PHYSICAL\_DEVICE
* BLADE\_TO\_INTERCONNECT
* ENCLOSURE\_GROUP\_TO\_ENCLOSURE
* ENCLOSURE\_GROUP\_TO\_LOGICAL\_INTERCONNECT\_GROUP
* ENCLOSURE\_TO\_BLADE
* ENCLOSURE\_TO\_SWITCH
* LOGICAL\_SWITCH\_TO\_LOGICAL\_UPLINK
* SWITCH\_TO\_LOGICAL\_SWITCH
* SERVER\_PROFILES\_TO\_FC\_NETWORKS
* SERVER\_PROFILES\_TO\_NETWORKS
* STORAGE\_SYSTEM\_TO\_STORAGE\_POOL
* FC\_NETWORK\_TO\_STORAGE\_SYSTEM
* STORAGE\_POOL\_TO\_VOLUME
* STORAGE\_POOL\_TO\_VOLUME\_TEMPLATE

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Parent &lt;Object&gt;

Aliases \[-StartObjUri\]

The uri of an object which is the start of an association

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters? | False |

### -Child &lt;Object&gt;

Aliases \[-EndObjUri\]

The uri of an object which is the end of an association

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Count &lt;Int32&gt;

The maximum number of association index entries to be returned. Defaults to 50.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `50` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Start &lt;Int32&gt;

The index of the first association index to be returned, defaults to 0.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `0` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Aliases \[-Appliance\]

Specify one or more `[HPOneView.Appliance.Connection]` object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |  |
| :--- | :--- | :--- |
| Required? | True |  |
| Position? | Named |  |
| Default value | \`\(${Global:ConnectedSessions} | ? Default\)\` |
| Accept pipeline input? | true \(ByPropertyName\) |  |
| Accept wildcard characters? | False |  |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**System.Management.Automation.PSCustomObject**_

Resource Object to find associated resources

## Return Values

_**System.Management.Automation.PSCustomObject**_

Single association index entry

_**System.Collections.ArrayList**_

Multiple association index entries The matching index entries

## Related Links

