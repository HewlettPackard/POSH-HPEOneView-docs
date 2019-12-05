---
description: Get appliance configured login message.
---

# Get-HPOVLoginMessage

## HPE OneView 5.00 Library

### Syntax

```text
Get-HPOVLoginMessage [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

HPE OneView supports administrators that require management tools display a company specific legal or login message prior to authentication. The login message can be formatted using Markdown syntax. Administrators can also enforce the acknowledgement of this login message.

This Cmdlet will retrieve the current login message configuration.

{% hint style="info" %}
Minimum required privileges: Read-only
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

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

### Return Values

_**HPOneView.Appliance.LoginMessage**_

If successful, returns a resource

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVLoginMessage
Appliance   : hpov1.domain.com
Message     : ************************************
              *****        WARNING        ********
              ************************************
              This management appliance is a company owned asset and provided for the exclusive use of authorized personnel. Unauthorized use or
              abuse of this system may lead to corrective action including termination, civil and/or criminal penalties.
Acknowledge : True


Appliance   : hpov2.domain.com
Message     : ************************************
              *****        WARNING        ********
              ************************************
              This management appliance is a company owned asset and provided for the exclusive use of authorized personnel. Unauthorized use or
              abuse of this system may lead to corrective action including termination, civil and/or criminal penalties.
Acknowledge : False


```

Get the Login Message from all connected appliances. 

### Related Links 

* [Set-HPOVLoginMessage](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVLoginMessage) 

## HPE OneView 4.20 Library

### Syntax

```text
Get-HPOVLoginMessage [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

HPE OneView supports administrators that require management tools display a company specific legal or login message prior to authentication. The login message can be formatted using Markdown syntax. Administrators can also enforce the acknowledgement of this login message.

This Cmdlet will retrieve the current login message configuration.

{% hint style="info" %}
Minimum required privileges: Read-only
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

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

### Return Values

_**HPOneView.Appliance.LoginMessage**_

If successful, returns a resource

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVLoginMessage
Appliance   : hpov1.domain.com
Message     : ************************************
              *****        WARNING        ********
              ************************************
              This management appliance is a company owned asset and provided for the exclusive use of authorized personnel. Unauthorized use or
              abuse of this system may lead to corrective action including termination, civil and/or criminal penalties.
Acknowledge : True


Appliance   : hpov2.domain.com
Message     : ************************************
              *****        WARNING        ********
              ************************************
              This management appliance is a company owned asset and provided for the exclusive use of authorized personnel. Unauthorized use or
              abuse of this system may lead to corrective action including termination, civil and/or criminal penalties.
Acknowledge : False


```

Get the Login Message from all connected appliances. 

### Related Links 

* [Set-HPOVLoginMessage](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVLoginMessage) 

## HPE OneView 4.10 Library

### Syntax

```text
Get-HPOVLoginMessage [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

HPE OneView supports administrators that require management tools display a company specific legal or login message prior to authentication. The login message can be formatted using Markdown syntax. Administrators can also enforce the acknowledgement of this login message.

This Cmdlet will retrieve the current login message configuration.

{% hint style="info" %}
Minimum required privileges: Read-only
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

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

### Return Values

_**HPOneView.Appliance.LoginMessage**_

If successful, returns a resource

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVLoginMessage
Appliance   : hpov1.domain.com
Message     : ************************************
              *****        WARNING        ********
              ************************************
              This management appliance is a company owned asset and provided for the exclusive use of authorized personnel. Unauthorized use or
              abuse of this system may lead to corrective action including termination, civil and/or criminal penalties.
Acknowledge : True


Appliance   : hpov2.domain.com
Message     : ************************************
              *****        WARNING        ********
              ************************************
              This management appliance is a company owned asset and provided for the exclusive use of authorized personnel. Unauthorized use or
              abuse of this system may lead to corrective action including termination, civil and/or criminal penalties.
Acknowledge : False


```

Get the Login Message from all connected appliances. 

### Related Links 

* [Set-HPOVLoginMessage](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVLoginMessage) 



