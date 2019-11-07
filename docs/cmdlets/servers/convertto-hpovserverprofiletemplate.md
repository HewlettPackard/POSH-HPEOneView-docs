---
description: Create a Server Profile Template from Server Profile.
---

# ConvertTo-HPOVServerProfileTemplate

## HPE OneView 5.00 Library

### Syntax

```text
ConvertTo-HPOVServerProfileTemplate [-InputObject] <Object> [[-Name] <String>] [[-Description] <String>] [[-ApplianceConnection] <Object>] [[-Async] <SwitchParameter>] [<CommonParameters>]
```

### Description

This Cmdlet will allow the user to "clone" or create a Server Profile Template from an existing Server Profile object. Not all Server Profile features will be converted to a Server Profile Template. For instance, the following features are not supported with a Server Profile Template:

* Import existing local Smart Array Logical Disk configuration
* Attach SAN Storage Volumes must be assigned a unique LUN ID

If the source Server Profile has the "Import existing logical drives" enabled, this setting will be disabled, and the Local Disk Configuration policy will be set to "disabled".

If any SAN Storage Volume attachments contain an "Auto" LUN value, it will be set to "Manual", with the LUN ID set to a unique value based on the Array Index value.

{% hint style="info" %}
Minimum required Permissions: Infrastructure administrator or Server administrator.
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
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

#### -Description &lt;String&gt; 

The Server Profile description.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

A source Server Profile Object or Resource Name.

| Aliases | source, ServerProfile |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

#### -Name &lt;String&gt; 

The Server Profile Template Name to assign. If omitted, then a new name of "Copy of - {Original\_Name}" will be defined.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPOneView.ServerProfile \[System.Management.Automation.PSCustomObject\]**_

A Server Profile resource object from Get-HPOVServerProfile.

_**System.Collections.ArrayList**_

Multiple HPOneView.ServerProfile \[System.Management.Automation.PSCustomObject\] objects.

### Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\] objects.**_

Async task of the Server Profile Template creation request.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVServerProfile -Name MyProfile | ConvertTo-HPOVServerProfileTemplate -Name "Hypervisor Gold Template 1"
```

Use `Get-HPOVServerProfile` to retrieve the "MyProfile" object, creating a new Server Profile Template "Hyervisor Gold Template 1". 

### Related Links 

* [Convert-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convert-HPOVServerProfileTemplate) 
* [Get-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileTemplate) 
* [New-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileTemplate) 
* [Remove-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServerProfileTemplate) 
* [Save-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVServerProfileTemplate) 
* [Set-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerProfileTemplate)



## HPE OneView 4.20 Library

### Syntax

```text
ConvertTo-HPOVServerProfileTemplate [-InputObject] <Object> [[-Name] <String>] [[-Description] <String>] [[-ApplianceConnection] <Object>] [[-Async] <SwitchParameter>] [<CommonParameters>]
```

### Description

This Cmdlet will allow the user to "clone" or create a Server Profile Template from an existing Server Profile object. Not all Server Profile features will be converted to a Server Profile Template. For instance, the following features are not supported with a Server Profile Template:

* Import existing local Smart Array Logical Disk configuration
* Attach SAN Storage Volumes must be assigned a unique LUN ID

If the source Server Profile has the "Import existing logical drives" enabled, this setting will be disabled, and the Local Disk Configuration policy will be set to "disabled".

If any SAN Storage Volume attachments contain an "Auto" LUN value, it will be set to "Manual", with the LUN ID set to a unique value based on the Array Index value.

{% hint style="info" %}
Minimum required Permissions: Infrastructure administrator or Server administrator.
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
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

#### -Description &lt;String&gt; 

The Server Profile description.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

A source Server Profile Object or Resource Name.

| Aliases | source, ServerProfile |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

#### -Name &lt;String&gt; 

The Server Profile Template Name to assign. If omitted, then a new name of "Copy of - {Original\_Name}" will be defined.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPOneView.ServerProfile \[System.Management.Automation.PSCustomObject\]**_

A Server Profile resource object from Get-HPOVServerProfile.

_**System.Collections.ArrayList**_

Multiple HPOneView.ServerProfile \[System.Management.Automation.PSCustomObject\] objects.

### Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\] objects.**_

Async task of the Server Profile Template creation request.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVServerProfile -Name MyProfile | ConvertTo-HPOVServerProfileTemplate -Name "Hypervisor Gold Template 1"
```

Use `Get-HPOVServerProfile` to retrieve the "MyProfile" object, creating a new Server Profile Template "Hyervisor Gold Template 1". 

### Related Links 

* [Convert-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convert-HPOVServerProfileTemplate) 
* [Get-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileTemplate) 
* [New-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileTemplate) 
* [Remove-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServerProfileTemplate) 
* [Save-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVServerProfileTemplate) 
* [Set-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerProfileTemplate)



## HPE OneView 4.10 Library

### Syntax

```text
ConvertTo-HPOVServerProfileTemplate [-InputObject] <Object> [[-Name] <String>] [[-Description] <String>] [[-ApplianceConnection] <Object>] [[-Async] <SwitchParameter>] [<CommonParameters>]
```

### Description

This Cmdlet will allow the user to "clone" or create a Server Profile Template from an existing Server Profile object. Not all Server Profile features will be converted to a Server Profile Template. For instance, the following features are not supported with a Server Profile Template:

* Import existing local Smart Array Logical Disk configuration
* Attach SAN Storage Volumes must be assigned a unique LUN ID

If the source Server Profile has the "Import existing logical drives" enabled, this setting will be disabled, and the Local Disk Configuration policy will be set to "disabled".

If any SAN Storage Volume attachments contain an "Auto" LUN value, it will be set to "Manual", with the LUN ID set to a unique value based on the Array Index value.

{% hint style="info" %}
Minimum required Permissions: Infrastructure administrator or Server administrator.
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
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

#### -Description &lt;String&gt; 

The Server Profile description.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

A source Server Profile Object or Resource Name.

| Aliases | source, ServerProfile |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

#### -Name &lt;String&gt; 

The Server Profile Template Name to assign. If omitted, then a new name of "Copy of - {Original\_Name}" will be defined.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPOneView.ServerProfile \[System.Management.Automation.PSCustomObject\]**_

A Server Profile resource object from Get-HPOVServerProfile.

_**System.Collections.ArrayList**_

Multiple HPOneView.ServerProfile \[System.Management.Automation.PSCustomObject\] objects.

### Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\] objects.**_

Async task of the Server Profile Template creation request.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVServerProfile -Name MyProfile | ConvertTo-HPOVServerProfileTemplate -Name "Hypervisor Gold Template 1"
```

Use `Get-HPOVServerProfile` to retrieve the "MyProfile" object, creating a new Server Profile Template "Hyervisor Gold Template 1". 

### Related Links 

* [Convert-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convert-HPOVServerProfileTemplate) 
* [Get-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileTemplate) 
* [New-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileTemplate) 
* [Remove-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServerProfileTemplate) 
* [Save-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVServerProfileTemplate) 
* [Set-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerProfileTemplate)

