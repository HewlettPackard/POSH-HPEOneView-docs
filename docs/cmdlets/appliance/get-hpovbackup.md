---
description: List appliance backups.
---

# Get-HPOVBackup

## HPE OneView 5.00 Library

### Syntax

```text
Get-HPOVBackup [[-Before] <DateTime>] [[-After] <DateTime>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

### Description

HPE OneView provides the ability to save your configuration settings and management data to a backup file and enables you to use that backup to restore a corrupted appliance in the event of a catastrophic failure.

The backup process involves creating a backup file and then downloading that file so that you can store it to a safe and secure \(off-appliance\) location for future use. You can schedule automatic backup operations and designate a remote location for the backup file.

Use this Cmdlet to return any existing backups that have not been downloaded or offloaded on the appliance.

{% hint style="info" %}
Minimum required privileges: Read only
{% endhint %}

### Parameters

#### -After &lt;DateTime&gt; 

Specify the DateTime object of when to locate backups created after.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -ApplianceConnection &lt;Array&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Before &lt;DateTime&gt; 

Specify the DateTime object of when to locate backups created before.

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

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**The generated backup File if appliance is not setup for remote storage or the Force parameter is used.**_

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVBackup
```

This command will return any appliance backs present on the appliance.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVBackup -Before [datetime]"2017/01/01"
```

This command will return appliance backups that were created before 2017/01/01. 

### Related Links 

* [New-HPOVBackup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVBackup) 
* [Save-HPOVBackup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVBackup) 

## HPE OneView 4.20 Library

### Syntax

```text
Get-HPOVBackup [[-Before] <DateTime>] [[-After] <DateTime>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

### Description

HPE OneView provides the ability to save your configuration settings and management data to a backup file and enables you to use that backup to restore a corrupted appliance in the event of a catastrophic failure.

The backup process involves creating a backup file and then downloading that file so that you can store it to a safe and secure \(off-appliance\) location for future use. You can schedule automatic backup operations and designate a remote location for the backup file.

Use this Cmdlet to return any existing backups that have not been downloaded or offloaded on the appliance.

{% hint style="info" %}
Minimum required privileges: Read only
{% endhint %}

### Parameters

#### -After &lt;DateTime&gt; 

Specify the DateTime object of when to locate backups created after.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -ApplianceConnection &lt;Array&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Before &lt;DateTime&gt; 

Specify the DateTime object of when to locate backups created before.

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

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**The generated backup File if appliance is not setup for remote storage or the Force parameter is used.**_

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVBackup
```

This command will return any appliance backs present on the appliance.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVBackup -Before [datetime]"2017/01/01"
```

This command will return appliance backups that were created before 2017/01/01. 

### Related Links 

* [New-HPOVBackup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVBackup) 
* [Save-HPOVBackup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVBackup) 

## HPE OneView 4.10 Library

### Syntax

```text
Get-HPOVBackup [[-Before] <DateTime>] [[-After] <DateTime>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

### Description

HPE OneView provides the ability to save your configuration settings and management data to a backup file and enables you to use that backup to restore a corrupted appliance in the event of a catastrophic failure.

The backup process involves creating a backup file and then downloading that file so that you can store it to a safe and secure \(off-appliance\) location for future use. You can schedule automatic backup operations and designate a remote location for the backup file.

Use this Cmdlet to return any existing backups that have not been downloaded or offloaded on the appliance.

{% hint style="info" %}
Minimum required privileges: Read only
{% endhint %}

### Parameters

#### -After &lt;DateTime&gt; 

Specify the DateTime object of when to locate backups created after.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -ApplianceConnection &lt;Array&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Before &lt;DateTime&gt; 

Specify the DateTime object of when to locate backups created before.

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

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**The generated backup File if appliance is not setup for remote storage or the Force parameter is used.**_

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVBackup
```

This command will return any appliance backs present on the appliance.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVBackup -Before [datetime]"2017/01/01"
```

This command will return appliance backups that were created before 2017/01/01. 

### Related Links 

* [New-HPOVBackup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVBackup) 
* [Save-HPOVBackup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVBackup) 


