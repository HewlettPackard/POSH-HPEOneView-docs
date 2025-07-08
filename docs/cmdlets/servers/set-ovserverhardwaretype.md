---
description: Rename or set a description to a Server Hardware Type resource.
---

# Set-OVServerHardwareType

## Syntax

```powershell
Set-OVServerHardwareType
    [-InputObject] <Object>
    [-Name] <String>
    [-Description <String>]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

Use this Cmdlet to rename or set a description to one or more Server Hardware Type resource(s).

???+ info
    Minimum required privileges: Server administrator

## Examples

###  Example 1 

```powershell
Get-OVServerHardwareType -Name "BL460c Gen9 1" -ErrorAction Stop | Set-OVServerHardwareType -Name "Corp Hypervisor Host Type"
```

Rename the default "BL460c Gen9 1" server hardware type resource to a new name.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Description &lt;String&gt;

Set a new description.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InputObject &lt;Object&gt;

HPEOneView.ServerHardwareType resource from Get-OVServerHardwareType.

| Aliases | Resource |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Name &lt;String&gt;

Set a new name.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "HPEOneView.ServerHardwareType"
    Resource from Get-OVServerHardwareType.
    

## Return Values

=== "HPEOneView.ServerHardwareType"
    The updated resource object.
    

## Related Links

* [Get-OVServerHardwareType](get-ovserverhardwaretype.md)
