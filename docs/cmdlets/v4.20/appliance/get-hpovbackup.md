---
description: List appliance backups.
---

# Get-HPOVBackup

## Syntax

```text
Get-HPOVBackup
    [-Before <DateTime>]
    [-After <DateTime>]
    [-ApplianceConnection] <Array>
    [<CommonParameters>]
```

## Description

HPE OneView provides the ability to save your configuration settings and management data to a backup file and enables you to use that backup to restore a corrupted appliance in the event of a catastrophic failure.

The backup process involves creating a backup file and then downloading that file so that you can store it to a safe and secure (off-appliance) location for future use. You can schedule automatic backup operations and designate a remote location for the backup file.

Use this cmdlet to return any existing backups that have not been downloaded or offloaded on the appliance.

## Examples

###  Example 1 

```text
Get-HPOVBackup
```

This command will return any appliance backs present on the appliance.

###  Example 2 

```text
Get-HPOVBackup -Before [datetime]"2017/01/01"
```

This command will return applinace backups that were created before 2017/01/01.

## Parameters

### -Before &lt;DateTime&gt;

Specify the DateTime object of when to locate backups created before.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -After &lt;DateTime&gt;

Specify the DateTime object of when to locate backups created after.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `(${Global:ConnectedSessions} | ? Default)` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**The generated backup File if appliance is not setup for remote storage or the Force parameter is used.**_



## Related Links

* [New-HPOVBackup](new-hpovbackup.md)
* [Save-HPOVBackup](save-hpovbackup.md)
