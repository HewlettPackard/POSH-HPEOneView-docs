---
description: Reset HPE Synergy Virtual Connect NetOp account password.
---

# Reset-HPOVInterconnectNetOpPassword

## Syntax

```text
Reset-HPOVInterconnectNetOpPassword
    [-InputObject] <Object>
    [-Password] <System.Security.SecureString>
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

*** THIS CMDLET SHOULD NOT BE EXECUTED WITHOUT GUIDANCE FROM HPE CUSTOMER SUPPORT CENTER ***

This Cmdlet will reset the HPE Synergy Virtual Connect NetOp account password to the specified value.

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator, Network administrator
{% endhint %}

## Examples

###  Example 1 

```text
$NetOpPassword = Read-Host -Message "New password: " -AsSecureString
$LiObject = Get-HPOVLogicalInterconnect -Name MyEncl1-Ethernet-LIG1
Reset-HPOVInterconnectNetOpPassword -InputObject $LiObject -Password $NetOpPassword

```

Set the NetOp password to the new value, for the specific Logical Interconnect.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

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

The Logical Interconnect from Get-HPOVLogicalInterconnect Cmdlet.

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

_**HPOneView.Networking.LogicalInterconnect [System.Management.Automation.PSCustomObject]**_

Logical interconnect resource from Get-HPOVLogicalInterconnect.

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Async task that tracks the power state change

## Related Links

