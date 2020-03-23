---
description: Get configured Authentication Directories
---

# Get-HPOVLdapDirectory

## Syntax

```text
Get-HPOVLdapDirectory
    [-Name <String>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```text
Get-HPOVLdapDirectory
    [-Export <String>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

This cmdlet will retrieve the configured authentication directory(ies) configured on the appliance.

## Examples

###  Example 1 

```text
Get-HPOVLdapDirectory
Appliance    Name    Type Root              Search Context         Directory Servers
---------    ----    ---- ----              --------------         -----------------
MyAppliance1 domain1 AD   dc=domain1,dc=com ou=Admins,ou=domain1... {dc1.domain1.com:636, dc2.domain1.com:636}
MyAppliance1 domain2 AD   dc=domain2,dc=com ou=Admins,ou=domain2... {dc1.domain2.com:636, 10.1.2.1:636}
MyAppliance2 domain1 AD   dc=domain1,dc=com ou=Admins,ou=domain1... {dc1.domain1.com:636, dc2.domain1.com:636}
MyAppliance2 domain2 AD   dc=domain2,dc=com ou=Admins,ou=domain2... {dc1.domain2.com:636, 10.1.2.1:636}
```

View the configured authentication directories, for all connected appliances.

###  Example 2 

```text
Get-HPOVLdap -export -save c:\directory

```

Export the Global Directory Configuration settings.

## Parameters

### -Name &lt;String&gt;

The specific authentication directory name.

| Aliases | directory, domain |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Export &lt;String&gt;

Export the configured directories to individual files.

| Aliases | x |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectSessions}

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

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.Appliance.AuthDirectory [System.Management.Automation.PSCustomObject]**_

Authentication Directory settings object

_**System.Collections.ArrayList**_

Multiple Authentication Directory settings objects

## Related Links

* [New-HPOVLdapDirectory](new-hpovldapdirectory.md)
* [Remove-HPOVLdapDirectory](remove-hpovldapdirectory.md)
