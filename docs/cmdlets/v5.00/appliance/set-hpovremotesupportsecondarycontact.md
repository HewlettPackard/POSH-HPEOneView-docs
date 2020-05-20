---
description: Set HPE OneView Remote Support default secondary contact.
---

# Set-HPOVRemoteSupportSecondaryContact

## Syntax

```text
Set-HPOVRemoteSupportSecondaryContact
    [-InputObject] <Object>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Register with Hewlett Packard Enterprise to allow automatic case creation for hardware failures on servers and enclosures and to enable Proactive Care. Once enabled, all eligible devices added in the future will be automatically enabled for remote support.

Use this Cmdlet to change or update the HPE OneView Remote Support secondary Contact.

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator
{% endhint %}

## Examples

###  Example 1 

```text
$PrimaryContact = Get-HPOVRemoteSupportContact -Name "Susan Jones"
Set-HPOVRemoteSupportSecondaryContact -InputObject $SecondaryContact
```

Set a new HPE OneView Remote Support secondary contact on the appliance.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -InputObject &lt;Object&gt;

HPE OneView Remote Support contact from `Get-HPOVRemoteSupportContact`.

| Aliases | Contact |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.Appliance.RemoteSupport.Contact [System.Management.Automation.PSCustomObject]**_

Remote support contact from [`Get-HPOVRemoteSupportContact`](get-hpovremotesupportcontact.md).

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Asynchronous task resource to monitor

## Related Links

* [Set-HPOVRemoteSupportPrimaryContact](set-hpovremotesupportprimarycontact.md)
