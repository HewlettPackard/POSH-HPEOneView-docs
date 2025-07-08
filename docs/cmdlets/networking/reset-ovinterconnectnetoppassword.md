---
description: Reset HPE Synergy Virtual Connect NetOp account password.
---

# Reset-OVInterconnectNetOpPassword

## Syntax

```powershell
Reset-OVInterconnectNetOpPassword
    [-InputObject] <Object>
    [-Password] <System.Security.SecureString>
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

*** THIS CMDLET SHOULD NOT BE EXECUTED WITHOUT GUIDANCE FROM HPE CUSTOMER SUPPORT CENTER ***

This Cmdlet will reset the HPE Synergy Virtual Connect NetOp account password to the specified value.

???+ info
    Minimum required privileges: Infrastructure administrator, Network administrator

## Examples

###  Example 1 

```powershell
$NetOpPassword = Read-Host -Message "New password: " -AsSecureString
$InterconnectObject = Get-OVInterconnect -Name MyEncl1-Ethernet-LIG1
Reset-OVInterconnectNetOpPassword -InputObject $InterconnectObject -Password $NetOpPassword
```

Set the NetOp password to the new value, for the specific Interconnect.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InputObject &lt;Object&gt;

The Interconnect from Get-OVInterconnect Cmdlet.

| Aliases | Interconnect |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Password &lt;System.Security.SecureString&gt;

The password in `[System.Security.SecureString]` format.

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

=== "HPEOneView.Networking.Interconnect [System.Management.Automation.PSCustomObject]"
    Interconnect resource from Get-OVInterconnect.
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Async task that tracks the operation.
    

## Related Links

* [Get-OVInterconnect](get-ovinterconnect.md)
