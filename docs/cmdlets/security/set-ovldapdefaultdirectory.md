---
description: Configure Authentication Directory default directory.
---

# Set-OVLdapDefaultDirectory

## Syntax

```powershell
Set-OVLdapDefaultDirectory
    [-InputObject] <Object>
    [-DisableLocalLogin]
    [-EnableEmergencyLocalLogin] <Bool>
    [-EmergencyLoginAllowType <String>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
Set-OVLdapDefaultDirectory
    [-InputObject] <Object>
    [-DisableLocalLogin]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Use this Cmdlet to set the default Authentication Directory on the appliance.  Use Get-OVLdapDirectory to pass in the directory to configure as the default.  Once the Default Directory is set, the Cmdlet will configure a Registry Key (HKCU:\Software\Hewlett-Packard\HPOneView) called "AuthProvider#{ApplianceConnectionName}".  The Library will read this value upon load and use it as the default value for the -AuthDirectory parameter in Connect-OVMgmt.

## Examples

###  Example 1 

```powershell
Set-OVLdapDefaultDirectory -InputObject "Domain1"
# Cmdlet will create:
# HKCU:\Software\Hewlett-Packard\HPOneView\AuthProvider#MyAppliance.domain.com REG_SZ, value = "Domain1"
```

Set "Domain1" as the default authentication directory for the appliance.  Then, the Cmdlet will create the REG_SZ "AuthProvider#MyAppliance.domain.com" with a value of "Domain1".

###  Example 2 

```powershell
Set-OVLdapDefaultDirectory -InputObject (Get-OVLdapDirectory -Name MyDirectory) -DisableLocalLogin $true -EnableEmergencyLocalLogin
```

Set "MyDirectory" as the default authentication directory for the appliance, disabling local logins and allowing emergency local login via appliance console only.

###  Example 3 

```powershell
Set-OVLdapDefaultDirectory -InputObject "LOCAL"
```

Set "LOCAL" as the default authentication directory for the appliance.

## Parameters

### -InputObject &lt;Object&gt;

Aliases [-Directory]
Provide the Directory Name, URI or Object.  If you want to set the Authentication Directory back to Local, specify LOCAL as the name.

| Aliases | Directory |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -DisableLocalLogin &lt;SwitchParameter&gt;

Use to disable appliance local login accounts.  You cannot use this parameter if an Authentication Directory is not configured.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -WhatIf &lt;SwitchParameter&gt;



| Aliases | wi |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Confirm &lt;SwitchParameter&gt;



| Aliases | cf |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EmergencyLoginAllowType &lt;String&gt;

Allow emergency login access if the configured authentication directory(ies) are unavailable.  Highest security is obtained by restricting the local administrator account to "ApplianceConsoleOnly". Choose "NetworkAndApplianceConsole" to allow emergency access via the network.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnableEmergencyLocalLogin &lt;Bool&gt;

Boolean value to enable ($true) or disable ($false) emergency local login.  Must be set to $false when SmartCardLoginOnly is set and used from Set-OVApplianceTwoFactorAuthentication.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "HPEOneView.Appliance.AuthDirectory [System.Management.Automation.PSCustomObject]"
    Authentication Directory retrieved using Get-OVLdapDirectory
    

## Return Values

=== "System.Management.Automation.PSCustomObject"
    Appliance Authentication Directory setting
    

## Related Links

