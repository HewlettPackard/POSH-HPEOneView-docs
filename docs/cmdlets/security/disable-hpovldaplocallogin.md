---
description: Disable local authentication logins.
---

# Disable-HPOVLdapLocalLogin

### HPE OneView 5.00 Library

###  Syntax

```text
Disable-HPOVLdapLocalLogin [[-ApplianceConnection] <Object>] [[-WhatIf] <SwitchParameter>] [[-Confirm] <SwitchParameter>] [<CommonParameters>]
```

### Description

You can configure HPE OneView to use an external enterprise directory service for user authentication. HPE OneView supports the following enterprise directory services:

* Active Directory
* OpenLDAP

When you use a directory service, directory users are granted HPE OneView permissions using their group membership in the directory. After defining a directory service, use the User and Groups screen to define permissions for directory groups. Directory groups are assigned one or more HPE OneView permissions. A directory user is assigned the HPE OneView permissions that represent the union of the permissions for all the directory groups that the user is a member of. Only after permissions are defined for directory groups, directory users are authenticated into the appliance.

If you want to authenticate all logins to the appliance through a directory service, you must disable local logins. Also, if a directory is inaccessible in some special cases, you can enable the emergency local login. To enable emergency local login, you must disable local logins.

{% hint style="warning" %}
Local logins cannot be disabled until you log in using an authentication directory service as an Infrastructure administrator. Verify that you can log in to the appliance as an Infrastructure administrator from the authentication directory service before continuing.
{% endhint %}

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator.
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
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

_**System.Management.Automation.PSCustomObject**_

Appliance Authentication Directory setting.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Disable-HPOVLdapLocalLogin
```

 Disable local logins on the appliance. 

### Related Links 

* [Enable-HPOVLdapLocalLogin](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVLdapLocalLogin) 

## HPE OneView 4.20 Library

###  Syntax

```text
Disable-HPOVLdapLocalLogin [[-ApplianceConnection] <Object>] [[-WhatIf] <SwitchParameter>] [[-Confirm] <SwitchParameter>] [<CommonParameters>]
```

### Description

You can configure HPE OneView to use an external enterprise directory service for user authentication. HPE OneView supports the following enterprise directory services:

* Active Directory
* OpenLDAP

When you use a directory service, directory users are granted HPE OneView permissions using their group membership in the directory. After defining a directory service, use the User and Groups screen to define permissions for directory groups. Directory groups are assigned one or more HPE OneView permissions. A directory user is assigned the HPE OneView permissions that represent the union of the permissions for all the directory groups that the user is a member of. Only after permissions are defined for directory groups, directory users are authenticated into the appliance.

If you want to authenticate all logins to the appliance through a directory service, you must disable local logins. Also, if a directory is inaccessible in some special cases, you can enable the emergency local login. To enable emergency local login, you must disable local logins.

{% hint style="warning" %}
Local logins cannot be disabled until you log in using an authentication directory service as an Infrastructure administrator. Verify that you can log in to the appliance as an Infrastructure administrator from the authentication directory service before continuing.
{% endhint %}

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator.
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
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

_**System.Management.Automation.PSCustomObject**_

Appliance Authentication Directory setting.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Disable-HPOVLdapLocalLogin
```

 Disable local logins on the appliance. 

### Related Links 

* [Enable-HPOVLdapLocalLogin](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVLdapLocalLogin) 

## HPE OneView 4.10 Library

###  Syntax

```text
Disable-HPOVLdapLocalLogin [[-ApplianceConnection] <Object>] [[-WhatIf] <SwitchParameter>] [[-Confirm] <SwitchParameter>] [<CommonParameters>]
```

### Description

You can configure HPE OneView to use an external enterprise directory service for user authentication. HPE OneView supports the following enterprise directory services:

* Active Directory
* OpenLDAP

When you use a directory service, directory users are granted HPE OneView permissions using their group membership in the directory. After defining a directory service, use the User and Groups screen to define permissions for directory groups. Directory groups are assigned one or more HPE OneView permissions. A directory user is assigned the HPE OneView permissions that represent the union of the permissions for all the directory groups that the user is a member of. Only after permissions are defined for directory groups, directory users are authenticated into the appliance.

If you want to authenticate all logins to the appliance through a directory service, you must disable local logins. Also, if a directory is inaccessible in some special cases, you can enable the emergency local login. To enable emergency local login, you must disable local logins.

{% hint style="warning" %}
Local logins cannot be disabled until you log in using an authentication directory service as an Infrastructure administrator. Verify that you can log in to the appliance as an Infrastructure administrator from the authentication directory service before continuing.
{% endhint %}

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator.
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
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

_**System.Management.Automation.PSCustomObject**_

Appliance Authentication Directory setting.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Disable-HPOVLdapLocalLogin
```

 Disable local logins on the appliance. 

### Related Links 

* [Enable-HPOVLdapLocalLogin](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVLdapLocalLogin) 

