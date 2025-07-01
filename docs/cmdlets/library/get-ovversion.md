---
description: Display library component versions.
---

# Get-OVVersion

## Syntax

```powershell
Get-OVVersion
    [-ApplianceVer]
    [-CheckOnline]
    [-ApplianceConnection] <Array>
    [<CommonParameters>]
```

```powershell
Get-OVVersion
    [-CheckOnline]
    [<CommonParameters>]
```

## Description

Display either the HPE OneView PowerShell library or appliance version.  Displaying the Appliance version will provide the Major, Minor, full version, and X-API Version information.

## Examples

###  Example 1 

```powershell
Get-OVVersion
```

Get the HPE OneView PowerShell library version

###  Example 2 

```powershell
Get-OVVersion -ApplianceVer
PowerShell Library Version : 1.20.208.0
Library Path               : C:\Users\user\Documents\WindowsPowerShell\Modules\HPEOneView.120
Appliance Major Version    : 1
Appliance Minor Version    : 20
Appliance Version Info     : 1.20.05-0201918
Appliance X-API Version    : 120
```

Get the HPE OneView PowerShell library, Appliance and X-API version information

###  Example 3 

```powershell
Get-OVVersion -CheckOnline
PowerShell Library Version : 1.20.166.0
Library Path               : C:\Users\user\Documents\WindowsPowerShell\Modules\HPEOneView.120


Please Confirm
You currently have v1.20.166.0 installed.  The HPE OneView PowerShell Library v1.20.208.0 was found that is newer.  Do
you want to download the current version of the HPE OneView POSH Library (will open your web browser for you to
download)?
[Y] Yes  [N] No  [?] Help (default is "Y"):
```

Display the installed library version, and check for availability of an updated version online. If an updated version is found, the Cmdlet will prompt if the user would like to download it now. If so, browser window will be opened to current version to download.

## Parameters

### -ApplianceVer &lt;SwitchParameter&gt;

Include the appliance version.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -CheckOnline &lt;SwitchParameter&gt;

Check the GitHub repository for an updated version of the library.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | ${Global:ConnectedSessions} |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "System.Management.Automation.PSCustomObject"
    The HPE OneView PowerShell Library or Appliance version information
    

## Related Links

