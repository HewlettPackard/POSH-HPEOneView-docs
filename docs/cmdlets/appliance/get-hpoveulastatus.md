---
description: Get the appliance end user license agreement (EULA) status.
---

# Get-HPOVEulaStatus

## HPE OneView 5.00 Library

### Syntax

```text
Get-HPOVEulaStatus [-Appliance] <Object> [<CommonParameters>]
```

### Description

The appliance has a EULA \(End-User License agreement\) that you must accept before using the appliance for the first time.

This Cmdlet supports an unauthenticated request. If attempting to get the EULA status of an appliance not yet configured, provide the IP Address or FQDN of the appliance. A temporary ApplianceConnection will be created then removed in the `${Global:ConnectedSessions}` tracker.

{% hint style="info" %}
Minimum required privileges: None
{% endhint %}

### Parameters

#### -Appliance &lt;Object&gt; 

The FQDN, IP Address or HPOneView.Appliance.Connection of an HPE OneView appliance must be provided.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Appliance.EulaStatus**_

Object that returns the Appliance Name and if the EULA has been accepted with a boolean "Accepted" property.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVEulaStatus -Appliance myappliance.domain.com

Appliance              Accepted
---------              --------
myappliance.domain.com    False
```

Get the EULA status from myappliance.domain.com

```text
 -------------------------- EXAMPLE 2 --------------------------
$Connection = Connect-HPOVMgmt -Appliance myappliance.domain.com -Username Administrator -Password MyPassw0rd
Get-HPOVEulaStatus -Appliance $Connection

Appliance              Accepted
---------              --------
myappliance.domain.com    False
```

Connect to an appliance, then get the EULA status from myappliance.domain.com.

### Related Links 

* [Set-HPOVEulaStatus](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEulaStatus) 

## HPE OneView 4.20 Library

### Syntax

```text
Get-HPOVEulaStatus [-Appliance] <Object> [<CommonParameters>]
```

### Description

The appliance has a EULA \(End-User License agreement\) that you must accept before using the appliance for the first time.

This Cmdlet supports an unauthenticated request. If attempting to get the EULA status of an appliance not yet configured, provide the IP Address or FQDN of the appliance. A temporary ApplianceConnection will be created then removed in the `${Global:ConnectedSessions}` tracker.

{% hint style="info" %}
Minimum required privileges: None
{% endhint %}

### Parameters

#### -Appliance &lt;Object&gt; 

The FQDN, IP Address or HPOneView.Appliance.Connection of an HPE OneView appliance must be provided.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Appliance.EulaStatus**_

Object that returns the Appliance Name and if the EULA has been accepted with a boolean "Accepted" property.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVEulaStatus -Appliance myappliance.domain.com

Appliance              Accepted
---------              --------
myappliance.domain.com    False
```

Get the EULA status from myappliance.domain.com

```text
 -------------------------- EXAMPLE 2 --------------------------
$Connection = Connect-HPOVMgmt -Appliance myappliance.domain.com -Username Administrator -Password MyPassw0rd
Get-HPOVEulaStatus -Appliance $Connection

Appliance              Accepted
---------              --------
myappliance.domain.com    False
```

Connect to an appliance, then get the EULA status from myappliance.domain.com.

### Related Links 

* [Set-HPOVEulaStatus](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEulaStatus) 

## HPE OneView 4.10 Library

### Syntax

```text
Get-HPOVEulaStatus [-Appliance] <Object> [<CommonParameters>]
```

### Description

The appliance has a EULA \(End-User License agreement\) that you must accept before using the appliance for the first time.

This Cmdlet supports an unauthenticated request. If attempting to get the EULA status of an appliance not yet configured, provide the IP Address or FQDN of the appliance. A temporary ApplianceConnection will be created then removed in the `${Global:ConnectedSessions}` tracker.

{% hint style="info" %}
Minimum required privileges: None
{% endhint %}

### Parameters

#### -Appliance &lt;Object&gt; 

The FQDN, IP Address or HPOneView.Appliance.Connection of an HPE OneView appliance must be provided.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Appliance.EulaStatus**_

Object that returns the Appliance Name and if the EULA has been accepted with a boolean "Accepted" property.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVEulaStatus -Appliance myappliance.domain.com

Appliance              Accepted
---------              --------
myappliance.domain.com    False
```

Get the EULA status from myappliance.domain.com

```text
 -------------------------- EXAMPLE 2 --------------------------
$Connection = Connect-HPOVMgmt -Appliance myappliance.domain.com -Username Administrator -Password MyPassw0rd
Get-HPOVEulaStatus -Appliance $Connection

Appliance              Accepted
---------              --------
myappliance.domain.com    False
```

Connect to an appliance, then get the EULA status from myappliance.domain.com.

### Related Links 

* [Set-HPOVEulaStatus](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEulaStatus) 



