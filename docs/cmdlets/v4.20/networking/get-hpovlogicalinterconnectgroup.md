---
description: Retrieve Logical Interconnect Group resource(s).
---

# Get-HPOVLogicalInterconnectGroup

## Syntax

```text
Get-HPOVLogicalInterconnectGroup
    [-Name <String>]
    [-Type] <String>
    [-Scope <Object>]
    [-Label <String>]
    [-ApplianceConnection <Object>]
    [-exportFile] <String>
    [<CommonParameters>]
```

```text
Get-HPOVLogicalInterconnectGroup
    [-InputObject] <Object>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Retrieves a list of all Logical Interconnect Groups or just specific ones via a query if the name parameter is provided.  The output can be sent to a file using the exportFile parameter.

## Examples

###  Example 1 

```text
Get-HPOVLogicalInterconnectGroup

```

Returns all Logical Interconnect Groups defined on the appliance to standard output.

###  Example 2 

```text
Get-HPOVLogicalInterconnectGroup -Name "Production"

```

Returns just the Production Logical Interconnect Group object to standard output.

###  Example 3 

```text
$myLigs = Get-HPOVLogicalInterconnectGroup

```

Returns the Get-HPOVLogicalInterconnectGroup query and stores it in the object $myLigs

###  Example 4 

```text
$LigName = "VC FF Virt Prod"
$CreatedLig = New-HPOVLogicalInterconnectGroup -Name $LigName -bays @{1 = "FlexFabric";2 = "FlexFabric"} -EnableIgmpSnooping $True -InternalNetworks "VMMigration Network" | Wait-HPOVTaskComplete | Get-HPOVLogicalInterconnectGroup
$CreatedLig

Name            Enclosure Groups
----            ----------------
VC FF Virt Prod
```

Create a new Logical Interconnect Group resource, wait for the task to complete, then retrieve the created resource.

###  Example 5 

```text
Get-HPOVLogicalInterconnectGroup -exportFile "c:\myApplianceConfig\LogicaICGs.json"

```

Returns the Get-HPOVLogicalInterconnectGroup query results to the file c:\myApplianceConfig\LogicaICGs.json

## Parameters

### -InputObject &lt;Object&gt;

Pipeline input resource generated from Wait-HPOVTaskComplete, or successfully completed Async Task resource object.

| Aliases | Resource |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Name &lt;String&gt;

The name of the Logical Interconnect Group to retrieve.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Type &lt;String&gt;

Provide the type of Logical Interconnect Group to return.  Omit to return all Logical Interconnect Group resources.

| Aliases | None |
| :--- | :--- |
| Required? | True |
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

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -exportFile &lt;String&gt;

The full path and file name to export the contents retrieved from the call to Get-HPOVLogicalInterconnectGroup.

| Aliases | x, export |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Successfully Completed Async task resource from Wait-HPOVTaskComplete or other supported method

## Return Values

_**System.Collections.ArrayList**_

A Logical Interconnect Group or collection of Logical Interconnect Groups

## Related Links

* [New-HPOVLogicalInterconnectGroup](new-hpovlogicalinterconnectgroup.md)
* [Remove-HPOVLogicalInterconnectGroup](remove-hpovlogicalinterconnectgroup.md)
