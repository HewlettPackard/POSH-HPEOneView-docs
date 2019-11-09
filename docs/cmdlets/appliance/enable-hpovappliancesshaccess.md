---
description: Enable appliance SSH access.
---

# Enable-HPOVApplianceSshAccess

## HPE OneView 5.00 Library

### Syntax

```text
Enable-HPOVApplianceSshAccess [[-Async] <SwitchParameter>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

### Description

HPE OneView supports Secure Shell \(SSH\) to remotely access the appliance to perform maintenance and recovery operations. Without SSH access, you must access the virtual machine system console. To avoid requiring a console access, SSH access is enabled by default. However, remote access to maintenance and recovery operations is considered a security risk by some users. Therefore, HPE OneView provides the option to disable remote access to the appliance via SSH.

Use this Cmdlet to enable appliance SSH access.

{% hint style="info" %}
Privileges: Infrastructure administrator
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Array&gt; 

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

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Asyncronous task resource to monitor

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Enable-HPOVApplianceSshAccess
```

Enable appliance SSH access. 

### Related Links 

* [Disable-HPOVApplianceSshAccess](disable-hpovappliancesshaccess.md#hpe-oneview-5-00-library) 
* [Get-HPOVApplianceSshAccess](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceSshAccess) 

## HPE OneView 4.20 Library

### Syntax

```text
Enable-HPOVApplianceSshAccess [[-Async] <SwitchParameter>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

### Description

HPE OneView supports Secure Shell \(SSH\) to remotely access the appliance to perform maintenance and recovery operations. Without SSH access, you must access the virtual machine system console. To avoid requiring a console access, SSH access is enabled by default. However, remote access to maintenance and recovery operations is considered a security risk by some users. Therefore, HPE OneView provides the option to disable remote access to the appliance via SSH.

Use this Cmdlet to enable appliance SSH access.

{% hint style="info" %}
Privileges: Infrastructure administrator
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Array&gt; 

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

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Asyncronous task resource to monitor

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Enable-HPOVApplianceSshAccess
```

Enable appliance SSH access. 

### Related Links 

* [Disable-HPOVApplianceSshAccess](disable-hpovappliancesshaccess.md#hpe-oneview-5-00-library) 
* [Get-HPOVApplianceSshAccess](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceSshAccess) 

## HPE OneView 4.10 Library

### Syntax

```text
Enable-HPOVApplianceSshAccess [[-Async] <SwitchParameter>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

### Description

HPE OneView supports Secure Shell \(SSH\) to remotely access the appliance to perform maintenance and recovery operations. Without SSH access, you must access the virtual machine system console. To avoid requiring a console access, SSH access is enabled by default. However, remote access to maintenance and recovery operations is considered a security risk by some users. Therefore, HPE OneView provides the option to disable remote access to the appliance via SSH.

Use this Cmdlet to enable appliance SSH access.

{% hint style="info" %}
Privileges: Infrastructure administrator
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Array&gt; 

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

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Asyncronous task resource to monitor

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Enable-HPOVApplianceSshAccess
```

Enable appliance SSH access. 

### Related Links 

* [Disable-HPOVApplianceSshAccess](disable-hpovappliancesshaccess.md#hpe-oneview-5-00-library) 
* [Get-HPOVApplianceSshAccess](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceSshAccess) 



