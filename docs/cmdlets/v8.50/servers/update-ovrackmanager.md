---
description: Refresh or reconnect a rack manager resource.
---

# Update-OVRackManager

## Syntax

```powershell
Update-OVRackManager
    [-InputObject] <HPEOneView.Servers.RackManager[]>
    [-Force]
    [-Async]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

```powershell
Update-OVRackManager
    [-InputObject] <HPEOneView.Servers.RackManager[]>
    [-Hostname] <String>
    [-Credential <PSCredential>]
    [-Force]
    [-Async]
    [<CommonParameters>]
```

```powershell
Update-OVRackManager
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

A rack manager platform is a multinode system. The nodes are housed within a rack or across racks, and are centrally managed by a management controller. The Rack Managers screen enables you to manage and visualize the physical location of rack manager platforms within a rack. This Cmdlet will perform a refresh of the claimed rack manager.  If there is a communication issue, the -Hostname and -Crednetial parameters will need to be provided, which will then re-establish communication to the rack manager. Minimum required privileges: Infrastructure administrator or Server administrator. 

## Examples

###  Example 1 

```powershell
Get-OVRackManager -Name rackmanager1.domain.com -ErrorAction Stop | Update-OVRackManager
```

Refresh the specified rack manager resource.

###  Example 2 

```powershell
$RackManager = Get-OVRackManager -Name rackmanager1.domain.com -ErrorAction Stop $Credential = Get-Credential Administrator -Message "Password"     $RefreshParams = @{ InputObject = $RackManager} 
# Check the rack manager for its state and refresh state reason if ($RackManager.State -eq 'Unmanaged' -and $RackManager.RefreshState -eq 'RefreshFailed') {     # Add the "Credential" parameter to the Hashtable splat     $RackManager.Add("Credential", $Credential) 
    # Add the Hostname to the Hashtable splat     $RackManager.Add("Hostname", $RackManager.SubResources.Managers[0].Hostname) } Update-OVRackManager @RefreshParams
```

Refresh the specified rack manager resource, and provide the credentials to restablish.

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

### -Credential &lt;PSCredential&gt;

Use this parameter if you want to provide a PSCredential object instead.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Force &lt;SwitchParameter&gt;

****WARNING****
Please use with caution.  Using this parameter will force delete a resource for any reason and cannot be undone.

Force update the resource.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Hostname &lt;String&gt;

The FQDN or IP Address of the rack manager.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InputObject &lt;HPEOneView.Servers.RackManager[]&gt;

The `[HPEOneView.Servers.RackManager]` resource to refresh.

| Aliases | name, Server |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPEOneView.Servers.RackManager**_

The rack manager resource from Get-OVRackManager.

## Return Values

_**HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Async task Resource object for configuring port monitoring on the requested logical intercinnect.

## Related Links

* [Add-OVRackManager](add-ovrackmanager.md)
* [Get-OVRackManager](get-ovrackmanager.md)
* [Remove-OVRackManager](remove-ovrackmanager.md)
