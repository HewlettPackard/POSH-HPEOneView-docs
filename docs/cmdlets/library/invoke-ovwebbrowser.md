---
description: Start default web browser opened to appliance dashboard.
---

# Invoke-OVWebBrowser

## Syntax

```powershell
Invoke-OVWebBrowser
    [-Resource <String>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

This Cmdlet will open the default web browser to the specified appliance, logged in with the same credentials as the PowerShell library connection is authenticated with.  To open multiple browser windows to each appliance connection, use the global $ConnectedSessions variable to override the -ApplianceConnection parameter. 

## Examples

###  Example 1 

```powershell
Connect-OVMgmt -Hostname MyAppliance.domain.com -Username MyAccount -Password $MySecurePassword
Invoke-OVWebBrowser
```

Connect to the appliance, then launch default web browser to the appliance dashboard.

## Parameters

### -Resource &lt;String&gt;

Use to quickly jump to the specific UI section of the connected appliance.  Allowed values:

* Dashboard
* Enclosures
* LogicaInterconnectGroups
* LogicalEnclosures
* LogicalInterconnects
* Networks
* RackManagers
* ServerHardware
* ServerProfiles
* ServerProfileTemplates
* Settings
* StoragePools
* StorageSystems
* StorageVolumes

By default, the Cmdlet will open your default web browser to the appliance dashboard.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "None."
    
    

## Related Links

