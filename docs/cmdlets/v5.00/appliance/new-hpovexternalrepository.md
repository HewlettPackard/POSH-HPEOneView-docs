---
description: Create a new external baseline repository.
---

# New-HPOVExternalRepository

## Syntax

```text
New-HPOVExternalRepository
    [-Name] <String>
    [-Hostname] <String>
    [-Directory] <String>
    [-Username <String>]
    [-Password <SecureString>]
    [-Http]
    [-Certificate <String>]
    [-Async]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

```text
New-HPOVExternalRepository
    [-Name] <String>
    [-Hostname] <String>
    [-Directory] <String>
    [-Credential] <String>
    [-Http]
    [-Certificate <String>]
    [-Async]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

A firmware repository enables you to store firmware bundles and deploy them across your environment. An externally managed HTTP/HTTPS web server can be added to the appliance as a repository. It is a user-maintained HTTP/HTTPS web server. You can upload firmware bundles in a specific directory and then register the HTTP/HTTPS server with HPE OneView. This functionality is supported for Linux and Windows systems.

The recommended types of external web servers to use with the repository follow:

* Apache
* Internet Information Services \(IIS\)

{% hint style="info" %}
Only one external repository can be added.
{% endhint %}

## Examples

### Example 1

```text
$Params = @{

    Name        = "MyRepoName";
    Hostname    = "webserver.domain.local";
    Directory   = "OneViewRepo";
    Credential  = (Get-PSCredential -Username "DomainName\MyUser");
    Certificate = (Get-Content -Path C:\Directory\Base64.cer -Raw)

}
New-HPOVExternalRepository @Params
```

Create an external repository using a PSCredential object.

### Example 2

```text
New-HPOVExternalRepository -Name MyRepoName -Hostname webserver.domain.local -Directory OneViewRepo -Http
```

Configure an external repository using anonymous authentication, and HTTP protocol.

## Parameters

### -Name &lt;String&gt;

Provide a name for the repository.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Hostname &lt;String&gt;

Specify IPv4 Address or FQDN of the target web server.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Directory &lt;String&gt;

Specify the parent virtual directory where the baseline components will be kept. Baseline components can be nested within sub directories.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Credential &lt;String&gt;

Provide a PSCredential object if the target web server requires authentication. By default, HTTPS will be used and basic authentication is used to communicate with the target web server.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Username &lt;String&gt;

Provide the username to authenticate to the target web server with if required.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Password &lt;SecureString&gt;

Provide the password of the username using a `[System.Security.SecureString]`.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Http &lt;SwitchParameter&gt;

Use to override the default HTTPS protocol used to communicate with the target web server. If this parameter is not used, you must specify the Base64 Certificate of the target web server. If you use this parameter, all authentication requests will be sent as clear text.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Certificate &lt;String&gt;

The Base64 Certificate of the target web server. Must be specified if the `-HTTP` parameter is not used.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task. By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object\(s\) or Name property value\(s\).

| Aliases | Appliance |  |
| :--- | :--- | :--- |
| Required? | False |  |
| Position? | Named |  |
| Default value | \(${Global:ConnectedSessions} | ? Default\) |
| Accept pipeline input? | false |  |
| Accept wildcard characters? | False |  |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

## Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

The async task for the caller to monitor.

_**System.Collections.ArrayList**_ 

Multiple async task resource objects.

## Related Links

* [Remove-HPOVExternalRepository](remove-hpovexternalrepository.md)
* [Set-HPOVExternalRepository](set-hpovexternalrepository.md)
* [Update-HPOVExternalRepository](update-hpovexternalrepository.md)

