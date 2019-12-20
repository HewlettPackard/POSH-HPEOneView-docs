---
description: Enable appliance complex password policy.
---

# Enable-HPOVApplianceComplexPasswords

## HPE OneView 5.00 Library

### Syntax

```text
Enable-HPOVApplianceComplexPasswords [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

### Description

Enables whether users are required to have complex passwords. This option does not force existing users to change their passwords, nor has any impact on directory accounts. By default, the appliance does not enforce complex passwords during creating or modifying internal user account passwords. Use this Cmdlet to enable the policy.

Complex passwords must contain the following:

* Minimum of 14 characters
* Minimum of one uppercase character
* Minimum of one lowercase character
* Minimum one number
* Minimum of one special character. For example: !@\#$^\*\_-=+,.?
* No whitespace

{% hint style="info" %}
Minimum Required Privileges: Infrastructure administrator
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

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**System.Management.Automation.PSCustomObject**_

Appliance global security settings.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Enable-HPOVApplianceComplexPasswords
```

Enable appliance complex password policy. 

### Related Links 

* [Disable-HPOVApplianceComplexPasswords ](disable-hpovappliancecomplexpasswords.md#hpe-oneview-5-00-library)

## HPE OneView 4.20 Library

### Syntax

```text
Enable-HPOVApplianceComplexPasswords [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

### Description

Enables whether users are required to have complex passwords. This option does not force existing users to change their passwords, nor has any impact on directory accounts. By default, the appliance does not enforce complex passwords during creating or modifying internal user account passwords. Use this Cmdlet to enable the policy.

Complex passwords must contain the following:

* Minimum of 14 characters
* Minimum of one uppercase character
* Minimum of one lowercase character
* Minimum one number
* Minimum of one special character. For example: !@\#$^\*\_-=+,.?
* No whitespace

{% hint style="info" %}
Minimum Required Privileges: Infrastructure administrator
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

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**System.Management.Automation.PSCustomObject**_

Appliance global security settings.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Enable-HPOVApplianceComplexPasswords
```

Enable appliance complex password policy. 

### Related Links 

* [Disable-HPOVApplianceComplexPasswords ](disable-hpovappliancecomplexpasswords.md#hpe-oneview-5-00-library-1)

## HPE OneView 4.10 Library

### Syntax

```text
Enable-HPOVApplianceComplexPasswords [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

### Description

Enables whether users are required to have complex passwords. This option does not force existing users to change their passwords, nor has any impact on directory accounts. By default, the appliance does not enforce complex passwords during creating or modifying internal user account passwords. Use this Cmdlet to enable the policy.

Complex passwords must contain the following:

* Minimum of 14 characters
* Minimum of one uppercase character
* Minimum of one lowercase character
* Minimum one number
* Minimum of one special character. For example: !@\#$^\*\_-=+,.?
* No whitespace

{% hint style="info" %}
Minimum Required Privileges: Infrastructure administrator
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

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**System.Management.Automation.PSCustomObject**_

Appliance global security settings.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Enable-HPOVApplianceComplexPasswords
```

Enable appliance complex password policy. 

### Related Links 

* [Disable-HPOVApplianceComplexPasswords](disable-hpovappliancecomplexpasswords.md#hpe-oneview-4-10-library) 



