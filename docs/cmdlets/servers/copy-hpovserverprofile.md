---
description: Copy or clone a server profile.
---

# Copy-HPOVServerProfile

### HPE OneView 5.00 Library

### Syntax

```text
Copy-HPOVServerProfile [-InputObject] <Object> [[-DestinationName] <String>] [[-Assign] <Object>] [[-ApplianceConnection] <Object>] [-WhatIf] <SwitchParameter> [-Confirm] <SwitchParameter> [<CommonParameters>]
```

### Description

You can copy a server profile to server hardware of the same server hardware type and in the same enclosure group \(for servers\). If you are deploying multiple servers of the same type into the same enclosure, you can create a server profile template to streamline server provisioning.

This cmdlet will copy a source Server Profile to a new instance You can assign the copy to an existing Server Device, or specify "unassigned".

{% hint style="info" %}
Privileges: Infrastructure administrator or Server administrator
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

#### -Assign &lt;Object&gt; 

The object of the target server to assign the new profile to. If omitted, profile will be "unassigned"

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | unassigned |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Confirm &lt;SwitchParameter&gt;

| Aliases | cf |
| :--- | :--- |
| Required? |  |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -DestinationName &lt;String&gt; 

The name of the destination server profile that will be created. If omitted, the new name will have "Copy of " prefixed to the source name.

| Aliases | dname, dst |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

The object of the source server profile to be copied.

| Aliases | sname, src, SourceName |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
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

_**System.Management.Automation.PSCustomObject**_

Server Profile resource object

### Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Profile Create async task

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
et-HPOVServerProfile -Name "Profile 1" | Copy-HPOVServerProfile
```

Copy "Profile 1" to a new Server Profile that is unassigned and named "Copy of Profile 1".

```text
 -------------------------- EXAMPLE 2 --------------------------
Copy-HPOVServerProfile -InputObject (Get-HPOVServerProfile -Name "Profile 1") -DestinationName "Profile 2"
```

Copy "Profile 1" to a new Server Profile that is unassigned and named "Profile 2".

```text
 -------------------------- EXAMPLE 3 --------------------------
$ServerProfile = Get-HPOVServerProfile -Name \"Profile 1\"
$Server = Get-HPOVServer -Name "Encl1, Bay 9"
Copy-HPOVServerProfile -InputObject $ServerProfile "Profile 1" -DestinationName "Profile 2" -Assign $Server
```

Copy "Profile 1" to a new Server Profile that is assigned to "Encl1, Bay 9" named "Profile 2".

```text
 -------------------------- EXAMPLE 4 --------------------------
$ServerProfile = Get-HPOVServerProfile -Name "Profile Template"
11.16 | % { Copy-HPOVServerProfile -InputObject $ServerProfile -DestinationName "Profile $_" -Assign "Encl1, bay $_" }
```

Copy 5 Server Profiles from "Profile Template" that will be assigned to bays 11 - 16 of Encl1. 

### Related Links 

* [Convert-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convert-HPOVServerProfile) 
* [Convert-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convert-HPOVServerProfileTemplate) 
* [ConvertTo-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/ConvertTo-HPOVServerProfileTemplate) 
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
Copy-HPOVServerProfile [-InputObject] <Object> [[-DestinationName] <String>] [[-Assign] <Object>] [[-ApplianceConnection] <Object>] [-WhatIf] <SwitchParameter> [-Confirm] <SwitchParameter> [<CommonParameters>]
```

### Description

You can copy a server profile to server hardware of the same server hardware type and in the same enclosure group \(for servers\). If you are deploying multiple servers of the same type into the same enclosure, you can create a server profile template to streamline server provisioning.

This cmdlet will copy a source Server Profile to a new instance You can assign the copy to an existing Server Device, or specify "unassigned".

{% hint style="info" %}
Privileges: Infrastructure administrator or Server administrator
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

#### -Assign &lt;Object&gt; 

The object of the target server to assign the new profile to. If omitted, profile will be "unassigned"

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | unassigned |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Confirm &lt;SwitchParameter&gt;

| Aliases | cf |
| :--- | :--- |
| Required? |  |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -DestinationName &lt;String&gt; 

The name of the destination server profile that will be created. If omitted, the new name will have "Copy of " prefixed to the source name.

| Aliases | dname, dst |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

The object of the source server profile to be copied.

| Aliases | sname, src, SourceName |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
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

_**System.Management.Automation.PSCustomObject**_

Server Profile resource object

### Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Profile Create async task

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
et-HPOVServerProfile -Name "Profile 1" | Copy-HPOVServerProfile
```

Copy "Profile 1" to a new Server Profile that is unassigned and named "Copy of Profile 1".

```text
 -------------------------- EXAMPLE 2 --------------------------
Copy-HPOVServerProfile -InputObject (Get-HPOVServerProfile -Name "Profile 1") -DestinationName "Profile 2"
```

Copy "Profile 1" to a new Server Profile that is unassigned and named "Profile 2".

```text
 -------------------------- EXAMPLE 3 --------------------------
$ServerProfile = Get-HPOVServerProfile -Name \"Profile 1\"
$Server = Get-HPOVServer -Name "Encl1, Bay 9"
Copy-HPOVServerProfile -InputObject $ServerProfile "Profile 1" -DestinationName "Profile 2" -Assign $Server
```

Copy "Profile 1" to a new Server Profile that is assigned to "Encl1, Bay 9" named "Profile 2".

```text
 -------------------------- EXAMPLE 4 --------------------------
$ServerProfile = Get-HPOVServerProfile -Name "Profile Template"
11.16 | % { Copy-HPOVServerProfile -InputObject $ServerProfile -DestinationName "Profile $_" -Assign "Encl1, bay $_" }
```

Copy 5 Server Profiles from "Profile Template" that will be assigned to bays 11 - 16 of Encl1. 

### Related Links 

* [Convert-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convert-HPOVServerProfile) 
* [Convert-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convert-HPOVServerProfileTemplate) 
* [ConvertTo-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/ConvertTo-HPOVServerProfileTemplate) 
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
Copy-HPOVServerProfile [-InputObject] <Object> [[-DestinationName] <String>] [[-Assign] <Object>] [[-ApplianceConnection] <Object>] [-WhatIf] <SwitchParameter> [-Confirm] <SwitchParameter> [<CommonParameters>]
```

### Description

You can copy a server profile to server hardware of the same server hardware type and in the same enclosure group \(for servers\). If you are deploying multiple servers of the same type into the same enclosure, you can create a server profile template to streamline server provisioning.

This cmdlet will copy a source Server Profile to a new instance You can assign the copy to an existing Server Device, or specify "unassigned".

{% hint style="info" %}
Privileges: Infrastructure administrator or Server administrator
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

#### -Assign &lt;Object&gt; 

The object of the target server to assign the new profile to. If omitted, profile will be "unassigned"

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | unassigned |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Confirm &lt;SwitchParameter&gt;

| Aliases | cf |
| :--- | :--- |
| Required? |  |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -DestinationName &lt;String&gt; 

The name of the destination server profile that will be created. If omitted, the new name will have "Copy of " prefixed to the source name.

| Aliases | dname, dst |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

The object of the source server profile to be copied.

| Aliases | sname, src, SourceName |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
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

_**System.Management.Automation.PSCustomObject**_

Server Profile resource object

### Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Profile Create async task

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
et-HPOVServerProfile -Name "Profile 1" | Copy-HPOVServerProfile
```

Copy "Profile 1" to a new Server Profile that is unassigned and named "Copy of Profile 1".

```text
 -------------------------- EXAMPLE 2 --------------------------
Copy-HPOVServerProfile -InputObject (Get-HPOVServerProfile -Name "Profile 1") -DestinationName "Profile 2"
```

Copy "Profile 1" to a new Server Profile that is unassigned and named "Profile 2".

```text
 -------------------------- EXAMPLE 3 --------------------------
$ServerProfile = Get-HPOVServerProfile -Name \"Profile 1\"
$Server = Get-HPOVServer -Name "Encl1, Bay 9"
Copy-HPOVServerProfile -InputObject $ServerProfile "Profile 1" -DestinationName "Profile 2" -Assign $Server
```

Copy "Profile 1" to a new Server Profile that is assigned to "Encl1, Bay 9" named "Profile 2".

```text
 -------------------------- EXAMPLE 4 --------------------------
$ServerProfile = Get-HPOVServerProfile -Name "Profile Template"
11.16 | % { Copy-HPOVServerProfile -InputObject $ServerProfile -DestinationName "Profile $_" -Assign "Encl1, bay $_" }
```

Copy 5 Server Profiles from "Profile Template" that will be assigned to bays 11 - 16 of Encl1. 

### Related Links 

* [Convert-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convert-HPOVServerProfile) 
* [Convert-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convert-HPOVServerProfileTemplate) 
* [ConvertTo-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/ConvertTo-HPOVServerProfileTemplate) 
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

