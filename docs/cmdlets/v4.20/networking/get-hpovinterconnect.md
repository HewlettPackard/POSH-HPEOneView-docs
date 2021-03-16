---
description: Retrieve Interconnect resource(s).
---

# Get-HPOVInterconnect

## Syntax

```text
Get-HPOVInterconnect
    [-Name <String>]
    [-Scope <Object>]
    [-Label <String>]
    [-ApplianceConnection <Object>]
    [-Export <String>]
    [<CommonParameters>]
```

## Description

Retrieves a list of all Interconnects (Ethernet, FC, Converged Network, and/or SAS) or just specific ones via a query if the name parameter is provided.  The output can be sent to a file using the Export parameter.

## Examples

###  Example 1 

```text
Get-HPOVInterconnect

```

Returns all Interconnects managed by all connected appliances to standard output.

###  Example 2 

```text
Get-HPOVInterconnect "Encl1, Interconnect 1"

```

Returns just the Encl1, Interconnect 1 Interconnect object to standard output.

###  Example 3 

```text
$myICs = Get-HPOVInterconnect

```

Returns the Get-HPOVInterconnect query and stores it in the object $myICs

###  Example 4 

```text
Get-HPOVInterconnect -exportFile "c:\myApplianceConfig\ICs.json"

```

Returns the Get-HPOVInterconnect query results to the file c:\myApplianceConfig\ICs.json

## Parameters

### -Name &lt;String&gt;

The name of the interconnect to retrieve.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Scope &lt;Object&gt;

Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

    * AllResources
    * AllResourcesInScope
    * `[HPOneView.Appliance.ScopeCollection]`
    * `[HPOneView.Appliance.ConnectionPermission]`

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | AllResourcesInScope |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Label &lt;String&gt;

Specify the label associated with resources.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Export &lt;String&gt;

The full path and file name to export the contents retrieved from the call to Get-HPOVInterconnect.

| Aliases | x, exportFile |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.Networking.Interconnect [System.Management.Automation.PSCustomObject]**_

Single Interconnect object.

_**HPOneView.Networking.SasInterconnect [System.Management.Automation.PSCustomObject]**_

Single SAS Interconnect object.

_**System.Collections.ArrayList**_

Multiple Interconnect objects.

## Related Links

* [Get-HPOVInterconnectType](get-hpovinterconnecttype.md)
* [Reset-HPOVInterconnectNetOpPassword](reset-hpovinterconnectnetoppassword.md)
