---
description: Display library component versions.
---

# Get-HPOVVersion

## Syntax

```text
Get-HPOVVersion
    [-ApplianceVer]
    [-CheckOnline]
    [-ApplianceConnection] <Array>
    [<CommonParameters>]
```

```text
Get-HPOVVersion
    [-CheckOnline]
    [<CommonParameters>]
```

## Description

Display either the HPE OneView PowerShell library or appliance version.  Displaying the Appliance version will provide the Major, Minor, full version, and X-API Version information.

## Examples

###  Example 1 

```text
Get-HPOVVersion

```

Get the HPE OneView PowerShell library version

###  Example 2 

```text
Get-HPOVVersion -ApplianceVer
PowerShell Library Version : 1.20.208.0
Library Path               : C:\Users\user\Documents\WindowsPowerShell\Modules\HPOneView.120
Appliance Major Version    : 1
Appliance Minor Version    : 20
Appliance Version Info     : 1.20.05-0201918
Appliance X-API Version    : 120


```

Get the HPE OneView PowerShell library, Appliance and `X-API` version information

###  Example 3 

```text
Get-HPOVVersion -CheckOnline
PowerShell Library Version : 1.20.166.0
Library Path               : C:\Users\user\Documents\WindowsPowerShell\Modules\hponeview.120


Please Confirm
You currently have v1.20.166.0 installed.  The HPE OneView PowerShell Library v1.20.208.0 was found that is newer.  Do
you want to download the current version of the HPE OneView POSH Library (will open your web browser for you to
download)?
[Y] Yes  [N] No  [?] Help (default is "Y"):


```

Display the installed library version, and check for availability of an updated version online. If an updated version is found, the CMDLET will prompt if the user would like to download it now. If so, browser window will be opened to current version to download.

## Parameters

### -ApplianceVer &lt;SwitchParameter&gt;

Include the appliance version.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -CheckOnline &lt;SwitchParameter&gt;

Check the GitHub repository for an updated version of the library.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Array&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `${Global:ConnectedSessions}` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**System.Management.Automation.PSCustomObject**_

The HPE OneView PowerShell Library or Appliance version information

## Related Links

