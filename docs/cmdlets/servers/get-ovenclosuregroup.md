---
description: Retrieve Enclosure Group resource(s).
---

# Get-OVEnclosureGroup

## Syntax

```powershell
Get-OVEnclosureGroup
    [-Name <String>]
    [-ApplianceConnection <Array>]
    [-exportFile <String>]
    [<CommonParameters>]
```

## Description

An enclosure group is a logical resource that defines a consistent configuration for an enclosure or a set of enclosures making up a logical enclosure. The network connectivity for an enclosure group is defined by the logical interconnect groups associated with the enclosure group.

This Cmdlet will get all available enclosure group resources configured on an appliance.

???+ info
    Minimum required privileges: Read only

## Examples

###  Example 1 

```powershell
$enclosures = Get-OVEnclosureGroup
```

Return all the enclosure groups managed by this appliance.

###  Example 2 

```powershell
$enclosure = Get-OVEnclosureGroup "A"
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
| Accept pipeline input? |  |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | ${Global:ConnectedSessions} |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -exportFile &lt;String&gt;

Full path and file name to save the output of Get-OVEnclosureGroup

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

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.EnclosureGroup [System.Management.Automation.PSCustomObject]"
    Enclosure Group resource.
    

## Related Links

* [Add-OVEnclosure](add-ovenclosure.md)
* [Get-OVEnclosure](get-ovenclosure.md)
* [Get-OVLogicalEnclosure](get-ovlogicalenclosure.md)
* [New-OVLogicalEnclosure](new-ovlogicalenclosure.md)
* [New-OVEnclosureGroup](new-ovenclosuregroup.md)
* [Remove-OVEnclosure](remove-ovenclosure.md)
* [Remove-OVEnclosureGroup](remove-ovenclosuregroup.md)
* [Set-OVEnclosureGroup](set-ovenclosuregroup.md)
* [Update-OVLogicalEnclosure](update-ovlogicalenclosure.md)
