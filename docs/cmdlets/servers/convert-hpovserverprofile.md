---
description: Migrate Server Profile.
---

# Convert-HPOVServerProfile

## HPE OneView 5.00 Library

### Syntax

```text
Convert-HPOVServerProfile [-InputObject] <Object> [[-ServerHardwareType] <Object>] [[-EnclosureGroup] <Object>] [[-Async] <SwitchParameter>] [[-ApplianceConnection] <Array>] [[-WhatIf] <SwitchParameter>] [[-Confirm] <SwitchParameter>] [<CommonParameters>]
```

### Description

Use this Cmdlet to change the Server Hardware Type and/or Enclosure Group set within the Server Profile. Changing to a different server hardware type may change the capabilities available to the server profile. Changing the enclosure group may change the connections which are available for the profile.

* The server hardware field will be set to "unassigned", requiring re-seletion of server hardware.
* It may also cause incompatibilities with the current configuration.
* All deployed connections will have their port assignment set to "Auto".
* Any incompatibilities will be flagged when the server profile is committed.
* If the new server hardware type does not support the local storage configuration, some storage may be lost.
* If the enclosure group is changed, mezzanine storage is lost and the disk drives are released.
* To prevent data loss, cancel this operation and backup data before applying the profile.
* Any change in the server hardware type will lead to the associated volume loss.
* If the server profile is associated with a server profile template, the server profile will become inconsistent with the template.  The server profile should be unassociated with the template before or after the migration.

{% hint style="info" %}
Required Permissions: Infrastructure administrator or Server administrator.
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

#### -Confirm &lt;SwitchParameter&gt; 

Override confirmation prompt.

| Aliases | cf |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -EnclosureGroup &lt;Object&gt; 

Specify the target HPOneView.EnclosureGroup resource object. By changing the Enclosure Group, assigned Networks with Connections that do not exist on in the associated Logical Interconnect Group\(s\), the Connection may not be assigned to an available FlexNIC.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

The `[HPOneView.ServerProfile]` object from Get-HPOVServerProfile.

| Aliases | ServerProfile, Profile |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

#### -ServerHardwareType &lt;Object&gt; 

Specify the `[HPOneView.ServerHardwareType]` object to transform to. BIOS Settings will be reset to defaults, and Connection FlexNIC assignment will be reset back to Auto.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

-WhatIf &lt;&gt;

| Aliases | wi |
| :--- | :--- |
| Required? |  |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPOneView.ServerProfile**_

The Server Profile resource object to transform.

### Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Async Task resource to monitor progress of the Server Profile transformation.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
$ServerProfile = Get-HPOVServerProfile -Name "Prod Server 1" -ErrorAction Stop
$NewServerHardwareType = Get-HPOVServerHardwareType -Name "BL460 Gen9 3" -ErrorAction Stop
Convert-HPOVServerProfile -InputObject $ServerProfile -ServerHardwareType $NewServerHardwareType
```

Transform the specified server profile object to a different server hardware type resource.

```text
 -------------------------- EXAMPLE 2 --------------------------
$ServerProfile = Get-HPOVServerProfile -Name "Prod Server 1" -ErrorAction Stop
$NewEnclosureGroup = Get-HPOVEnclosureGroup -Name "Dev EG 1" -ErrorAction Stop
Convert-HPOVServerProfile -InputObject $ServerProfile -EnclosureGroup $NewEnclosureGroup
```

Transform the specified server profile object to a different enclosure group resource.

```text
 -------------------------- EXAMPLE 3 --------------------------
$ServerProfile = Get-HPOVServerProfile -Name "Prod Server 1" -ErrorAction Stop
$NewEnclosureGroup = Get-HPOVEnclosureGroup -Name "Dev EG 1" -ErrorAction Stop
$NewServerHardwareType = Get-HPOVServerHardwareType -Name "BL460 Gen9 3" -ErrorAction Stop
Convert-HPOVServerProfile -InputObject $ServerProfile -EnclosureGroup $NewEnclosureGroup -ServerHardwareType $NewServerHardwareType
```

Transform the specified server profile object to a different enclosure group and server hardware type resource. 

### Related Links 

* [Convert-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convert-HPOVServerProfileTemplate) 
* [ConvertTo-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/ConvertTo-HPOVServerProfileTemplate) 
* [Copy-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Copy-HPOVServerProfile) 
* [Get-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfile) 
* [Get-HPOVServerProfileConnectionList](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileConnectionList) 
* [Get-HPOVServerProfileMessage](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileMessage) 
* [Get-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileTemplate) 
* [Join-HPOVServerProfileToTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Join-HPOVServerProfileToTemplate) 
* [New-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfile) 
* [New-HPOVServerProfileAssign](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileAssign) 
* [New-HPOVServerProfileAttachVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileAttachVolume) 
* [New-HPOVServerProfileConnection](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileConnection) 
* [New-HPOVServerProfileLogicalDisk](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileLogicalDisk) 
* [New-HPOVServerProfileLogicalDiskController](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileLogicalDiskController) 
* [New-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileTemplate) 
* [Remove-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServerProfile) 
* [Remove-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServerProfileTemplate) 
* [Save-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVServerProfile) 
* [Save-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVServerProfileTemplate) 
* [Set-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerProfile) 
* [Set-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerProfileTemplate) 
* [Update-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVServerProfile) 

## HPE OneView 4.20 Library

### Syntax

```text
Convert-HPOVServerProfile [-InputObject] <Object> [[-ServerHardwareType] <Object>] [[-EnclosureGroup] <Object>] [[-Async] <SwitchParameter>] [[-ApplianceConnection] <Array>] [[-WhatIf] <SwitchParameter>] [[-Confirm] <SwitchParameter>] [<CommonParameters>]
```

### Description

Use this Cmdlet to change the Server Hardware Type and/or Enclosure Group set within the Server Profile. Changing to a different server hardware type may change the capabilities available to the server profile. Changing the enclosure group may change the connections which are available for the profile.

* The server hardware field will be set to "unassigned", requiring re-seletion of server hardware.
* It may also cause incompatibilities with the current configuration.
* All deployed connections will have their port assignment set to "Auto".
* Any incompatibilities will be flagged when the server profile is committed.
* If the new server hardware type does not support the local storage configuration, some storage may be lost.
* If the enclosure group is changed, mezzanine storage is lost and the disk drives are released.
* To prevent data loss, cancel this operation and backup data before applying the profile.
* Any change in the server hardware type will lead to the associated volume loss.
* If the server profile is associated with a server profile template, the server profile will become inconsistent with the template.  The server profile should be unassociated with the template before or after the migration.

{% hint style="info" %}
Required Permissions: Infrastructure administrator or Server administrator.
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

#### -Confirm &lt;SwitchParameter&gt; 

Override confirmation prompt.

| Aliases | cf |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -EnclosureGroup &lt;Object&gt; 

Specify the target HPOneView.EnclosureGroup resource object. By changing the Enclosure Group, assigned Networks with Connections that do not exist on in the associated Logical Interconnect Group\(s\), the Connection may not be assigned to an available FlexNIC.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

The `[HPOneView.ServerProfile]` object from Get-HPOVServerProfile.

| Aliases | ServerProfile, Profile |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

#### -ServerHardwareType &lt;Object&gt; 

Specify the `[HPOneView.ServerHardwareType]` object to transform to. BIOS Settings will be reset to defaults, and Connection FlexNIC assignment will be reset back to Auto.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

-WhatIf &lt;&gt;

| Aliases | wi |
| :--- | :--- |
| Required? |  |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPOneView.ServerProfile**_

The Server Profile resource object to transform.

### Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Async Task resource to monitor progress of the Server Profile transformation.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
$ServerProfile = Get-HPOVServerProfile -Name "Prod Server 1" -ErrorAction Stop
$NewServerHardwareType = Get-HPOVServerHardwareType -Name "BL460 Gen9 3" -ErrorAction Stop
Convert-HPOVServerProfile -InputObject $ServerProfile -ServerHardwareType $NewServerHardwareType
```

Transform the specified server profile object to a different server hardware type resource.

```text
 -------------------------- EXAMPLE 2 --------------------------
$ServerProfile = Get-HPOVServerProfile -Name "Prod Server 1" -ErrorAction Stop
$NewEnclosureGroup = Get-HPOVEnclosureGroup -Name "Dev EG 1" -ErrorAction Stop
Convert-HPOVServerProfile -InputObject $ServerProfile -EnclosureGroup $NewEnclosureGroup
```

Transform the specified server profile object to a different enclosure group resource.

```text
 -------------------------- EXAMPLE 3 --------------------------
$ServerProfile = Get-HPOVServerProfile -Name "Prod Server 1" -ErrorAction Stop
$NewEnclosureGroup = Get-HPOVEnclosureGroup -Name "Dev EG 1" -ErrorAction Stop
$NewServerHardwareType = Get-HPOVServerHardwareType -Name "BL460 Gen9 3" -ErrorAction Stop
Convert-HPOVServerProfile -InputObject $ServerProfile -EnclosureGroup $NewEnclosureGroup -ServerHardwareType $NewServerHardwareType
```

Transform the specified server profile object to a different enclosure group and server hardware type resource. 

### Related Links 

* [Convert-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convert-HPOVServerProfileTemplate) 
* [ConvertTo-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/ConvertTo-HPOVServerProfileTemplate) 
* [Copy-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Copy-HPOVServerProfile) 
* [Get-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfile) 
* [Get-HPOVServerProfileConnectionList](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileConnectionList) 
* [Get-HPOVServerProfileMessage](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileMessage) 
* [Get-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileTemplate) 
* [Join-HPOVServerProfileToTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Join-HPOVServerProfileToTemplate) 
* [New-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfile) 
* [New-HPOVServerProfileAssign](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileAssign) 
* [New-HPOVServerProfileAttachVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileAttachVolume) 
* [New-HPOVServerProfileConnection](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileConnection) 
* [New-HPOVServerProfileLogicalDisk](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileLogicalDisk) 
* [New-HPOVServerProfileLogicalDiskController](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileLogicalDiskController) 
* [New-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileTemplate) 
* [Remove-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServerProfile) 
* [Remove-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServerProfileTemplate) 
* [Save-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVServerProfile) 
* [Save-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVServerProfileTemplate) 
* [Set-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerProfile) 
* [Set-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerProfileTemplate) 
* [Update-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVServerProfile) 



## HPE OneView 4.10 Library

### Syntax

```text
Convert-HPOVServerProfile [-InputObject] <Object> [[-ServerHardwareType] <Object>] [[-EnclosureGroup] <Object>] [[-Async] <SwitchParameter>] [[-ApplianceConnection] <Array>] [[-WhatIf] <SwitchParameter>] [[-Confirm] <SwitchParameter>] [<CommonParameters>]
```

### Description

Use this Cmdlet to change the Server Hardware Type and/or Enclosure Group set within the Server Profile. Changing to a different server hardware type may change the capabilities available to the server profile. Changing the enclosure group may change the connections which are available for the profile.

* The server hardware field will be set to "unassigned", requiring re-seletion of server hardware.
* It may also cause incompatibilities with the current configuration.
* All deployed connections will have their port assignment set to "Auto".
* Any incompatibilities will be flagged when the server profile is committed.
* If the new server hardware type does not support the local storage configuration, some storage may be lost.
* If the enclosure group is changed, mezzanine storage is lost and the disk drives are released.
* To prevent data loss, cancel this operation and backup data before applying the profile.
* Any change in the server hardware type will lead to the associated volume loss.
* If the server profile is associated with a server profile template, the server profile will become inconsistent with the template.  The server profile should be unassociated with the template before or after the migration.

{% hint style="info" %}
Required Permissions: Infrastructure administrator or Server administrator.
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

#### -Confirm &lt;SwitchParameter&gt; 

Override confirmation prompt.

| Aliases | cf |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -EnclosureGroup &lt;Object&gt; 

Specify the target HPOneView.EnclosureGroup resource object. By changing the Enclosure Group, assigned Networks with Connections that do not exist on in the associated Logical Interconnect Group\(s\), the Connection may not be assigned to an available FlexNIC.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

The `[HPOneView.ServerProfile]` object from Get-HPOVServerProfile.

| Aliases | ServerProfile, Profile |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

#### -ServerHardwareType &lt;Object&gt; 

Specify the `[HPOneView.ServerHardwareType]` object to transform to. BIOS Settings will be reset to defaults, and Connection FlexNIC assignment will be reset back to Auto.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

-WhatIf &lt;&gt;

| Aliases | wi |
| :--- | :--- |
| Required? |  |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPOneView.ServerProfile**_

The Server Profile resource object to transform.

### Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Async Task resource to monitor progress of the Server Profile transformation.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
$ServerProfile = Get-HPOVServerProfile -Name "Prod Server 1" -ErrorAction Stop
$NewServerHardwareType = Get-HPOVServerHardwareType -Name "BL460 Gen9 3" -ErrorAction Stop
Convert-HPOVServerProfile -InputObject $ServerProfile -ServerHardwareType $NewServerHardwareType
```

Transform the specified server profile object to a different server hardware type resource.

```text
 -------------------------- EXAMPLE 2 --------------------------
$ServerProfile = Get-HPOVServerProfile -Name "Prod Server 1" -ErrorAction Stop
$NewEnclosureGroup = Get-HPOVEnclosureGroup -Name "Dev EG 1" -ErrorAction Stop
Convert-HPOVServerProfile -InputObject $ServerProfile -EnclosureGroup $NewEnclosureGroup
```

Transform the specified server profile object to a different enclosure group resource.

```text
 -------------------------- EXAMPLE 3 --------------------------
$ServerProfile = Get-HPOVServerProfile -Name "Prod Server 1" -ErrorAction Stop
$NewEnclosureGroup = Get-HPOVEnclosureGroup -Name "Dev EG 1" -ErrorAction Stop
$NewServerHardwareType = Get-HPOVServerHardwareType -Name "BL460 Gen9 3" -ErrorAction Stop
Convert-HPOVServerProfile -InputObject $ServerProfile -EnclosureGroup $NewEnclosureGroup -ServerHardwareType $NewServerHardwareType
```

Transform the specified server profile object to a different enclosure group and server hardware type resource. 

### Related Links 

* [Convert-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convert-HPOVServerProfileTemplate) 
* [ConvertTo-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/ConvertTo-HPOVServerProfileTemplate) 
* [Copy-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Copy-HPOVServerProfile) 
* [Get-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfile) 
* [Get-HPOVServerProfileConnectionList](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileConnectionList) 
* [Get-HPOVServerProfileMessage](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileMessage) 
* [Get-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileTemplate) 
* [Join-HPOVServerProfileToTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Join-HPOVServerProfileToTemplate) 
* [New-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfile) 
* [New-HPOVServerProfileAssign](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileAssign) 
* [New-HPOVServerProfileAttachVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileAttachVolume) 
* [New-HPOVServerProfileConnection](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileConnection) 
* [New-HPOVServerProfileLogicalDisk](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileLogicalDisk) 
* [New-HPOVServerProfileLogicalDiskController](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileLogicalDiskController) 
* [New-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileTemplate) 
* [Remove-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServerProfile) 
* [Remove-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServerProfileTemplate) 
* [Save-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVServerProfile) 
* [Save-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVServerProfileTemplate) 
* [Set-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerProfile) 
* [Set-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerProfileTemplate) 
* [Update-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVServerProfile) 

