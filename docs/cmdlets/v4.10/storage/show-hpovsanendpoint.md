---
description: View Managed SAN FC Endpoints.
---

# Show-HPOVSanEndpoint

## Syntax

```text
Show-HPOVSanEndpoint
    [-SAN] <Object>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

```text
Show-HPOVSanEndpoint
    [-WWN] <String>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

This Cmdlet will dispay the Managed SAN endpoints, or FC addresses, their node information, and Zone Name.  By default, all SAN endpoints will be returned.  You can filter the results based on Managed SAN resource or WWN address.

## Examples

###  Example 1 

```text
Show-HPOVSanEndpoint
Appliance WWN                     Port Type Online SAN Name Zone Name
--------- ---                     --------- ------ -------- ---------
hpov-tot2 10:00:F6:9F:5F:70:00:02 N_Port    False  SAN1_1   Node_1_8
hpov-tot2 20:00:00:02:AC:00:08:DF N_Port    True   SAN1_1   Node_1_8
hpov-tot2 20:00:00:02:AC:00:08:E3 N_Port    True   SAN1_1   Node_1_8
hpov-tot2 10:00:F6:9F:5F:70:00:00 N_Port    False  SAN1_0   Node_1_7
hpov-tot2 20:00:00:02:AC:00:08:E2 N_Port    True   SAN1_0   Node_1_7
hpov-tot2 20:00:00:02:AC:00:08:DE N_Port    True   SAN1_0   Node_1_7
hpov-tot2 AA:AA:AA:AA:AA:AA:AA:AA N_Port    False  SAN1_0   dummy_zone
hpov-tot2 20:00:00:02:AC:00:09:03 N_Port    True   SAN1_0
hpov-tot2 00:00:4A:2B:21:E0:00:1B N_Port    True   SAN1_1
hpov-tot2 20:00:00:02:AC:00:09:04 N_Port    True   SAN1_1
hpov-tot2 00:00:4A:2B:21:E0:00:14 N_Port    True   SAN1_0
hpov-tot2 00:00:4A:2B:21:E0:00:0D N_Port    True   SAN1_1
hpov-tot2 20:00:00:02:AC:00:09:00 N_Port    True   SAN1_1
hpov-tot2 20:00:00:02:AC:00:08:FF N_Port    True   SAN1_0
hpov-tot2 00:00:4A:2B:21:E0:00:06 N_Port    True   SAN1_0


```

Return all SAN Endpoints from the appliance.

###  Example 2 

```text
Get-HPOVManagedSan SAN1_1 | Show-HPOVSanEndpoint
Appliance WWN                     Port Type Online SAN Name Zone Name
--------- ---                     --------- ------ -------- ---------
hpov-tot2 20:00:00:02:AC:00:08:E3 N_Port    True   SAN1_1   Node_1_8
hpov-tot2 10:00:F6:9F:5F:70:00:02 N_Port    False  SAN1_1   Node_1_8
hpov-tot2 20:00:00:02:AC:00:08:DF N_Port    True   SAN1_1   Node_1_8
hpov-tot2 00:00:4A:2B:21:E0:00:1B N_Port    True   SAN1_1
hpov-tot2 20:00:00:02:AC:00:09:04 N_Port    True   SAN1_1
hpov-tot2 00:00:4A:2B:21:E0:00:0D N_Port    True   SAN1_1
hpov-tot2 20:00:00:02:AC:00:09:00 N_Port    True   SAN1_1


```

Return all SAN Endpoints for the specified Managed SAN resource from the appliance.

###  Example 3 

```text
Show-HPOVSanEndpoint -WWN 10:00:F6:9F:5F:70:00:02
Appliance WWN                     Port Type Online SAN Name Zone Name
--------- ---                     --------- ------ -------- ---------
hpov-tot2 10:00:F6:9F:5F:70:00:02 N_Port    False  SAN1_1   Node_1_8


```

Return the specific SAN Endpoint from the appliance.

## Parameters

### -SAN &lt;Object&gt;

The Managed SAN Resource Object or Name.  Cannot be combined with the WWN parameter.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -WWN &lt;String&gt;

The WWN of the node you are looking for.  Cannot be combined with the SAN parameter.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneview.Storage.ManagedSan**_

Managed SAN resource from [`Get-HPOVManagedSan`](get-hpovmanagedsan.md)


## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Async task

## Related Links

