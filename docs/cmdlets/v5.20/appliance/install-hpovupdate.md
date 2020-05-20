---
description: Install or stage an appliance update.
---

# Install-HPOVUpdate

## Syntax

```text
Install-HPOVUpdate
    [-File] <>
    [-Eula] <>
    [-DisplayReleaseNotes <>]
    [-ApplianceConnection] <>
    [<CommonParameters>]
```

```text
Install-HPOVUpdate
    [-File] <>
    [-Stage <>]
    [-DisplayReleaseNotes <>]
    [-ApplianceConnection] <>
    [<CommonParameters>]
```

```text
Install-HPOVUpdate
    [-InstallNow <>]
    [-Eula] <>
    [-ApplianceConnection] <>
    [<CommonParameters>]
```

```text
Install-HPOVUpdate
    [-ListPending <>]
    [-DisplayReleaseNotes <>]
    [-ApplianceConnection] <>
    [<CommonParameters>]
```

## Description

The Install-HPOVUpdate installs an appliance update package to upgrade the platform to the specified version.  Use the -Stage switch to stage an update on the appliance.

## Examples

###  Example 1 

```text
Install-HPOVUpdate -file C:\Path\update.bin
```

Install the `[Update.bin]` package to the appliance.  User will be prompted to accept the upgrade EULA, and if a reboot is required also be prompted to confirm.

###  Example 2 

```text
Install-HPOVUpdate -file C:\Path\update.bin -Stage -DisplayReleaseNotes
```

Stage the update on the appliance, and display the Release Notes to the PowerShell console.

###  Example 3 

```text
Install-HPOVUpdate -file C:\Path\update.bin -Stage
Install-HPOVUpdate -EULA Accept -InstallNow
```

Stage the `[Update.bin]` package to the appliance. After update has been staged, install the update now on specified appliance.

###  Example 4 

```text
Install-HPOVUpdate -ListPending -DisplayReleaseNotes
```

List a pending, staged updates on the appliance, then display the Release Notes to the PowerShell console.

## Parameters

### -File &lt;&gt;

Appliance Update file to install.

| Aliases | f |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Eula &lt;&gt;

Will display EULA if no value is provided.  Pass "accept" to accept and not display EULA.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DisplayReleaseNotes &lt;&gt;

Display Release Notes of Update

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Stage &lt;&gt;

Used to upload update to appliance and not apply update.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InstallNow &lt;&gt;

Install pending update that was previously staged.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ListPending &lt;&gt;

List any pending updates on the appliance that might have been staged.

| Aliases | list |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -WhatIf &lt;&gt;



| Aliases | wi |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Confirm &lt;&gt;



| Aliases | cf |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this Cmdlet.**_

## Return Values

_**Write-Progress**_

Will display a progress bar indicating the Appliance Update status

_**System.Collections.ArrayList  (System.Management.Automation.PSCustomObject)**_

When performing stage and install (no switch options provided), the return will include the uploaded patch information from the appliance, and the completed upgrade message

## Related Links

