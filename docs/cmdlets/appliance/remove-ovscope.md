---
description: Remove Scope from appliance
---

# Remove-OVScope

## Syntax

```powershell
Remove-OVScope
    [-Scope] <HPEOneView.Appliance.ScopeCollection>
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

This Cmdlet will remove a specific Scope.

???+ info
    Minimum required privileges: Infrastructure administrator

## Examples

###  Example 1 

```powershell
Get-OVScope MyScope | Remove-OVScope
```

Remove the specified scope.

## Parameters

### -Scope &lt;HPEOneView.Appliance.ScopeCollection&gt;

The Scope resource to add the resource(s) to.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Array&gt;

Specify one `[HPEOneView.Appliance.Connection]` object or Name property value.

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

=== "HPEOneView.Appliance.ScopeCollection"
    Scope resource object from Get-OVScope.
    

## Return Values

=== "System.Management.Automation.PSCustomObject"
    Response indicating the resource was deleted successfully.
    

## Related Links

* [Get-OVScope](get-ovscope.md)
* [New-OVScope](new-ovscope.md)
