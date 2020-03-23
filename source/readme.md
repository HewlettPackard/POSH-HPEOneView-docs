# Introduction

This directory stored the HPE OneView library Cmdlet source documentation, in JSON format.  Why?  Trying to use Microsoft's MAML (XML) document format to update or use as the source for user documentation is not very user friendly.  It also doesn't help MAML isn't very well documented.

The JSON source is used for building online and offline user documentation.

When documenting a Cmdlet, the following format is required:

``` JSONC
{
    "Name": "Name of the Cmdlet",
    "Category": "The general category. Refer below for current Categories. Please do not create a new category without first discussing.",
    "Contents": {
        "Synopsis": "A brief description of the Cmdlet. This is a single sentence.",
        "Description": "The full Cmdlet description.",
        "Parameters": [
            // An array of Parameter
        ],
        "Syntax": [
            // An array of a Syntax array
        ],
        "Examples": [
            // An array of Example
        ],
        "InputTypes": [
            // An array of InputType
        ],
        "ReturnValues": [
            // An array of ReturnValue
        ],
        "RelatedLinks": [
            // An array of RelatedLink
        ],
    }
}
```

### Parameter
``` JSONC
{
    "Name": "ParamName",
    "Description": "Param description and relevent notes.",
    "ParameterValue":{
        "Value": "Parameter type. E.g. System.String or HPOneView.Networking.EthernetNetwork",
        "Required": "Boolean value"
    },
    "DefaultValue": "What is the default value of the parameter",
    "Aliases": "Parameter alias values, in string comma seperated value. E.g. p, Port",
    "PipelineInput": "String value",
    "SupportsWildCard": "Boolean value"
}
```

### Syntax array
``` JSONC
[
    {
        "Name": "Will match with Parameters array above",
        "Required": "Boolean value. Does not necessarily mean it matches what is documented in the Parameters array above."
    }
]
```

### Example
``` JSONC
{
    "Title": "-------------------------- EXAMPLE # --------------------------",
    "Code": "Multi-line string value that would demonstrate the use of the Cmdlet.  Do not include any 'C:' prefix in the code.  The text value should be copied and pasted into a command window.",
    "Description": "String value that describes the example code."
}
```

### InputType
``` JSONC
{
    "Uri": "The class name of the object accepted for pipeline input.",
    "Text": "Relevant description of the input type, including any Cmdlet that would generate the object type."
}
```

### ReturnValue
``` JSONC
{
    "Value": "The class name of the object returned to the pipeline.",
    "Text": "Relevent description of the return value."
}
```

### RelatedLink
``` JSONC
{
    "Uri": "Only used for the HTTPS location to online user documentation when 'Text' property is set to 'Online:'.",
    "Text": "String value of the related link.  Specify 'Online:' when the 'Uri' property is not null and is an HTTP/HTTPS reference."
}
```

## Cmdlet documentation categories

The following list is the current approved list of categories for the library.  The category maps to the online user documentation sub-categories.  These are defined and enforced within the `../ApprovedCategories.json` file.

  * Appliance
  * Cluster
  * Facilities
  * Library
  * Networking
  * Security
  * Servers
  * Storage