---
description: Modify an existing Datacenter Remote Support setting.
---

# Set-OVDataCenterRemoteSupport

## Syntax

```powershell
Set-OVDataCenterRemoteSupport
    [-InputObject] <Object>
    [-PrimaryContact <Object>]
    [-SecondaryContact <Object>]
    [-Address1 <String>]
    [-Address2 <String>]
    [-City <String>]
    [-State <String>]
    [-PostCode] <String>
    [-Country <String>]
    [-TimeZone <String>]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

A data center represents a physically contiguous area in which racks containing IT equipment are located.
For example, you have IT equipment in two rooms or on separate floors. You could create a data center for each of these areas.
Each server, enclosure, or power distribution device in your data center can report its power requirements, but it can be difficult to understand the power and cooling requirements for your data center as a whole. The appliance enables you to bring power and cooling management of your servers, enclosures, and power delivery devices together in a single management system.
When you initialize the appliance for the first time, it creates a data center named Datacenter 1. The appliance provides this data center as a place to visualize your racks. You can rename or edit this data center to match the values and layout of your data center, you can use it as the basis for a planned data center model, or you can delete this data center without adverse effects.

This Cmdlet will help modify an existing DataCenters Remote Support location and contacts.  In order to set a DataCenter Remote Support location, the appliance must be configured and regsitered with Remote Support. 

## Examples

###  Example 1 

```powershell
$NewPrimaryConact = Get-OVRemoteSupportContact -Name "Vivian Waters" -ErrorAction Stop
Get-OVDataCenter -Name "LA DC 12" -ErrorAction Stop | Set-OVDataCenterRemoteSupport -PrimaryContact $NewPrimaryConact
```

Modify "LA DC 12" datacenter with new Primary Contact.

## Parameters

### -InputObject &lt;Object&gt;

The DataCenter to modify.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -PrimaryContact &lt;Object&gt;

Primary Remote Support Contact object from Get-OVRemoteSupportContact defined on the appliance.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SecondaryContact &lt;Object&gt;

Secondary Remote Support Contact object from Get-OVRemoteSupportContact defined on the appliance.  Must not be the same value as the Primary Contact.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Address1 &lt;String&gt;

Address of datacenter.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Address2 &lt;String&gt;

Optional address line.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -City &lt;String&gt;

City of residence for the datacenter.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -State &lt;String&gt;

State/province of residence for the datacenter.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -PostCode &lt;String&gt;

Postal code for the datacenter.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Country &lt;String&gt;

Country of residence for the datacenter.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -TimeZone &lt;String&gt;

Time Zone of residence for the datacenter.

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

### -ApplianceConnection &lt;Object&gt;

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

_**HPEOneView.Facilities.DataCenter**_

DataCenter facility object from Get-OVDataCenter.

## Return Values

_**HPEOneView.Appliance.AyncTask**_

Modified datacenter Remote Support location Asynchronous task.

## Related Links

