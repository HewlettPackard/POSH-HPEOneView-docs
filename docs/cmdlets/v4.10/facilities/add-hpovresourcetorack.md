---
description: Add supported resource to rack.
---

# Add-HPOVResourceToRack

## Syntax

```text
Add-HPOVResourceToRack
    [-InputObject] <Object>
    [-Rack] <Object>
    [-ULocation] <Int32>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Add a supported resource to a rack resource object.

## Examples

###  Example 1 

```text
$Rack = Get-HPOVRack -Name MyRack221 -ErrorAction Stop
$Servers = Get-HPOVServers -Name Prod221* -ErrorAction Stop
$_U = 1
ForEach ($Server in $Servers) {
	Add-HPOVResourceToRack -InputObject $Server -Rack $Rack -ULocation $_U
	$_U += $Server.formFactor.Replace("U",$null)
}
```

Add "Prod221" (DL) servers to "MyRack221" rack object, starting at Rack U 1, and increasing the location based on the form factor of the DL servers.

###  Example 2 

```text
$Rack = Get-HPOVRack -Name MyRack222 -ErrorAction Stop
$Enclosures = Get-HPOVEnclosures -Name Encl-Prod* -ErrorAction Stop | ? rackName -eq $Rack.name
$_U = 1
ForEach ($Enclosure in $Enclosures) {
	Add-HPOVResourceToRack -InputObject $Enclosure -Rack $Rack -ULocation $_U
	$_U += 10
}
```

Add Enclosures which the Onboard Administrators report are in "MyRack222", and add them to "MyRack222" rack object, starting at Rack U 1, and increasing the location by 10U.

## Parameters

### -InputObject &lt;Object&gt;

The suppported resource object from.
Supported resource objects are:
	*Enclosures
	*Servers
	*Unmanaged Devices

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Rack &lt;Object&gt;

The Rack object from `Get-HPOVRack`.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ULocation &lt;Int32&gt;

The rack unit location where the resource is located.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | 0 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

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

_**HPOneView.Facilities.Rack [System.Management.Automation.PSCustomObject]**_

Rack resource object from [`Get-HPOVRack`](get-hpovrack.md).


## Return Values

_**HPOneView.Facilities.Rack [System.Management.Automation.PSCustomObject]**_

Updated DataCenter object with the newly added Rack resource in the contents property.

## Related Links

