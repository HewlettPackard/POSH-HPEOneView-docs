---
description: Remove an existing external baseline repository.
---

# Remove-OVExternalRepository

## Syntax

```powershell
Remove-OVExternalRepository
    [-InputObject] <Object>
    [-Force]
    [-Async]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

A firmware repository enables you to store firmware bundles and deploy them across your environment.  An externally managed HTTP/HTTPS web server can be added to the appliance as a repository. It is a user-maintained HTTP/HTTPS web server. You can upload firmware bundles in a specific directory and then register the HTTP/HTTPS server with HPE OneView. This functionality is supported for Linux and Windows systems.

The recommended types of external web servers to use with the repository follow:

* Apache
* Internet Information Services (IIS)

???+ info
    Only one external repository can be added.


This Cmdlet supports removing an existing external repository.  Removing an external baseline will cause any assigned baselines in Server Profiles or Server Profile Templates to report the baseline as "removed".  Any server profile that is configured to use a firmware bundle residing in the external repository must not be in "staging" state.

## Examples

###  Example 1 

```powershell
Get-OVBaselineRepository -Name MyRepoName -ErrorAction Stop | Remove-OVExternalRepository
```

Remove the existing external repository from the appliance.

## Parameters

### -InputObject &lt;Object&gt;

Provide the external repository object to remove.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Force &lt;SwitchParameter&gt;

Force remove the resource.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

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

=== "HPEOneView.Appliance.BaselineRepository [System.Management.Automation.PSCustomObject]"
    The external repository object from Get-OVBaselineRepository
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    The async task for the caller to monitor.
    

=== "System.Collections.ArrayList <HPEOneView.Appliance.TaskResource>"
    Multiple async task resource objects.
    

## Related Links

* [New-OVExternalRepository](new-ovexternalrepository.md)
* [Set-OVExternalRepository](set-ovexternalrepository.md)
* [Update-OVExternalRepository](update-ovexternalrepository.md)
