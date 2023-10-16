---
description: Create QoS Traffic Classifier Object
---

# New-OVQosTrafficClass

## Syntax

```powershell
New-OVQosTrafficClass
    [-Name] <String>
    [-MaxBandwidth] <Int32>
    [-BandwidthShare] <String>
    [-EgressDot1pValue] <Int32>
    [-IngressDot1pClassMapping] <Array>
    [-IngressDscpClassMapping] <Array>
    [-RealTime]
    [-Enabled]
    [<CommonParameters>]
```

## Description

This helper Cmdlet provides the capability to create a new QoS Traffic Classifier Object, which can then be added to either a Logical Interconnect Group, or Logica Interconnect resource.

Only non-FCoE Traffic Classifiers are allowed to be created.  When creating the "Best effort" Traffic Classifier, only the MaxBandwidth parameter is allowed to be modified.

## Examples

###  Example 1 

```powershell
$Class1 = New-OVQosTrafficClass -Name Class1 -MaxBandwidth 50 -BandwidthShare 20 -ExgressDot1pValue 2 -IngressDot1pClassMapping 5,6 -EgressDscpClassMapping "DSCP 0, CS0","DSCP 10, AF11","DSCP 12, AF12","DSCP 14, AF13"  -Enabled
$Class2 = New-OVQosTrafficClass -Name Class2 -MaxBandwidth 10 -BandwidthShare 10 -ExgressDot1pValue 3 -IngressDot1pClassMapping 1 -EgressDscpClassMapping "DSCP 30, AF33","SCP 32, CS4" -Enabled
$TrafficClasses = $Class1,$Class2
```

Create new traffic class objects "Class1" and "Class2", creating a new collection $TrafficClasses.

## Parameters

### -Name &lt;String&gt;

Name of the QoS Classifier.  Value cannot be "FCoE lossless".  If value is "Best effort", only the MaxBandwidth Parameter is allowed to be modified.

| Aliases | ClassName |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -MaxBandwidth &lt;Int32&gt;

Maximum share the traffic class can use when other traffic classes are not using their guaranteed share.  The max share and the % share for a real time class must be equal and not exceed 50%. For other classes, the max share is greater than or equal to the % share.
 
Value between 1 and 100

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -BandwidthShare &lt;String&gt;

Minimum guaranteed bandwidth for the traffic class.  The % share and the max share for a real time class must be equal and not exceed 50%.
     
Value between 1 and 100

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EgressDot1pValue &lt;Int32&gt;

Specifies the dot1p priority value to remark for the egressing packets. This provides flexibility to control priority treatment for packets at the next hops based on the remarked dot1p value.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | 0 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IngressDot1pClassMapping &lt;Array&gt;

Specify an array of ingress Dot1p values, and to which traffic class it is currently mapped.  Allowed values:

* 0
* 1
* 2
* 3
* 4
* 5
* 5
* 6
* 7

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IngressDscpClassMapping &lt;Array&gt;

Specify an array of DSCP class mappings, per RFC 2475.  Allowed values:

* DSCP 0, CS0
* DSCP 10, AF11 
* DSCP 12, AF12 
* DSCP 14, AF13 
* DSCP 8, CS1
* DSCP 18, AF21
* DSCP 20, AF22
* DSCP 22, AF23
* DSCP 26, AF31
* DSCP 28, AF32
* DSCP 30, AF33
* DSCP 34, AF41
* DSCP 36, AF42
* DSCP 38, AF43
* DSCP 16, CS2 
* DSCP 24, CS3 
* DSCP 32, CS4 
* DSCP 46, EF
* DSCP 40, CS5 
* DSCP 48, CS6 
* DSCP 56, CS7

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -RealTime &lt;SwitchParameter&gt;

Specifies whether the traffic class is real time. Only 1 traffic class can be real time. Enabling real time for this class removes the real time flag for other classes.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Enabled &lt;SwitchParameter&gt;

Specify to Enable the traffic class. By default, the class is disabled, even though it is defined.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this Cmdlet.**_

## Return Values

_**HPEOneView.Networking.QosTrafficClassifier [System.Management.Automation.PSCustomObject]**_

QoS Traffic Classifier Object  @{      qosTrafficClass = [PSCustomObject]@{          maxBandwidth     = 100;         bandwidthShare   = "0";         egressDot1pValue = 0;         realTime         = $false;         className        = "Class";         enabled          = $false;      };                          qosClassificationMapping = [PSCustomObject]@{                      dot1pClassMapping = @();         dscpClassMapping  = @()                  }  }

## Related Links

