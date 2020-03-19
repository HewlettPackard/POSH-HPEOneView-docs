---
description: 
---

# Get-HPOVRemoteSupportSetting

## Syntax

```text
Get-HPOVRemoteSupportSetting
    [-InputObject] <Object>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Use this Cmdlet to retrieve a supported resources Remote Support settings, defined Parimary and Secondary contact, and authorized reseller or support partners.
## Examples

###  Example 1 

```text
Get-HPOVEnclosure -Name Encl1 | Get-HPOVRemoteSupportSetting Appliance              ResourceName SalesChannelPartner        SupportChannelPartner      PrimaryContact SecondaryContact ---------              ------------ -------------------        ---------------------      -------------- ---------------- MyAppliance.domain.com Encl1        Hewlett Packard Enterprise Hewlett Packard Enterprise Mark Jones

```

Get the configured Remote Support collection settings for "Encl1" Enclosure resource.


###  Example 2 

```text
Get-HPOVServer -Name PROD* | Get-HPOVRemoteSupportSetting | ? supportEnabled -eq $false

```

Return all PROD servers, and return only those where remote support is not enabled.


## Parameters

### -InputObject &lt;Object&gt;

Either a Server Hardware or Enclosure resource to get the configured Remote Support collection settings.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} | ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.ServerHardware [System.Management.Automation.PSCustomObject]**_

Server hardware resource object.

_**HPOneView.Enclosure [System.Management.Automation.PSCustomObject]**_

Enclosure resource object.

## Return Values

_**HPOneView.Appliance.RemoteSupport.ResourceSetting [System.Management.Automation.PSCustomObject]**_

Remote Support Settings object.


## Related Links

* [Set-HPOVRemoteSupportSetting](set-hpovremotesupportsetting.md)
