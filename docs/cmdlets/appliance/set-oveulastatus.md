---
description: Accept the EULA and set support access for the specified appliance.
---

# Set-OVEulaStatus

## Syntax

```powershell
Set-OVEulaStatus
    [-Appliance] <Object>
    [-SupportAccess] <String>
    [<CommonParameters>]
```

## Description

Accept the EULA and set support access for the specified appliance.

## Examples

###  Example 1 

```powershell
Set-OVEulaStatus -Appliance appliance.contoso.com -supportAccess "yes"
```

Connects to a specific appliance, accepting the EULA and enable Support Access.

## Parameters

### -Appliance &lt;Object&gt;

The FQDN or IP Address of an HPE OneView appliance or `[HPEOneView.Appliance.Connection]` must be provided.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SupportAccess &lt;String&gt;

Set to "yes" to allow HPE suport access to the appliance, otherwise set to "no".

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

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "System.Management.Automation.PSCustomObject"
    Version and current support access state
    

## Related Links

* [Get-OVEulaStatus](get-oveulastatus.md)
