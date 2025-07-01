---
description: Enable appliance SSH access.
---

# Enable-OVApplianceSshAccess

## Syntax

```powershell
Enable-OVApplianceSshAccess
    [-Async]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

HPE OneView supports Secure Shell (SSH) to remotely access the appliance to perform maintenance and recovery operations. Without SSH access, you must access the virtual machine system console. To avoid requiring a console access, SSH access is enabled by default. However, remote access to maintenance and recovery operations is considered a security risk by some users. Therefore, HPE OneView provides the option to disable remote access to the appliance via SSH.

Use this Cmdlet to enable appliance SSH access.

???+ info
    Minimum required privileges: Infrastructure administrator

## Examples

###  Example 1 

```powershell
Enable-OVApplianceSshAccess
```

Enable appliance SSH access.

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

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Asynchronous task resource to monitor
    

## Related Links

* [Disable-OVApplianceSshAccess](disable-ovappliancesshaccess.md)
* [Get-OVApplianceSshAccess](get-ovappliancesshaccess.md)
