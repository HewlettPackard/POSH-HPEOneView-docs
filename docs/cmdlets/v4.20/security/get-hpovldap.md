---
description: List Global Authentication Directory settings.
---

# Get-HPOVLdap

## Syntax

```text
Get-HPOVLdap
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```text
Get-HPOVLdap
    [-Export]
    [-Save] <String>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

This cmdlet will display the global authentication directory settings configured on the appliance. It will show if local logins are enabled, default authentication directory name, and configured authentication directory names.

## Examples

### Example 1

```text
Get-HPOVLdap
Allow Local Login Default Directory Configured Directories
----------------- ----------------- ----------------------
True              domain1           {domain1, domain2}
True              domain2           {domain1, domain2}
```

View the Global Authentication Directory configuration for all connected appliances.

### Example 2

```text
Get-HPOVLdap -export -save c:\directory
```

Export the Global Authentication Directory configuration settings.

## Parameters

### -Export &lt;SwitchParameter&gt;

Export the configured directories to individual files.

| Aliases | x |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Save &lt;String&gt;

Directory where the exported configured directories will be saved to. A filename of "{appliance\_name}\_globalSettings.json" will be created.

| Aliases | location |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object\(s\) or Name property value\(s\).

| Aliases | Appliance |  |
| :--- | :--- | :--- |
| Required? | False |  |
| Position? | Named |  |
| Default value | \(${Global:ConnectedSessions} | ? Default\) |
| Accept pipeline input? | false |  |
| Accept wildcard characters? | False |  |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None. You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.Appliance.AuthGlobalDirectoryConfiguration \[System.Management.Automation.PSCustomObject\]**_

Global Authentication Settings object

## Related Links

* [Add-HPOVLdapServer](add-hpovldapserver.md)
* [Disable-HPOVLdapLocalLogin](disable-hpovldaplocallogin.md)
* [Enable-HPOVLdapLocalLogin](enable-hpovldaplocallogin.md)
* [Get-HPOVLdapDirectory](get-hpovldapdirectory.md)
* [Get-HPOVLdapGroup](get-hpovldapgroup.md)
* [New-HPOVLdapDirectory](new-hpovldapdirectory.md)
* [New-HPOVLdapGroup](new-hpovldapgroup.md)
* [New-HPOVLdapServer](new-hpovldapserver.md)
* [Remove-HPOVLdapDirectory](remove-hpovldapdirectory.md)
* [Remove-HPOVLdapGroup](remove-hpovldapgroup.md)
* [Remove-HPOVLdapServer](remove-hpovldapserver.md)
* [Set-HPOVLdapDefaultDirectory](set-hpovldapdefaultdirectory.md)
* [Set-HPOVLdapGroupRole](set-hpovldapgrouprole.md)
* [Show-HPOVLdapGroups](show-hpovldapgroups.md)

