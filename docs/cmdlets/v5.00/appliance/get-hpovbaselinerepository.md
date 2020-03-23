---
description: Retrieve available baseline repository information.
---

# Get-HPOVBaselineRepository

## Syntax

```text
Get-HPOVBaselineRepository
    [-Name <String>]
    [-Type <String>]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

A firmware repository enables you to store firmware file and deploy them across your environment. Selecting a firmware file from the repository displays its release date, supported languages and operating systems, and the file components. The screen also displays the amount of storage space available for additional firmware file on the appliance. You cannot add a firmware file that is larger than the amount of space available in the repository.

Two types of repositories are supported:

    * Internal Repository: The internal embedded firmware repository in an HPE Synergy Composer has a maximum size limit of 12 GB to store and upload firmware files for use by components managed by HPE OneView.

    NOTE: You cannot add, edit, or remove the internal repository.

    * External Repository: An additional externally managed HTTP/HTTPS web server can be added to the appliance as a repository. It is a user-maintained HTTP/HTTPS web server. You can upload firmware file in a specific directory and then register the HTTP/HTTPS server with HPE OneView. This functionality is supported for Linux and Windows systems.

The Cmdlet will get the appliance repositories.

{% hint style="info" %}
Minimum required privileges: Read only
{% endhint %}

## Examples

###  Example 1 

```text
$Repositories = Get-HPOVBaselineRepository
```

Retrieves all repository objects from the appliance.

###  Example 2 

```text
Get-HPOVBaselineRepository -Type External
```

Retrieves only the configured external repository on the appliance.

## Parameters

### -Name &lt;String&gt;

Return the repository with the name or matching name.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Type &lt;String&gt;

Specify "Internal" or "External" to filter the repository type.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `(${Global:ConnectedSessions} | ? Default)` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this Cmdlet.**_

## Return Values

_**HPOneView.Appliance.BaselineRepository [System.Management.Automation.PSCustomObject]**_

Either and Internal or External repository object.

## Related Links

* [Show-HPOVBaselineRepositorySize](show-hpovbaselinerepositorysize.md)
