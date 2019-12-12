---
description: Reset HPE Synergy Virtual Connect NetOp account password.
---

# Reset-HPOVInterconnectNetOpPassword

## HPE OneView 5.00 Library

### Syntax

```text
Reset-HPOVInterconnectNetOpPassword [-InputObject] <Object> [-Password] <System.Security.SecureString> [[-Async] <SwitchParameter>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

{% hint style="warning" %}
_**THIS CMDLET SHOULD NOT BE EXECUTED WITHOUT GUIDANCE FROM HPE CUSTOMER SUPPORT CENTER**_ 
{% endhint %}

This Cmdlet will reset the HPE Synergy Virtual Connect NetOp account password to the specified value.

{% hint style="info" %}
Required permissions: Infrastructure administrator, Network administrator
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -Async &lt;SwitchParameter&gt; 

Use this parameter to immediately return the async task. By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

An Interconnect object from Get-HPOVInterconnect Cmdlet.

| Aliases | Interconnect |
| :--- | :--- |
| Required? | True |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

#### -Password &lt;System.Security.SecureString&gt; 

The password in System.Security.SecureString format.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPOneView.Networking.Interconnect \[System.Management.Automation.PSCustomObject\]**_

Interconnect resource from Get-HPOVInterconnect.

### Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Async task that tracks the operation.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
$NetOpPassword = Read-Host -Message "New password: " -AsSecureString
$InterconnectObject = Get-HPOVInterconnect -Name "Encl-1, interconnect 1"
Reset-HPOVInterconnectNetOpPassword -InputObject $InterconnectObject -Password $NetOpPassword
```

Set the NetOp password to the new value, for the specific Logical Interconnect. 

### Related Links 

* [Get-HPOVInterconnect](get-hpovinterconnect.md#hpe-oneview-5-00-library)

## HPE OneView 4.20 Library

### Syntax

```text
Reset-HPOVInterconnectNetOpPassword [-InputObject] <Object> [-Password] <System.Security.SecureString> [[-Async] <SwitchParameter>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

{% hint style="warning" %}
_**THIS CMDLET SHOULD NOT BE EXECUTED WITHOUT GUIDANCE FROM HPE CUSTOMER SUPPORT CENTER**_ 
{% endhint %}

This Cmdlet will reset the HPE Synergy Virtual Connect NetOp account password to the specified value.

{% hint style="info" %}
Required permissions: Infrastructure administrator, Network administrator
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -Async &lt;SwitchParameter&gt; 

Use this parameter to immediately return the async task. By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

An Interconnect object from Get-HPOVInterconnect Cmdlet.

| Aliases | Interconnect |
| :--- | :--- |
| Required? | True |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

#### -Password &lt;System.Security.SecureString&gt; 

The password in System.Security.SecureString format.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPOneView.Networking.Interconnect \[System.Management.Automation.PSCustomObject\]**_

Interconnect resource from Get-HPOVInterconnect.

### Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Async task that tracks the operation.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
$NetOpPassword = Read-Host -Message "New password: " -AsSecureString
$InterconnectObject = Get-HPOVInterconnect -Name "Encl-1, interconnect 1"
Reset-HPOVInterconnectNetOpPassword -InputObject $InterconnectObject -Password $NetOpPassword
```

Set the NetOp password to the new value, for the specific Logical Interconnect. 

### Related Links 

* [Get-HPOVInterconnect](get-hpovinterconnect.md#hpe-oneview-4-20-library)

