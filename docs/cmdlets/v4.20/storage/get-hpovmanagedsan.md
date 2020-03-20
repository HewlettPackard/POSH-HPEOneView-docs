---
description: Retrieve Managed SAN resource(s).
---

# Get-HPOVManagedSan

## Syntax

```text
Get-HPOVManagedSan
    [-Name] <String>
    [-Label <String>]
    [-ApplianceConnection] <Array>
    [<CommonParameters>]
```

## Description

This cmdlet is used to display or list the available Managed SAN resources in the appliance.

## Examples

###  Example 1 

```text
Get-HPOVManagedSan
Name     State Status Network              Zoned Automated Zoning
----     ----- ------ -------              ----- ----------------
Fabric A Ready OK     BNA Managed Fabric A Zoned             True

```

Return all managed SAN resources.

###  Example 2 

```text
Get-HPOVManagedSan "Fabric A"

```

Show the "Fabric A" Managed SAN resource object.

## Parameters

### -Name &lt;String&gt;

Managed SAN Name to retrieve.

| Aliases | Fabric |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Label &lt;String&gt;

Specify the label associated with resources.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} | ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.Storage.ManagedSan [System.Management.Automation.PSCustomObject]**_

Single Resource

_**System.Collections.ArrayList**_

Multiple Resources

## Related Links

* [Set-HPOVManagedSan](set-hpovmanagedsan.md)
