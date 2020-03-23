---
description: Save existing backups on an appliance.
---

# Save-HPOVBackup

## Syntax

```text
Save-HPOVBackup
    [-Location <String>]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

```text
Save-HPOVBackup
    [-SaveRemoteOnly]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

HPE OneView provides the ability to save your configuration settings and management data to a backup file and enables you to use that backup to restore a corrupted appliance in the event of a catastrophic failure.

The backup process involves creating a backup file and then downloading that file so that you can store it to a safe and secure (off-appliance) location for future use. You can schedule automatic backup operations and designate a remote location for the backup file.

Use this cmdlet to save the created appliance backup files.  Use the -SaveRemoteOnly parameter to save the backup file(s) to the remote location if configured on the appliance.

## Examples

###  Example 1 

```text
Save-HPOVBackup

```

Save the found backup file

###  Example 2 

```text
Save-HPOVBackup -Location \\Server\BackupShare\HPOneView

```

Save the found backup file to the specified location.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `(${Global:ConnectedSessions} | ? Default)` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Location &lt;String&gt;

Specify the directory or UNC path where to save the backup file(s) to.

| Aliases | save |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SaveRemoteOnly &lt;SwitchParameter&gt;

When appliance automatic backup is configured, use this parameter to specify the backup file(s) should be saved in the remote location, instead of the local PC.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ErrorAction &lt;String&gt;

If no backup file exist on the appliance, override the `non-terminating` error generated with `-ErrorAction` Continue.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? |  |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Async Task resource to monitor progress of the backup file saved to the remote location.


_**System.IO.FileInfo**_

The saved backup file located on the PC.


## Related Links

* [Get-HPOVBackup](get-hpovbackup.md)
* [New-HPOVBackup](new-hpovbackup.md)
