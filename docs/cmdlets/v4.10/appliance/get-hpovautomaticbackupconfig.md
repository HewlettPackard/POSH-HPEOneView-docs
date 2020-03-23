---
description: Retrieve automatic appliance backup configuration.
---

# Get-HPOVAutomaticBackupConfig

## Syntax

```text
Get-HPOVAutomaticBackupConfig
    [<CommonParameters>]
```

## Description

HPE OneView provides the ability to save your configuration settings and management data to a backup file and enables you to use that backup to restore a corrupted appliance in the event of a catastrophic failure.

The backup process involves creating a backup file and then downloading that file so that you can store it to a safe and secure \(off-appliance\) location for future use. You can schedule automatic backup operations and designate a remote location for the backup file.

This Cmdlet will get the automatic backup configuration from the connected appliance\(s\). Use Set-HPOVAutomaticBackupConfig to set a new automatic backup policy for the appliance\(s\).

## Examples

### Example 1

```text
Get-HPOVAutomaticBackupConfig
Appliance Enabled Server             Protocol Directory Interval Days         Time
--------- ------- ------             -------- --------- -------- ----         ----
Appliance True    scphost.domain.com SCP                WEEKLY   {MO, WE, FR} 18:00
```

Get the configured automatic backup setting of the appliance.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Aliases \[-Appliance\]

Specify one or more `[HPOneView.Appliance.Connection]` object\(s\) or Name property value\(s\). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |  |
| :--- | :--- | :--- |
| Required? | True |  |
| Position? | Named |  |
| Default value | \`\(${Global:ConnectedSessions} | ? Default\)\` |
| Accept pipeline input? | false |  |
| Accept wildcard characters? | False |  |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None. You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.Appliance.AutomaticBackupConfig \[System.Management.Automation.PSCustomObject\]**_

Appliance automatic backup configuration object.

_**System.Collections.Arraylist**_ 

Multiple appliance automatic backup configuration objects.

## Related Links

* [Set-HPOVAutomaticBackupConfig](set-hpovautomaticbackupconfig.md)

