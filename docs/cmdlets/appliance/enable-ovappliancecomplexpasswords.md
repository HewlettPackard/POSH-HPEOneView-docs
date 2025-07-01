---
description: Enable appliance complex password policy.
---

# Enable-OVApplianceComplexPasswords

## Syntax

```powershell
Enable-OVApplianceComplexPasswords
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

Enables whether users are required to have complex passwords.  This option does not force existing users to change their passwords, nor has any impact on directory accounts.  By default, the appliance does not enforce complex passwords during creating or modifying internal user account passwords.  Use this Cmdlet to enable the policy.

Complex passwords must contain the following:

* Minimum of 14 characters
* Minimum of one uppercase character
* Minimum of one lowercase character
* Minimum one number
* Minimum of one special character. For example: !@#$^*_-=+,.?
* No whitespace

???+ info
    Minimum required privileges: Infrastructure administrator

## Examples

###  Example 1 

```powershell
Enable-OVApplianceComplexPasswords
```

Enable appliance complex password policy.

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

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "System.Management.Automation.PSCustomObject"
    Appliance global security settings.
    

## Related Links

* [Disable-OVApplianceComplexPasswords](disable-ovappliancecomplexpasswords.md)
