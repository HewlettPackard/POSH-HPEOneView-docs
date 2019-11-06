---
description: Disconnect your user session from an appliance.
---

# Disconnect-HPOVMgmt

### HPE OneView 5.00 Library

### Syntax

```
Disconnect-HPOVMgmt [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

This cmdlet disconnects the specified or all HPE OneView appliance session\(s\).

### Parameters

#### -ApplianceConnection &lt;Object&gt;

Specify one or more HPOneView.Appliance.Connection object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance, ApplianceSession, Hostname |
| :--- | :--- |
| Required? | False |
| Position? | 0 |
| Default value | $ConnectedSessions \| Where-Object Default |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**None.**_

### Examples

```
 -------------------------- EXAMPLE 1 --------------------------
# Connect to an appliance, and be prompted for credentials.
$Connection1 = Connect-HPOVMgmt MyAppliance.domain.com

# Disconnect the established session.
Disconnect-HPOVMgmt -Hostname $Connection1
```

 Disconnect from the specific appliance session.

```
 -------------------------- EXAMPLE 2 --------------------------
Disconnect-HPOVMgmt -Hostname 1
```

 Disconnect ConnectionID 1 appliance session.

```
 -------------------------- EXAMPLE 3 --------------------------
$ConnectedSessions | Disconnect-HPOVMgmt
```

Disconnect all appliance sessions. 

### Related Links

* [Connect-HPOVMgmt](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Connect-HPOVMgmt) 

## HPE OneView 4.20 Library 

### Syntax

```
Disconnect-HPOVMgmt [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

This cmdlet disconnects the specified or all HPE OneView appliance session\(s\).

### Parameters

#### -ApplianceConnection &lt;Object&gt;

Specify one or more HPOneView.Appliance.Connection object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance, ApplianceSession, Hostname |
| :--- | :--- |
| Required? | False |
| Position? | 0 |
| Default value | $ConnectedSessions \| Where-Object Default |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**None.**_

### Examples

```
 -------------------------- EXAMPLE 1 --------------------------
# Connect to an appliance, and be prompted for credentials.
$Connection1 = Connect-HPOVMgmt MyAppliance.domain.com

# Disconnect the established session.
Disconnect-HPOVMgmt -Hostname $Connection1
```

 Disconnect from the specific appliance session.

```
 -------------------------- EXAMPLE 2 --------------------------
Disconnect-HPOVMgmt -Hostname 1
```

 Disconnect ConnectionID 1 appliance session.

```
 -------------------------- EXAMPLE 3 --------------------------
$ConnectedSessions | Disconnect-HPOVMgmt
```

Disconnect all appliance sessions. 

### Related Links

* [Connect-HPOVMgmt](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Connect-HPOVMgmt) 

## HPE OneView 4.10 Library 

### **Syntax**

```
Disconnect-HPOVMgmt [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

 This cmdlet disconnects the specified or all HPE OneView appliance session\(s\).

### Parameters

#### -ApplianceConnection &lt;Object&gt;

Specify one or more HPOneView.Appliance.Connection object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance, ApplianceSession, Hostname |
| :--- | :--- |
| Required? | False |
| Position? | 0 |
| Default value | $ConnectedSessions \| Where-Object Default |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**None.**_

### Examples

```
 -------------------------- EXAMPLE 1 --------------------------
# Connect to an appliance, and be prompted for credentials.
$Connection1 = Connect-HPOVMgmt MyAppliance.domain.com

# Disconnect the established session.
Disconnect-HPOVMgmt -Hostname $Connection1
```

 Disconnect from the specific appliance session.

```
 -------------------------- EXAMPLE 2 --------------------------
Disconnect-HPOVMgmt -Hostname 1
```

 Disconnect ConnectionID 1 appliance session.

```
 -------------------------- EXAMPLE 3 --------------------------
$ConnectedSessions | Disconnect-HPOVMgmt
```

Disconnect all appliance sessions. 

### Related Links

* [Connect-HPOVMgmt](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Connect-HPOVMgmt) 

