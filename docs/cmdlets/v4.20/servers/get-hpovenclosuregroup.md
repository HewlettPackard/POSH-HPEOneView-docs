---
description: Retrieve Enclosure Group resource(s).
---

# Get-HPOVEnclosureGroup

## Syntax

```text
Get-HPOVEnclosureGroup
    [-Name <String>]
    [-ApplianceConnection <Array>]
    [-exportFile <String>]
    [<CommonParameters>]
```

## Description

Obtain a collection of Enclosure Group resources, or a single Enclosure Group with the specified name.

## Examples

###  Example 1 

```text
$enclosures = Get-HPOVEnclosureGroup

```

Return all the enclosure groups managed by this appliance.

###  Example 2 

```text
$enclosure = Get-HPOVEnclosureGroup "A"

```

Return the enclosure group resource with name "A".

## Parameters

### -Name &lt;String&gt;

The name of the Enclosure Group resource to be returned.  All enclosure group resources will be returned if omitted.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Label &lt;String&gt;

Specify the label associated with resources.

| Aliases |  |
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
| Required? | False |
| Position? | Named |
| Default value | ${Global:ConnectedSessions} |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -exportFile &lt;String&gt;

Full path and file name to save the output of Get-HPOVEnclosureGroup

| Aliases | x, export |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.EnclosureGroup [System.Management.Automation.PSCustomObject]**_

Single Enclosure Group

_**System.Collections.ArrayList**_

The matching enclosure group resources.

## Related Links

* [New-HPOVEnclosureGroup](new-hpovenclosuregroup.md)
* [Remove-HPOVEnclosureGroup](remove-hpovenclosuregroup.md)
* [Set-HPOVEnclosureGroup](set-hpovenclosuregroup.md)
