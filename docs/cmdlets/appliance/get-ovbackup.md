---
description: List appliance backups.
---

# Get-OVBackup

## Syntax

```powershell
Get-OVBackup
    [-Before <DateTime>]
    [-After <DateTime>]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

HPE OneView provides the ability to save your configuration settings and management data to a backup file and enables you to use that backup to restore a corrupted appliance in the event of a catastrophic failure.

The backup process involves creating a backup file and then downloading that file so that you can store it to a safe and secure (off-appliance) location for future use. You can schedule automatic backup operations and designate a remote location for the backup file.

Use this Cmdlet to return any existing backups that have not been downloaded or offloaded on the appliance.

???+ info
    Minimum required privileges: Read only

## Examples

###  Example 1 

```powershell
Get-OVBackup
```

This command will return any appliance backs present on the appliance.

###  Example 2 

```powershell
Get-OVBackup -Before [datetime]"2017/01/01"
```

This command will return appliance backups that were created before 2017/01/01.

## Parameters

### -Before &lt;DateTime&gt;

Specify the DateTime object of when to locate backups created before.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -After &lt;DateTime&gt;

Specify the DateTime object of when to locate backups created after.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "The generated backup File if appliance is not setup for remote storage or the Force parameter is used."
    
    

## Related Links

* [New-OVBackup](new-ovbackup.md)
* [Save-OVBackup](save-ovbackup.md)
