---
description: Sends a request to the management appliance.
---

# Send-HPOVRequest

## HPE OneView 5.00 Library

## Syntax

```text
Send-HPOVRequest [-Uri] <String> [[-Method] <String>] [[-Body] <Object>] [[-Start] <Int32>] [[-Count] <Int32>] [[-AddHeader] <Hashtable>] [[-OverrideContentType] <String>] [[-OverrideTimeout] <Int>] [[-Hostname] <Object>] [<CommonParameters>]
```

## Description

Receives the request input, properly constructs and formats the request header and body and sends the request to the management appliance. This is the main Cmdlet that interacts with the appliance.

The message body can contain valid JSON data, with the correct URI and accepted HTTP method accepted by the target resource manager. Please see the on-appliance Resource Model for more information \([https://\[appliance\_IP\]/help/cic/en/content/images/api/](https://[appliance_IP]/help/cic/en/content/images/api/).\)

## Parameters

### -AddHeader &lt;Hashtable&gt;

If additional headers are needed/required than the defaults, include header names and values within a Hashtable. Example header could be `if-match` for `PATCH` operation to the appliance REST API.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | 5 |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Hostname &lt;Object&gt;

The destination appliance to process the request. When specifying a Value, it must match the HostName attribute of a valid `[HPOneView.Appliance.Connection]` object within the Global `$ConnectedSessions` variable. If no match is found, or no `[HPOneView.Appliance.Connection]` objects exist, an error will be thrown.

| Aliases | Appliance, ApplianceConnection |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -OverrideContentType &lt;String&gt;

Workaround to override ContentType where needed \(e.g. PATCH /rest/scopes/{GUID}.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | 6 |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -OverrideTimeout &lt;Int&gt;

Specify to override the `HttpWebRequest` syncronous timeout being made.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | 7 |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Body &lt;Object&gt;

Body for the request. Required if the method is `POST`, `PUT` or `PATCH`.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | 2 |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Count &lt;Int32&gt;

For `GET` requests on resource collections, this specifies the number of collection members to return. If not specified, all members of the collection are returned from this function.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | 4 |
| Default value | 0 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Method &lt;String&gt;

The request HTTP Method.

* `GET` \(default\) to get a resource from the appliance \(read\)
* `POST` to create a new resource
* `PUT` to modify a resource \(write\)
* `PATCH` to modify a resource \(write\), with specific attributes set to values, other attributes should be set to `$null`.
* "`DELETE`" to delete a resource

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | 1 |
| Default value | GET |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Start &lt;Int32&gt;

For GETs on resource collections, this specifies the starting index in the collection. If not specified, collection members starting from the beginning are returned.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | 3 |
| Default value | 0 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Uri &lt;String&gt;

The uri that identifies the required resource on the appliance.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | 0 |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None. You cannot pipe objects to this cmdlet.**_

## Return Values

{% tabs %}
{% tab title="System.Collections.ArrayList" %}
If collection of resources \(.i.e. GET /rest/ethernet-networks\)
{% endtab %}

{% tab title="System.Management.Automation.PSCustomObject" %}
Single object returned from appliance.

```text
 If Async task, a Hashtable is returned with the following contents:

     @{
         uri = TaskUri;
         category = "tasks";
         type = "TaskResourceV2";
         taskState = "New";
         resource = @{};
     }
```
{% endtab %}

{% tab title="System.Management.Automation.PSCustomObject" %}
If no resources are found, a `[System.Management.Automation.PSCustomObject]` is returned that contains:

```text
     @{
         statusCode = [int]HTTP Status Code;
         statusMessage = [string]HTTP Status Message;
         lastCall = [string]URI;
     }
```
{% endtab %}
{% endtabs %}

## Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Send-HPOVRequest "/rest/enclosures"
```

Returns all the enclosure objects managed by the appliance.

```text
 -------------------------- EXAMPLE 2 --------------------------
$e = Send-HPOVRequest "/rest/enclosures/SGH2X6J1" -Appliance MyAppliance.domain.com
$e.name = "New Name"
Send-HPOVRequest $e.uri "PUT" $e -Appliance MyAppliance.domain.com
```

Updates the name of the enclosure object specified by the uri and Appliance Connection name.

