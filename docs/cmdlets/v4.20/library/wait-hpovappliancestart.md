---
description: Wait for Appliance services to start.
---

# Wait-HPOVApplianceStart

## Syntax

```text
Wait-HPOVApplianceStart
    [-Hostname] <String>
    [<CommonParameters>]
```

## Description

Internal module helper function to wait for the appliance services to start. This helper function will be called by Send-HPOVRequest when the \[System.Net.WebRequest\] GetResponse\(\) client generates an \[Net.WebException\] exception. Then, this function will be called to provide the caller with an indication that the appliance is starting its services. This will display two prompts:

1. An initial text-based progress bar while the System.Net.WebRequest is able to access the web service on the appliance to begin polling for service startup status.
2. Write-Progress indicator displaying the overall service startup.

If any service fails to startup, this function will cause a terminating error, informing the caller to go visit the appliance kiosk console to get more information about the startup error.

When the appliance successfully starts, this function will return.

## Examples

### Example 1

```text
Wait-HPOVApplianceStart -Appliance appliance.contoso.com
```

Wait for the appliance to start, and specify the appliance name.

## Parameters

### -Hostname &lt;String&gt;

Specify the appliance FQDN or IP Address without a valid connection created by using `Connect-HPOVMgmt`.

| Aliases | Appliance |
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

_**Write-Progress**_

The Write-Progress cmdlet is used to display the startup progress

## Related Links

