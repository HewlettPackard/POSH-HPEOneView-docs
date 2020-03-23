---
description: Retrieve Network Set resource(s).
---

# Get-HPOVNetworkSet

## Syntax

```text
Get-HPOVNetworkSet
    [-Name] <String>
    [-Scope <Object>]
    [-Label <String>]
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

```text
Get-HPOVNetworkSet
    [-Name] <String>
    [-Scope <Object>]
    [-Label <String>]
    [-ApplianceConnection] <Object>
    [-ExportFile] <String>
    [<CommonParameters>]
```

## Description

Retrieves a list of all Network Sets or just specific Networks Sets via a query if the name parameter is provided.  The Network Set output can be sent to a file using the exportFile parameter.

## Examples

###  Example 1 

```text
Get-HPOVNetworkSet

```

Returns all Network Sets defined on the appliance to standard output.

###  Example 2 

```text
Get-HPOVNetworkSet -Name "Production"

```

Returns just the Production Network Set object to standard output.

###  Example 3 

```text
$myNetSets = Get-HPOVNetworkSet

```

Returns the `Get-HPOVNetworkSet` query and stores it in the object $myNetSets

###  Example 4 

```text
Get-HPOVNetworkSet -exportFile "c:\myApplianceConfig\Network-Sets.json"

```

Returns the `Get-HPOVNetworkSet` query results to the file c:\myApplianceConfig\Network-Sets.json

## Parameters

### -Name &lt;String&gt;

The name of the Network Set to retrieve.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `` |
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
| Default value | `AllResourcesInScope` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Label &lt;String&gt;

Specify the label associated with resources.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `(${Global:ConnectedSessions} | ? Default)` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -exportFile &lt;String&gt;

Aliases [-x, `-export`]

The full path and file name to export the contents retrieved from the call to `Get-HPOVNetworkSet`.

| Aliases | x, export |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.Networking.NetworkSet [System.Management.Automation.PSCustomObject]**_

Single Network Set


_**System.Collections.ArrayList <HPOneView.Networking.NetworkSet>**_

Multiple Network Sets


## Related Links

* [New-HPOVNetworkSet](new-hpovnetworkset.md)
* [Remove-HPOVNetworkSet](remove-hpovnetworkset.md)
* [Set-HPOVNetworkSet](set-hpovnetworkset.md)
