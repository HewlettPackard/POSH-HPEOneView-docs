---
description: Verify pending appliance update has been staged.
---

# Get-HPOVPendingUpdate

## HPE OneView 5.00 Library

### Syntax

```text
Get-HPOVPendingUpdate [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

The appliance runs a combination of software and firmware. Maintaining up-to-date appliance software and firmware fixes problems, improves performance, and adds new features to the appliance. The appliance does not automatically notify you when an update is available. You must determine if an appliance update file has been released.

To view the installed version of appliance firmware, use Get-HPOVVersion Cmdlet.

Verify if a newer version of an appliance update file is available for download at [www.hpe.com/info/hpeoneview/updates](http://www.hpe.com/info/hpeoneview/updates).

Before you update the appliance, examine the [HPE OneView Release Notes](http://www.hpe.com/info/oneview/docs) to learn about supported upgrade paths, new features delivered in the update, limitations, troubleshooting hints and tips, and if you must restart the appliance after it is updated.

{% hint style="info" %}
When you download the appliance update file, a link to the [HPE OneView Release Notes](http://www.hpe.com/info/oneview/docs) appears in the download dialog box. Hewlett Packard Enterprise recommends that you click the link to read, save, and print the information for future reference. Once the download starts, you cannot access the link again.
{% endhint %}

When you install an appliance update, the appliance restarts and goes offline. When the appliance is offline, it does not affect the managed resources. The managed resources continue to operate while the appliance is offline.

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator or Software administrator
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

_**HPOneView.Appliance.Update.Pending \[System.Management.Automation.PSCustomObject\]**_

Pending appliance update

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVPendingUpdate
```

Retrieve pending update from all connected appliance sessions. 

### Related Links 

* Get-HPOVVersion
* Install-HPOVUpdate
* [Remove-HPOVPendingUpdate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVPendingUpdate) 

## HPE OneView 4.20 Library

### Syntax

```text
Get-HPOVPendingUpdate [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

The appliance runs a combination of software and firmware. Maintaining up-to-date appliance software and firmware fixes problems, improves performance, and adds new features to the appliance. The appliance does not automatically notify you when an update is available. You must determine if an appliance update file has been released.

To view the installed version of appliance firmware, use Get-HPOVVersion Cmdlet.

Verify if a newer version of an appliance update file is available for download at [www.hpe.com/info/hpeoneview/updates](http://www.hpe.com/info/hpeoneview/updates).

Before you update the appliance, examine the [HPE OneView Release Notes](http://www.hpe.com/info/oneview/docs) to learn about supported upgrade paths, new features delivered in the update, limitations, troubleshooting hints and tips, and if you must restart the appliance after it is updated.

{% hint style="info" %}
When you download the appliance update file, a link to the [HPE OneView Release Notes](http://www.hpe.com/info/oneview/docs) appears in the download dialog box. Hewlett Packard Enterprise recommends that you click the link to read, save, and print the information for future reference. Once the download starts, you cannot access the link again.
{% endhint %}

When you install an appliance update, the appliance restarts and goes offline. When the appliance is offline, it does not affect the managed resources. The managed resources continue to operate while the appliance is offline.

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator or Software administrator
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

_**HPOneView.Appliance.Update.Pending \[System.Management.Automation.PSCustomObject\]**_

Pending appliance update

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVPendingUpdate
```

Retrieve pending update from all connected appliance sessions. 

### Related Links 

* Get-HPOVVersion
* Install-HPOVUpdate
* [Remove-HPOVPendingUpdate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVPendingUpdate) 

## HPE OneView 4.10 Library

### Syntax

```text
Get-HPOVPendingUpdate [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

The appliance runs a combination of software and firmware. Maintaining up-to-date appliance software and firmware fixes problems, improves performance, and adds new features to the appliance. The appliance does not automatically notify you when an update is available. You must determine if an appliance update file has been released.

To view the installed version of appliance firmware, use Get-HPOVVersion Cmdlet.

Verify if a newer version of an appliance update file is available for download at [www.hpe.com/info/hpeoneview/updates](http://www.hpe.com/info/hpeoneview/updates).

Before you update the appliance, examine the [HPE OneView Release Notes](http://www.hpe.com/info/oneview/docs) to learn about supported upgrade paths, new features delivered in the update, limitations, troubleshooting hints and tips, and if you must restart the appliance after it is updated.

{% hint style="info" %}
When you download the appliance update file, a link to the [HPE OneView Release Notes](http://www.hpe.com/info/oneview/docs) appears in the download dialog box. Hewlett Packard Enterprise recommends that you click the link to read, save, and print the information for future reference. Once the download starts, you cannot access the link again.
{% endhint %}

When you install an appliance update, the appliance restarts and goes offline. When the appliance is offline, it does not affect the managed resources. The managed resources continue to operate while the appliance is offline.

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator or Software administrator
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

_**HPOneView.Appliance.Update.Pending \[System.Management.Automation.PSCustomObject\]**_

Pending appliance update

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVPendingUpdate
```

Retrieve pending update from all connected appliance sessions. 

### Related Links 

* Get-HPOVVersion
* Install-HPOVUpdate
* [Remove-HPOVPendingUpdate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVPendingUpdate) 

