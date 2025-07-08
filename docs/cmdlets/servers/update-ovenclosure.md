---
description: Update or Refresh an enclosure.
---

# Update-OVEnclosure

## Syntax

```powershell
Update-OVEnclosure
    [-Refresh]
    [-InputObject] <Object>
    [-ApplianceConnection] <Array>
    [-Hostname] <String>
    [-Username] <String>
    [-Password] <String>
    [-Credential <PSCredential>]
    [-Async]
    [<CommonParameters>]
```

```powershell
Update-OVEnclosure
    [-Reapply]
    [-InputObject] <Object>
    [-ApplianceConnection] <Array>
    [-Async]
    [<CommonParameters>]
```

## Description

This Cmdlet will update or refresh an enclosure.  An Enclosure Refresh will instruct HPE OneView to go inventory the enclosure and update any missing management configurations.

Use the -Refresh switch for scenarios where adding an enclosure results in a warning or critical error when a BL server cannot be managed due to an existing _HPOneViewAdmin account that cannot be reset or too many HPE SSO Certificates are configured (iLO supports no more than 5) and you have manually cleared the HPE SSO list and/or removed the _HPOneViewAdmin account.

## Examples

###  Example 1 

```powershell
Get-OVEnclosure | Update-OVEnclosure -Refresh
```

Refresh all available enclosures, from all connected sessions.

###  Example 2 

```powershell
Get-OVEnclosure -Name Enclosure1 | Update-OVEnclosure -Refresh
```

Refresh "Enclosure1" enclosure.

###  Example 3 

```powershell
$TaskResourceToMonitor = Get-OVEnclosure -Name Enclosure1 | Update-OVEnclosure -Refresh -Hostname UpdatedOAFQDN.domain.local -Username Administrator -Password MyOAPassw0rd -Async
```

Refresh "Enclosure1" enclosure, supplying the updated OA FQDN and administrator credentials

## Parameters

### -InputObject &lt;Object&gt;

Aliases [-Enclosure]
Provide the Enclosure name or Object, or `[System.Collections.ArrayList]` of names or Objects to refresh/update.

| Aliases | Enclosure |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Refresh &lt;SwitchParameter&gt;

Refresh the enclosure to fix configuration issues.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Hostname &lt;String&gt;

When an Enclosure is in an Error state where the Primary Onboard Administrator IP Address changed, or the HPE OneView managed configuration is no longer present, you will need to provide the IP Address or FQDN of one of the Onboard Administrators in the target enclosure.  You will be prompted for this value if needed.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Username &lt;String&gt;

Provide the Username of an Onboard Administrator administrator account to re-apply the configuration if the enclosure is in an error state and the HPE OneView managed configuration is no longer present.  You will be prompted for this value if needed.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Password &lt;String&gt;

Provide the password of the Onboard Administrator administrator account to re-apply the configuration if the enclosure is in an error state and the HPE OneView managed configuration is no longer present.  You will be prompted for this value if needed.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Reapply &lt;SwitchParameter&gt;

Reapply the Enclosure Configuration.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
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

### -Credential &lt;PSCredential&gt;

Use this parameter if you want to provide a PSCredential object instead.

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

=== "System.Management.Automation.PSCustomObject"
    Single Enclosure resource
    

=== "System.Collections.ArrayList"
    Multiple Enclosure resources
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Async task Resource object for monitoring the enclosure import process
    

## Related Links

* [Add-OVEnclosure](add-ovenclosure.md)
* [Get-OVEnclosure](get-ovenclosure.md)
* [Get-OVEnclosureGroup](get-ovenclosuregroup.md)
* [New-OVEnclosureGroup](new-ovenclosuregroup.md)
* [Remove-OVEnclosure](remove-ovenclosure.md)
* [Remove-OVEnclosureGroup](remove-ovenclosuregroup.md)
* [Reset-OVEnclosureDevice](reset-ovenclosuredevice.md)
* [Set-OVEnclosure](set-ovenclosure.md)
* [Set-OVEnclosureActiveFLM](set-ovenclosureactiveflm.md)
* [Set-OVEnclosureGroup](set-ovenclosuregroup.md)
