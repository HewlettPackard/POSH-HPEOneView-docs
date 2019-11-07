---
description: Disable appliance complex password policy.
---

# Disable-HPOVApplianceComplexPasswords

## HPE OneView 5.00 Library

### Syntax

```text
Disable-HPOVApplianceComplexPasswords [[-ApplianceConnection] <Array>] [[-WhatIf] <SwitchParameter>] [[-Confirm] <SwitchParameter>] [<CommonParameters>]
```

### Description

Disables whether users are required to have complex passwords. This option does not force existing users to change their passwords, nor has any impact on directory accounts. By default, the appliance does not enforce complex passwords during creating or modifying internal user account passwords. Use this Cmdlet to disable the policy.

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

#### -Confirm &lt;SwitchParameter&gt; 

Override the confirmation prompt.

| Aliases | cf |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -WhatIf &lt;SwitchParameter&gt; 

Perform a test to identify the beahvior before executing the Cmdlet. Will not modify resources.

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

Appliance global security settings.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Disable-HPOVApplianceComplexPasswords
```

 Disable complex password policy on the appliance. 

### Related Links 

* [Enable-HPOVApplianceComplexPasswords ](enable-hpovappliancecomplexpasswords.md#hpe-oneview-5-00-library)

## HPE OneView 4.20 Library <a id="hpe-oneview-5-00-library"></a>

‌Syntax

```text
Disable-HPOVApplianceComplexPasswords [[-ApplianceConnection] <Array>] [[-WhatIf] <SwitchParameter>] [[-Confirm] <SwitchParameter>] [<CommonParameters>]
```

### ‌Description

‌Disables whether users are required to have complex passwords. This option does not force existing users to change their passwords, nor has any impact on directory accounts. By default, the appliance does not enforce complex passwords during creating or modifying internal user account passwords. Use this Cmdlet to disable the policy.

{% hint style="info" %}
Privileges: Infrastructure administrator
{% endhint %}

### Parameters <a id="parameters"></a>

#### ‌-ApplianceConnection &lt;Array&gt;

‌Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).‌

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters? | False |

#### -Confirm &lt;SwitchParameter&gt; <a id="confirm-less-than-switchparameter-greater-than"></a>

‌Override the confirmation prompt.

| Aliases | cf |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | ​Content |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

#### -WhatIf &lt;SwitchParameter&gt; <a id="whatif-less-than-switchparameter-greater-than"></a>

Perform a test to identify the beahvior before executing the Cmdlet. Will not modify resources.

| Aliases | wi |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | ​Content |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

&lt;CommonParameters&gt;‌

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)‌

### Input Types <a id="input-types"></a>

_**None. You cannot pipe objects to this cmdlet.**_‌

### Return Values <a id="return-values"></a>

_**System.Management.Automation.PSCustomObject**_‌

Appliance global security settings.‌

### Examples <a id="examples"></a>

```text
 -------------------------- EXAMPLE 1 --------------------------
 Disable-HPOVApplianceComplexPasswords
```

 Disable complex password policy on the appliance.‌

### Related Links <a id="related-links"></a>

* ​[Enable-HPOVApplianceComplexPasswords](enable-hpovappliancecomplexpasswords.md#hpe-oneview-4-20-library)

## ​HPE OneView 4.10 Library

### Syntax <a id="syntax"></a>

```text
Disable-HPOVApplianceComplexPasswords [[-ApplianceConnection] <Array>] [[-WhatIf] <SwitchParameter>] [[-Confirm] <SwitchParameter>] [<CommonParameters>]
```

### Description <a id="description"></a>

Disables whether users are required to have complex passwords. This option does not force existing users to change their passwords, nor has any impact on directory accounts. By default, the appliance does not enforce complex passwords during creating or modifying internal user account passwords. Use this Cmdlet to disable the policy.

{% hint style="info" %}
Privileges: Infrastructure administrator
{% endhint %}

### Parameters <a id="parameters"></a>

#### -ApplianceConnection &lt;Array&gt; <a id="applianceconnection-less-than-array-greater-than"></a>

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).‌

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters? | False |

#### -Confirm &lt;SwitchParameter&gt; <a id="confirm-less-than-switchparameter-greater-than"></a>

Override the confirmation prompt.

| Aliases | cf |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | ​Content |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

#### -WhatIf &lt;SwitchParameter&gt; <a id="whatif-less-than-switchparameter-greater-than"></a>

Perform a test to identify the beahvior before executing the Cmdlet. Will not modify resources.

| Aliases | wi |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | ​Content |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

&lt;CommonParameters&gt;‌

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)‌

### Input Types <a id="input-types"></a>

_**None. You cannot pipe objects to this cmdlet.**_‌

### Return Values <a id="return-values"></a>

‌_**System.Management.Automation.PSCustomObject**_‌

Appliance global security settings.‌

### Examples <a id="examples"></a>

```text
 -------------------------- EXAMPLE 1 --------------------------Disable-HPOVApplianceComplexPasswords
```

 Disable complex password policy on the appliance.‌

### Related Links <a id="related-links"></a>

* ​[Enable-HPOVApplianceComplexPasswords](enable-hpovappliancecomplexpasswords.md#hpe-oneview-4-10-library)

