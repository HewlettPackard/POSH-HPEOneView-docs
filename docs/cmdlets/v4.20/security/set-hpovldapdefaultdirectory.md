---
description: Configure Authentication Directory default directory.
---

# Set-HPOVLdapDefaultDirectory

## Syntax

```text
Set-HPOVLdapDefaultDirectory
    [-InputObject] <Object>
    [-ApplianceConnection] <Object>
    [-DisableLocalLogin]
    [<CommonParameters>]
```

## Description

Use this cmdlet to set the default Authentication Directory on the appliance. Use Get-HPOVLdapDirectory to pass in the directory to configure as the default. Once the Default Directory is set, the CMDLET will configure a Registry Key \(HKCU:\Software\Hewlett-Packard\HPOneView\) called "AuthProvider\#{ApplianceConnectionName}". The Library will read this value upon load and use it as the default value for the -AuthDirectory parameter in Connect-HPOVMgmt.

## Examples

### Example 1

```text
Set-HPOVLdapDefaultDirectory -InputObject "Domain1"
# CMDLET will create:
# HKCU:\Software\Hewlett-Packard\HPOneView\AuthProvider#MyAppliance.domain.com REG_SZ, value = "Domain1"
```

Set "Domain1" as the default authentication directory for the appliance. Then, the CMDLET will create the REG\_SZ "AuthProvider\#MyAppliance.domain.com" with a value of "Domain1".

## Parameters

### -InputObject &lt;Object&gt;

Aliases \[-Directory\] Provide the Directory Name, URI or Object. If you want to set the Authentication Directory back to Local, specify LOCAL as the name.

| Aliases | Directory |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters? | False |

### -DisableLocalLogin &lt;SwitchParameter&gt;

Use to disable appliance local login accounts. You cannot use this parameter if an Authentication Directory is not configured.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object\(s\) or Name property value\(s\). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |  |
| :--- | :--- | :--- |
| Required? | True |  |
| Position? | Named |  |
| Default value | \`\(${Global:ConnectedSessions} | ? Default\)\` |
| Accept pipeline input? | true \(ByPropertyName\) |  |
| Accept wildcard characters? | False |  |

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

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.Appliance.AuthDirectory \[System.Management.Automation.PSCustomObject\]**_

Authentication Directory retrieved using [`Get-HPOVLdapDirectory`](get-hpovldapdirectory.md)

## Return Values

_**System.Management.Automation.PSCustomObject**_

Appliance Authentication Directory setting

## Related Links

