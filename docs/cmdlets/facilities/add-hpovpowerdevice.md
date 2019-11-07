---
description: Import a power device.
---

# Add-HPOVPowerDevice

## HPE OneView 5.00 Library

### Syntax

```text
Add-HPOVPowerDevice [-Hostname] <String> [[-Username] <String>] [[-Password] <String>] [[-Credential] <PSCredential>] [[-ApplianceConnection] <Object>] [[-Async] <SwitchParameter>] [[-TrustLeafCertificate] <SwitchParameter>] [[-Force] <SwitchParameter>] [[-WhatIf] <SwitchParameter>] [[-Confirm] <SwitchParameter>] [<CommonParameters>]
```

### Description

 Import a power device \(iPDU\) to be managed by an HPE OneView appliance.

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator or Server administrator.
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one HPOneView.Appliance.Connection object or Name property value.

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | 4 |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Async &lt;SwitchParameter&gt; 

Use this parameter to immediately return the async task. By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Confirm &lt;SwitchParameter&gt;

| Aliases | cf |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Credential &lt;PSCredential&gt; 

Use this parameter if you want to provide a PSCredential object instead.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | 3 |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Force &lt;SwitchParameter&gt; 

Force the import of the iPDU when currently managed by another HPE OneView appliance.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Hostname &lt;String&gt; 

Hostname of the iPDU, either IP Address or FQDN.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | 0 |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Password &lt;String&gt; 

{% hint style="warning" %}
Warning: This parameter is deprecated. Please transition to the `-Credential` parameter.
{% endhint %}

Account password of the iPDU specified.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | 2 |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -TrustLeafCertificate &lt;SwitchParameter&gt; 

If the iPDU SSL certificate is not trusted, use this Cmdlet to add the certificate to the appliance trust store.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Username &lt;String&gt; 

{% hint style="warning" %}
Warning: This parameter is deprecated. Please transition to the `-Credential` parameter.
{% endhint %}

Administrator account of the target iPDU.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | 1 |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -WhatIf &lt;SwitchParameter&gt;

| Aliases | wi |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Async Task resource to monitor progress.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Add-HPOVPowerDevice -Hostname ipdu24.example.com -Credential (Get-Credential)
```

 Add the iPDU to the appliance. 

### Related Links 

* [Add-HPOVPowerDeviceConnection](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVPowerDeviceConnection) 
* [Get-HPOVPowerDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVPowerDevice) 
* [New-HPOVPowerDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVPowerDevice) 
* [Remove-HPOVPowerDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVPowerDevice) 

## HPE OneView 4.20 Library

### Syntax

```text
Add-HPOVPowerDevice [-Hostname] <String> [[-Username] <String>] [[-Password] <String>] [[-Credential] <PSCredential>] [[-ApplianceConnection] <Object>] [[-Async] <SwitchParameter>] [[-TrustLeafCertificate] <SwitchParameter>] [[-Force] <SwitchParameter>] [[-WhatIf] <SwitchParameter>] [[-Confirm] <SwitchParameter>] [<CommonParameters>]
```

### Description

 Import a power device \(iPDU\) to be managed by an HPE OneView appliance.

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator or Server administrator.
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one HPOneView.Appliance.Connection object or Name property value.

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | 4 |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Async &lt;SwitchParameter&gt; 

Use this parameter to immediately return the async task. By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Confirm &lt;SwitchParameter&gt;

| Aliases | cf |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Credential &lt;PSCredential&gt; 

Use this parameter if you want to provide a PSCredential object instead.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | 3 |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Force &lt;SwitchParameter&gt; 

Force the import of the iPDU when currently managed by another HPE OneView appliance.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Hostname &lt;String&gt; 

Hostname of the iPDU, either IP Address or FQDN.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | 0 |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Password &lt;String&gt; 

{% hint style="warning" %}
Warning: This parameter will be deprecated in a future release.  Please transition to the `-Credential` parameter
{% endhint %}

Account password of the iPDU specified.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | 2 |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -TrustLeafCertificate &lt;SwitchParameter&gt; 

If the iPDU SSL certificate is not trusted, use this Cmdlet to add the certificate to the appliance trust store.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Username &lt;String&gt; 

{% hint style="warning" %}
Warning: This parameter will be deprecated in a future release.  Please transition to the `-Credential` parameter
{% endhint %}

Administrator account of the target iPDU.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | 1 |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -WhatIf &lt;SwitchParameter&gt;

| Aliases | wi |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Async Task resource to monitor progress.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Add-HPOVPowerDevice -Hostname ipdu24.example.com -Credential (Get-Credential)
```

 Add the iPDU to the appliance. 

### Related Links 

* [Add-HPOVPowerDeviceConnection](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVPowerDeviceConnection) 
* [Get-HPOVPowerDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVPowerDevice) 
* [New-HPOVPowerDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVPowerDevice) 
* [Remove-HPOVPowerDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVPowerDevice) 

## HPE OneView 4.10 Library

### Syntax

```text
Add-HPOVPowerDevice [-Hostname] <String> [[-Username] <String>] [[-Password] <String>] [[-Credential] <PSCredential>] [[-ApplianceConnection] <Object>] [[-Async] <SwitchParameter>] [[-TrustLeafCertificate] <SwitchParameter>] [[-Force] <SwitchParameter>] [[-WhatIf] <SwitchParameter>] [[-Confirm] <SwitchParameter>] [<CommonParameters>]
```

### Description

 Import a power device \(iPDU\) to be managed by an HPE OneView appliance.

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator or Server administrator.
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one HPOneView.Appliance.Connection object or Name property value.

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | 4 |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Async &lt;SwitchParameter&gt; 

Use this parameter to immediately return the async task. By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Confirm &lt;SwitchParameter&gt;

| Aliases | cf |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Credential &lt;PSCredential&gt; 

Use this parameter if you want to provide a PSCredential object instead.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | 3 |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Force &lt;SwitchParameter&gt; 

Force the import of the iPDU when currently managed by another HPE OneView appliance.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Hostname &lt;String&gt; 

Hostname of the iPDU, either IP Address or FQDN.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | 0 |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Password &lt;String&gt; 

{% hint style="warning" %}
Warning: This parameter will be deprecated in a future release.  Please transition to the `-Credential` parameter
{% endhint %}

Account password of the iPDU specified.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | 2 |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -TrustLeafCertificate &lt;SwitchParameter&gt; 

If the iPDU SSL certificate is not trusted, use this Cmdlet to add the certificate to the appliance trust store.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Username &lt;String&gt; 

{% hint style="warning" %}
Warning: This parameter will be deprecated in a future release.  Please transition to the `-Credential` parameter
{% endhint %}

Administrator account of the target iPDU.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | 1 |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -WhatIf &lt;SwitchParameter&gt;

| Aliases | wi |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Async Task resource to monitor progress.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Add-HPOVPowerDevice -Hostname ipdu24.example.com -Username admin -Password Myadminpassowrd
```

 Add the iPDU to the appliance. 

### Related Links 

* [Add-HPOVPowerDeviceConnection](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVPowerDeviceConnection) 
* [Get-HPOVPowerDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVPowerDevice) 
* [New-HPOVPowerDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVPowerDevice) 
* [Remove-HPOVPowerDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVPowerDevice) 

