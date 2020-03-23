---
description: Refresh an existing external baseline repository.
---

# Update-HPOVExternalRepository

## Syntax

```text
Update-HPOVExternalRepository
    [-InputObject] <Object>
    [-Async]
    [<CommonParameters>]
```

```text
Update-HPOVExternalRepository
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

A firmware repository enables you to store firmware bundles and deploy them across your environment.  An externally managed HTTP/HTTPS web server can be added to the appliance as a repository. It is a user-maintained HTTP/HTTPS web server. You can upload firmware bundles in a specific directory and then register the HTTP/HTTPS server with HPE OneView. This functionality is supported for Linux and Windows systems.

The recommended types of external web servers to use with the repository follow:

	* Apache
	* Internet Information Services (IIS)

{% hint style="info" %}
Only one external repository can be added.
{% endhint %}


This Cmdlet supports refreshing an existing external repository.  Use this Cmdlet to refresh the details(advertized repo size) and contents of an external repository.

## Examples

###  Example 1 

```text
Get-HPOVBaselineRepository -Name MyRepoName -ErrorAction Stop | Update-HPOVExternalRepository

```

Refresh an existing external repository.

## Parameters

### -InputObject &lt;Object&gt;

Provide the external repository object to refresh.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
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

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

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

_**HPOneView.Appliance.BaselineRepository [System.Management.Automation.PSCustomObject]**_

The external repository object from [`Get-HPOVBaselineRepository`](get-hpovbaselinerepository.md)

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

The async task for the caller to monitor.

_**System.Collections.ArrayList <HPOneView.Appliance.TaskResource>**_

Multiple async task resource objects.

## Related Links

* [New-HPOVExternalRepository](new-hpovexternalrepository.md)
* [Remove-HPOVExternalRepository](remove-hpovexternalrepository.md)
* [Set-HPOVExternalRepository](set-hpovexternalrepository.md)
