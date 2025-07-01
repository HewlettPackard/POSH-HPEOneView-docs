---
description: Retrieve Remote Support Default Site.
---

# Get-OVRemoteSupportDefaultSite

## Syntax

```powershell
Get-OVRemoteSupportDefaultSite
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Register with Hewlett Packard Enterprise to allow automatic case creation for hardware failures on servers and enclosures and to enable Proactive Care. Once enabled, all eligible devices added in the future will be automatically enabled for remote support.

Hewlett Packard Enterprise recommends enabling all features and benefits provided by HPE OneView Remote Support so you can receive fast, accurate 'phone home' support and service per your contractual terms with Hewlett Packard Enterprise. Hewlett Packard Enterprise securely collects your HPE IT hardware diagnostics, configuration and telemetry information to provide you with remote support and services. The data is handled and managed to respect your privacy. For more information, Hewlett Packard Enterprise's Privacy Statement can be found at http://privacy.hpe.com.

Enabling Remote Support configures your devices being remotely supported to securely send support or service events, IT configuration information, diagnostic, and telemetry information to Hewlett Packard Enterprise, together with your support contact information. No other business information is collected and the data is managed according to the Hewlett Packard Enterprise's Privacy Statement.

This Cmdlet will get the address of the data center where the devices are located for support.

???+ info
    Minimum required privileges: Read-only

## Examples

###  Example 1 

```powershell
Get-OVRemoteSupportDefaultSite
```

Get the configured Remote Support default site.

## Parameters

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

=== "System.Management.Automation.PSCustomObject"
    Configured Remote Support default site.
    

## Related Links

* [Get-OVRemoteSupport](get-ovremotesupport.md)
* [Set-OVRemoteSupportDefaultSite](set-ovremotesupportdefaultsite.md)
