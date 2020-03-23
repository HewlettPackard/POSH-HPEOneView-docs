---
description: Retrieve Logical Interconnect resource(s).
---

# Get-HPOVLogicalInterconnect

## Syntax

```text
Get-HPOVLogicalInterconnect
    [-Name] <String>
    [-NonCompliant]
    [-Scope <Object>]
    [-Label <String>]
    [-ApplianceConnection] <Object>
    [-Export] <String>
    [<CommonParameters>]
```

## Description

Retrieves a list of all Logical Interconnect or just specific ones via a query if the name parameter is provided.  The output can be sent to a file using the exportFile parameter.

## Examples

###  Example 1 

```text
Get-HPOVLogicalInterconnect

```

Returns all Logical Interconnect defined on the appliance to standard output.

###  Example 2 

```text
Get-HPOVLogicalInterconnect "Production"

```

Returns just the Production Logical Interconnect object to standard output.

###  Example 3 

```text
$myLogicalICs = Get-HPOVLogicalInterconnect

```

Returns the `Get-HPOVLogicalInterconnect` query and stores it in the object $myLogicalICs

###  Example 4 

```text
Get-HPOVLogicalInterconnect -Export "c:\myApplianceConfig\LogicaICs.json"

```

Returns the `Get-HPOVLogicalInterconnect` query results to the file c:\myApplianceConfig\LogicaICs.json

## Parameters

### -Name &lt;String&gt;

The name of the Logical Interconnect to retrieve.

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

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `(${Global:ConnectedSessions} | ? Default)` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Export &lt;String&gt;

The full path and file name to export the contents retrieved from the call to `Get-HPOVLogicalInterconnect`.

| Aliases | x, ExportFile |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -NonCompliant &lt;SwitchParameter&gt;

Filter resources based on their `non-compliant` state.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPoneView.Networking.LogicalInterconnect [System.Management.Automation.PSCustomObject]**_

Logical Interconnect resource object from [`Get-HPOVLogicalInterconnect`](get-hpovlogicalinterconnect.md)

_**System.Collections.ArrayList <HPoneView.Networking.LogicalInterconnect>    **_

Multiple Logical Interconnects

_**A Logical Interconnect or collection of Logical Interconnects**_



## Related Links

* [Disable-HPOVLogicalInterconnectPortMonitoring](disable-hpovlogicalinterconnectportmonitoring.md)
* [Enable-HPOVLogicalInterconnectPortMonitoring](enable-hpovlogicalinterconnectportmonitoring.md)
* [Get-HPOVLogicalInterconnectGroup](get-hpovlogicalinterconnectgroup.md)
* [Get-HPOVLogicalInterconnectPortMonitoring](get-hpovlogicalinterconnectportmonitoring.md)
* [Install-HPOVLogicalInterconnectFirmware](install-hpovlogicalinterconnectfirmware.md)
* [New-HPOVLogicalInterconnectGroup](new-hpovlogicalinterconnectgroup.md)
* [Remove-HPOVLogicalInterconnectGroup](remove-hpovlogicalinterconnectgroup.md)
* [Show-HPOVLogicalInterconnectMacTable](show-hpovlogicalinterconnectmactable.md)
* [Update-HPOVLogicalInterconnect](update-hpovlogicalinterconnect.md)
