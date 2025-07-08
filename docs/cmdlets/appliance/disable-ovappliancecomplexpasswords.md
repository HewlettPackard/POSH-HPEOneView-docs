---
description: Disable appliance complex password policy.
---

# Disable-OVApplianceComplexPasswords

## Syntax

```powershell
Disable-OVApplianceComplexPasswords
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

Disables whether users are required to have complex passwords.  This option does not force existing users to change their passwords, nor has any impact on directory accounts.  By default, the appliance does not enforce complex passwords during creating or modifying internal user account passwords.  Use this Cmdlet to disable the policy.

???+ info
    Minimum required privileges: Infrastructure administrator

## Examples

###  Example 1 

```powershell
Disable-OVApplianceComplexPasswords
```

Disable complex password policy on the appliance.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Confirm &lt;SwitchParameter&gt;

Override the confirmation prompt.

| Aliases | cf |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -WhatIf &lt;SwitchParameter&gt;

Perform a test to identify the beahvior before executing the Cmdlet.  Will not modify resources.

| Aliases | wi |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "System.Management.Automation.PSCustomObject"
    Appliance global security settings.
    

## Related Links

* [Enable-OVApplianceComplexPasswords](enable-ovappliancecomplexpasswords.md)
