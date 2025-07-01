---
description: Modify an existing external baseline repository.
---

# Set-OVExternalRepository

## Syntax

```powershell
Set-OVExternalRepository
    [-InputObject] <Object>
    [-Name <String>]
    [-Username <String>]
    [-Password <System.Security.SecureString>]
    [-Certificate <String>]
    [-NFSPath <string>]
    [-Async]
    [<CommonParameters>]
```

```powershell
Set-OVExternalRepository
    [-InputObject] <Object>
    [-Name <String>]
    [-Credential <String>]
    [-Certificate <String>]
    [-NFSPath <string>]
    [-Async]
    [<CommonParameters>]
```

```powershell
Set-OVExternalRepository
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


This Cmdlet supports modifying an existing external repository.  Use this Cmdlet to modify the Name, authentication credentials and/or HTTP SSL certificate.

## Examples

###  Example 1 

```powershell
Get-OVBaselineRepository -Name MyRepoName -ErrorAction Stop | Set-OVExternalRepository -Name UpdatedRepoName
```

Modify an existing external repository with a new name.

###  Example 2 

```powershell
Get-OVBaselineRepository -Name MyRepoName MyRepoName -ErrorAction Stop | Set-OVExternalRepository -Credential (Get-PSCredential -Username "Domain\MyUpdatedAccountName")
```

Modify an existing repository with new credentials.

###  Example 3 

```powershell
$UpdatedSslCertificate = Get-Content C:\Dir\UpdatedCert.cer -raw
Get-OVBaselineRepository -Name MyRepoName -ErrorAction Stop | Set-OVExternalRepository -Certificate $UpdatedSslCertificate
```

Modify an existing repository with new Base64 SSL public certificate.

## Parameters

### -InputObject &lt;Object&gt;

Provide the external repository object to modify.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Name &lt;String&gt;

Update the configured repository with the new name.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Credential &lt;String&gt;

Provide a PSCredential object if the target web server requires authentication.  By default, HTTPS will be used and basic authentication is used to communicate with the target web server.

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

### -Password &lt;System.Security.SecureString&gt;

Provide the password of the username using a `[System.Security.SecureString]`.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Certificate &lt;String&gt;

The Base64 Certificate of the target web server.  Must be specified if the `-HTTP` parameter is not used.

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

### -NFSPath &lt;string&gt;

Specify the NFS path for Superdome Flex RMC firmware updates.

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

=== "HPEOneView.Appliance.BaselineRepository [System.Management.Automation.PSCustomObject]"
    The external repository object from Get-OVBaselineRepository
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    The async task for the caller to monitor.
    

=== "System.Collections.ArrayList <HPEOneView.Appliance.TaskResource>"
    Multiple async task resource objects.
    

## Related Links

* [New-OVExternalRepository](new-ovexternalrepository.md)
* [Remove-OVExternalRepository](remove-ovexternalrepository.md)
* [Update-OVExternalRepository](update-ovexternalrepository.md)
