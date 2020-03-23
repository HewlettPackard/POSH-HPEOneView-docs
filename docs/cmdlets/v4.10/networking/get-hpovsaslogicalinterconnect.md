---
description: Retrieve SAS Logical Interconnect resource(s).
---

# Get-HPOVSasLogicalInterconnect

## Syntax

```text
Get-HPOVSasLogicalInterconnect
    [-Name <String>]
    [-Label <String>]
    [-ApplianceConnection] <Object>
    [-Export] <String>
    [<CommonParameters>]
```

## Description

Retrieves a list of all SAS Logical Interconnect or just specific ones via a query if the name parameter is provided. The output can be sent to a file using the exportFile parameter.

## Examples

### Example 1

```text
Get-HPOVSasLogicalInterconnect
```

Returns all SAS Logical Interconnect defined on the appliance to standard output.

### Example 2

```text
Get-HPOVSasLogicalInterconnect -Name "LE1-SasProduction" -ErrorAction Stop
```

Returns just the specific SAS Logical Interconnect object to standard output.

## Parameters

### -Name &lt;String&gt;

The name of the SAS Logical Interconnect to retrieve.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Scope &lt;Object&gt;

Filter resources based on provided Scope membership. By default, all resources for the accounts Active Permissions will be displayed. Allowed values:

* AllResources
* AllResourcesInScope
* `[HPOneView.Appliance.ScopeCollection]`
* `[HPOneView.Appliance.ConnectionPermission]`

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `AllResourcesInScope` |
| Accept pipeline input? |  |
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

Aliases \[-Appliance\]

Specify one or more `[HPOneView.Appliance.Connection]` object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |  |
| :--- | :--- | :--- |
| Required? | True |  |
| Position? | Named |  |
| Default value | \`\(${Global:ConnectedSessions} | ? Default\)\` |
| Accept pipeline input? | false |  |
| Accept wildcard characters? | False |  |

### -Export &lt;String&gt;

Aliases \[-x, `-export`\] The full path and file name to export the contents retrieved from the call to `Get-HPOVLogicalInterconnect`.

| Aliases | x, ExportFile |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None. You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPoneView.Storage.SasLogicalInterconnect \[System.Management.Automation.PSCustomObject\]**_

Logical Interconnect resource object from [`Get-HPOVLogicalInterconnect`](get-hpovlogicalinterconnect.md)

_**System.Collections.ArrayList**_  

Multiple Logical Interconnects

_**A SAS Logical Interconnect or collection of SAS Logical Interconnects**_

## Related Links

