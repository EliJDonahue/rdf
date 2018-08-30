# RDF Proof of Concept for Aras Innovator

# 1 - Exporting RDF 

## About the QD2RDF Method
Formerly known as QD2RDFXML, the QD2RDF method executes a query definition and then uses [the dotnetRDF library](https://www.dotnetrdf.org/) to process the results as the specified output type. We can technically support any [output format](https://github.com/dotnetrdf/dotnetrdf/wiki/UserGuide-Writing-RDF) offered by the dotnetRDF library, but currently we have implemented 4 options:

1. RDF/XML
2. CSV Triples
3. Turtle
4. JSON-LD

The converted query result can be returned from the method and/or written to a file on the server for any of these output types.

## QD2RDF Method Parameters

Parameter   | Description | Default | Options
------------|-------------|---------|--------
qd_id       | The id of the Query Definition to be executed. | RDF Part Query id | 
output      | Target format of the conversion | RDF (RDF/XML) | - RDF (RDF/XML)<br/> - CSV (CSV Triples)<br/> - Turtle<br/>- JSON-LD
file_name   | Name of the output file (not including extension) | Timestamp: MMdd-HHmmss | any string
file_path   | Path on the server where the output file is saved, ending with a backslash | C:\temp\RDF\ | any path on the server
compact     | Determines whether to compact JSON-LD output. No effect on other output types | null | - omit this parameter to return expanded JSON-LD<br/>- "true" or "1" to return compact JSON-LD
offset      | Offset value for Query Definition results | 0 | any integer >= 0
fetch       | Number of results returned from Query Definition | 1 | any integer >= 0
write_file  | [Future] Indicate whether to write to file on server. Otherwise, only return result | N/A | N/A

## Examples & Sample Output

### RDF/XML

RDF/XML is the default output type for the QD2RDF method. 

**Sample AML**

```(xml)
<AML>
    <Item type="qry_QueryDefinition" action="QD2RDF">
        <qd_id>5BE0A43C1D5E4184B1FB82F6D847A4B5</qd_id>
        <output>RDF</output>
    </Item>
</AML>
```

[Sample AML File](./Samples/RDFXML/RDF-AML.xml]) | [Sample RDF/XML](./Samples/RDFXML/RDF-XML.rdf])

### CSV Triples

The CSV output type returns RDF triples in CSV format. This conversion takes a little longer to complete, and the resulting files are larger than the other output types. 

**Sample AML**

```(xml)
<AML>
    <Item type="qry_QueryDefinition" action="QD2RDF">
        <qd_id>5BE0A43C1D5E4184B1FB82F6D847A4B5</qd_id>
        <output>CSV</output>
    </Item>
</AML>
```

[Sample AML File](./Samples/CSV/CSV-AML.xml) | [Sample CSV Triples](./Samples/CSV/CSV-Triples.csv)

### Turtle

Turtle is one of the requested output types. 

**Sample AML**

```(xml)
<AML>
    <Item type="qry_QueryDefinition" action="QD2RDF">
        <qd_id>5BE0A43C1D5E4184B1FB82F6D847A4B5</qd_id>
        <output>Turtle</output>
    </Item>
</AML>
```

[Sample AML File](./Samples/Turtle/Turtle-AML.xml) | [Sample Turtle](./Samples/Turtle/Turtle.ttl)

> Note: The dotnetRDF library provides different options for compressing Turtle output. The QD2RDF method doesn't implement any of the options at this time, but they may be added in the future upon request.

### JSON-LD

Returns an expanded JSON-LD result. For a compact result, use the compact_json parameter as shown in the following section.

**Sample AML**

```(xml)
<AML>
    <Item type="qry_QueryDefinition" action="QD2RDF">
        <qd_id>5BE0A43C1D5E4184B1FB82F6D847A4B5</qd_id>
        <output>JSON-LD</output>
    </Item>
</AML>
```

[Sample AML File](./Samples/JSON-LD/JSON-AML.xml) | [Sample JSON-LD](./Samples/JSON-LD/JSON-LD.json)

### JSON-LD (Compact)

When the compact_json parameter is passed to QD2RDF, we use the built-in [dotnetRDF compaction algorithm](https://github.com/dotnetrdf/dotnetrdf/wiki/UserGuide-JsonLd-Compaction) to produce JSON-LD with shortened URIs and compressed values.

**Sample AML**

```(xml)
<AML>
    <Item type="qry_QueryDefinition" action="QD2RDF">
        <qd_id>5BE0A43C1D5E4184B1FB82F6D847A4B5</qd_id>
        <output>JSON-LD</output>
        <compact_json>1</compact_json>
    </Item>
</AML>
```

[Sample AML File](./Samples/JSON-LD/JSON-AML-compact.xml) | [Sample JSON-LD](./Samples/JSON-LD/JSON-LD-compact.json)

> Note: The context for JSON compacting is currently hardcoded. A future enhancement will make the context configurable.

## Options for Calling the QD2RDF Method

### Using an External Web Service
For this approach, we use an external web service and the QD2RDF server method to execute a query definition and convert the output to the preferred format. [See more info here.](./Samples/RDFXML/RDFXML.md) This works for any version of Aras Innovator that supports Query Builder (11 SP10+).

### Using the Aras RESTful API
This approach requires Aras Innovator 11 SP12 or newer. Taking advantage of the new RESTful API, we can execute the QD2RDF via the built-in OData interface - no external web service required. However, the Aras RESTful API only returns JSON responses. 

If we want to use this approach, we'll need to use a JSON-based output format like JSON-LD. [See more info about this approach here.](./Samples/RDFXML/odata-interface-approach.md)


# 2 - Ontology

[This ontology](./root-ontology.owl) is solely intended as a proof of concept and is not for production use. Work in progress.

Ontology can be referenced via [http://purl.org/aras-poc/base#](http://purl.org/aras-poc/base#).


# 3 - Classes

This section describes *potential* classes for an Aras ontology. These were auto-generated and are not synced with the ontology referenced in Section 2.

* [File](#file)
* [FileType](#filetype)
* [History Template](#history-template)
* [Identity](#identity)
* [Item](#item)
* [Life Cycle Map](#life-cycle-map)
* [Life Cycle State](#life-cycle-state)
* [List](#list)
* [Permission](#permission)
* [Poly Item](#poly-item)
* [Relationship](#relationship)
* [Team](#team)
* [User](#user)
* [Vault](#vault)
* [Value](#value)
* [Workflow Map](#workflow-map)

## File

*SubClass of [Item](#item).*

### Properties

Label | Domain | Range
------|--------|------
checked_out_path | File | xsd:string
checksum | File | xsd:string
comments | File | xsd:string
filename | File | xsd:string
file_size | File | xsd:float
file_type | File | [FileType](#filetype)
indexed_on | File | xsd:dateTime
label | File | xsd:string
mimetype | File | xsd:string

## FileType

*SubClass of [Item](#item).*

### Properties

Label | Domain | Range
------|--------|------
description | FileType | xsd:string
extension | FileType | xsd:string
label | FileType | xsd:string
mimetype | FileType | xsd:string
name | FileType | xsd:string
pattern | FileType | xsd:string
priority | FileType | xsd:integer
rule_type | FileType | xsd:string

## History Template

*SubClass of [Item](#item).*

### Properties

Label | Domain | Range
------|--------|------
name | History Template | xsd:string
property_history | History Template | xsd:boolean

## Identity

*SubClass of [Item](#item).*

### Properties

Label | Domain | Range
------|--------|------
description | Identity | xsd:string
is_alias | Identity | xsd:boolean
label | Identity | xsd:string
maximum_pwd_age | Identity | xsd:integer
name | Identity | xsd:string 
pwd_history_length | Identity | xsd:integer

## Item

### Properties

Label | Domain | Range
------|--------|------
classification | Item | xsd:string 
config_id | Item | xsd:string 
created_by | Item | [User](#user) 
created_on | Item | xsd:dateTime 
current_state | Item | [Life Cycle State](#life-cycle-state) 
generation | Item | xsd:integer 
id | Item | xsd:string 
is_current | Item | xsd:boolean 
is_released | Item | xsd:boolean 
keyed_name | Item | xsd:string 
locked_by_id | Item | [User](#user)
major_rev | Item | xsd:string 
managed_by_id | Item | [User](#user)
minor_rev | Item | xsd:string 
modified_by_id | Item | [User](#user)
modified_on | Item | xsd:dateTime 
new_version | Item | xsd:boolean 
not_lockable | Item | xsd:boolean 
owned_by_id | Item | [User](#user)
permission_id | Item | [Permission](#permission) 
state | Item | xsd:string 
team_id | Item | [Team](#team) 

## Life Cycle Map

*SubClass of [Item](#item).*

### Properties

Label | Domain | Range
------|--------|------
description | Life Cycle Map | xsd:string 
label | Life Cycle Map | xsd:string 
name | Life Cycle Map | xsd:string 
start_state | Life Cycle Map | [Life Cycle State](#life-cycle-state) 

## Life Cycle State

*SubClass of [Item](#item).*

### Properties

Label | Domain | Range
------|--------|------
behavior | Life Cycle State | xsd:string 
history_template | Life Cycle State | [History Template](#history-template)
image | Life Cycle State | xsd:string 
item_behavior | Life Cycle State | xsd:string
label | Life Cycle State | xsd:string
name | Life Cycle State | xsd:string
related_id | Life Cycle State | [Item](#item)
set_is_released | Life Cycle State | xsd:boolean
set_not_lockable | Life Cycle State | xsd:boolean
source_id | Life Cycle State | [Life Cycle Map](#life-cycle-map)
state_permission_id | Life Cycle State | [Permission](#permission)
workflow | Life Cycle State | [Workflow Map](#workflow-map)
x | Life Cycle State | xsd:integer
y | Life Cycle State | xsd: integer

## List

*SubClass of [Item](#item).*

### Properties

Label | Domain | Range
------|--------|------
core | List | xsd:boolean 
description | List | xsd:string 
label | List | xsd:string
name | List |xsd:string

## Permission

*SubClass of [Item](#item).*

### Properties

Label | Domain | Range
------|--------|------
is_private | Permission | xsd:boolean 
name | Permission | xsd:string 

## Poly Item

*SubClass of [Item](#item).*

### Properties

Label | Domain | Range
------|--------|------
itemtype | Poly Item | [Value](#value) 

## Relationship

*SubClass of [Item](#item).*

### Properties

Label | Domain | Range
------|--------|------
behavior | Relationship | xsd:string
related_id |Relationship | [Item](#item)
sort_order | Relationship | xsd:integer 
source_id |Relationship | [Item](#item)

## Team

*SubClass of [Item](#item).*

### Properties

Label | Domain | Range
------|--------|------
description | Team | xsd:string 
name | Team | xsd:string 

## User

*SubClass of [Item](#item).*

### Properties

Label | Domain | Range
------|--------|------
cell | User | xsd:string 
company_name | User | xsd:string 
default_vault | User | [Vault](#vault) 
email | User | xsd:string 
esignature | User | xsd:string 
fax | User | xsd:string 
first_name | User | xsd:string 
home_phone | User | xsd:string 
label | User | xsd:string 
last_login_date | User | xsd:dateTime 
last_name | User | xsd:string 
login_name | User | xsd:string 
logon_enabled | User | xsd:boolean 
mail_stop | User | xsd:string 
manager | User | [User](#user)
pager | User | xsd:string 
password | User | xsd:string 
picture | User | xsd:string 
pwd_is_set_on | User | xsd:dateTime 
starting_page | User | xsd:string 
telephone | User | xsd:string 
user_no | User | xsd:string 
working_directory | User | xsd:string 

## Vault

*SubClass of [Item](#item).*

### Properties

Label | Domain | Range
------|--------|------
label | Vault | xsd:string
name | Vault | xsd:string
vault_url | Vault | xsd:string
vault_url_pattern | Vault | xsd:string

## Value

*SubClass of [Item](#item) and [Relationship](#relationship)*

### Properties

Label | Domain | Range
------|--------|------
label | Value | xsd:string 
value | Value | xsd:string

## Workflow Map

*SubClass of [Item](#item).*

### Properties

Label | Domain | Range
------|--------|------
comments | Workflow Map | xsd:string
description | Workflow Map | xsd:string
effective_date | Workflow Map | xsd:dateTime
label | Workflow Map | xsd:string
name | Workflow Map | xsd:string
node_bg_color | Workflow Map | xsd:string
node_label1_color | Workflow Map | xsd:string
node_label1_font | Workflow Map | xsd:string
node_label2_color | Workflow Map | xsd:string
node_label2_font | Workflow Map | xsd:string
node_name_color | Workflow Map | xsd:string
node_name_font | Workflow Map | xsd:string
node_size | Workflow Map | xsd:string
process_owner | Workflow Map | [Identity](#identity)
release_date | Workflow Map | xsd:dateTime
superseded_date | Workflow Map | xsd:dateTime
transition_line_color | Workflow Map | xsd:string
transition_name_color | Workflow Map | xsd:string
transition_name_font | Workflow Map | xsd:string

# Properties

Property Name | Domain(s) | Range
--------------|-----------|---------
behavior | [Relationship](#relationship) | xsd:string
cell | [User](#user) | xsd:string
checked_out_path | [File](#file) | xsd:string
checksum | [File](#file) | xsd:string
classification | [Item](#item) | xsd:string
comments | [File](#file) <br/> [Workflow Map](#workflow-map) | xsd:string
company_name | [User](#user) | xsd:string
config_id | [Item](#item) | xsd:string
core | [List](#list) | xsd:boolean
created_by_id | [Item](#item) | [User](#user)
created_on | [Item](#item) | xsd:dateTime
current_state | [Item](#item) | [Life Cycle State](#life-cycle-state)
default_vault | [User](#user) | [Vault](#vault)
description | [FileType](#filetype) <br/> [Identity](#identity) <br/> [Life Cycle Map](#life-cycle-map) <br/> [List](#list) <br/> [Team](#team) | xsd:string
effective_date | [Workflow Map](#workflow-map) | xsd:dateTime
email | [User](#user) | xsd:string
esignature | [User](#user) | xsd:string
extension | [FileType](#filetype) | xsd:string
fax | [User](#user) | xsd:string
file_size | [File](#file) | xsd:string
file_type | [File](#file) | [FileType](#filetype)
filename | [File](#file) | xsd:string
filter | [Value](#value) | xsd:string
first_name | [User](#user) | xsd:string
generation | [Item](#item) | xsd:integer
history_template | [Life Cycle State](#life-cycle-state) | [History Template](#history-template)
home_phone | [User](#user) | xsd:string
id | [Item](#item) | xsd:string
image | [Life Cycle State](#life-cycle-state) | xsd:string
is_alias | [Identity](#identity) | xsd:boolean
is_current | [Item](#item) | xsd:boolean
is_private | [Permission](#permission) | xsd:boolean
is_released | [Item](#item) | xsd:boolean
item_behavior | [Life Cycle State](#life-cycle-state) | xsd:string
itemtype | [Poly Item](#poly-item) | [Value](#value)
keyed_name | [Item](#item) | xsd:string
label | [Identity](#identity) <br/> [Life Cycle Map](#life-cycle-map) <br/>[List](#list) <br/>[User](#user) <br/>[Value](#value) <br/>[Vault](#vault) | xsd:string
last_login_date | [User](#user) | xsd:dateTime
last_name | [User](#user) | xsd:string
locked_by_id | [Item](#item) | [User](#user)
login_name | [User](#user) | xsd:string
logon_enabled | [User](#user) | xsd:boolean
mail_stop | [User](#user) | xsd:string
major_rev | [Item](#item) | xsd:string
managed_by_id | [Item](#item) | [Identity](#identity)
manager | [User](#user) | [User](#user)
maximum_pwd_age  | []() | xsd:integer
mimetype | [Identity](#identity) | xsd:string
minor_rev | [Item](#item) | xsd:string
modified_by_id | [Item](#item) | [User](#user)
modified_on | [Item](#item) | xsd:dateTime
name | [History Template](#history-template) <br/>[Identity](#identity) <br/> [Life Cycle Map](#life-cycle-map) <br/>[List](#list) <br/>[Permission](#permission) <br/>[Team](#team) <br/>[Vault](#vault) | xsd:string
new_version | [Item](#item) | xsd:boolean
node_bg_color | [Workflow Map](workflow-map) | xsd:string
node_label1_color | [Workflow Map](workflow-map) | xsd:string
node_label1_font | [Workflow Map](workflow-map) | xsd:string
node_label2_color | [Workflow Map](workflow-map) | xsd:string
node_label2_font | [Workflow Map](workflow-map) | xsd:string
node_name_color | [Workflow Map](workflow-map) | xsd:string
node_name_font | [Workflow Map](workflow-map) | xsd:string
node_size | [Workflow Map](workflow-map) | xsd:string
not_lockable | [Item](#item) | xsd:boolean
owned_by_id | [Item](#item) | [Identity](#identity)
pager | [User](#user) | xsd:string
password | [User](#user) | xsd:string
pattern | [FileType](#filetype) | xsd:string
permission_id | [Item](#item) | [Permission](#permission)
picture | [User](#user) | xsd:string
priority | [FileType](#filetype) | xsd:string
process_owner | [Workflow Map](#workflow-map) | [Identity](#identity)
property_history | [History Template](#history-template) | xsd:boolean
pwd_history_length | [Identity](#identity) | xsd:integer
pwd_is_set_on | [User](#user) | xsd:dateTime
related_id | [Relationship](#relationship) | [Item](#item)
release_date | [Workflow Map](#workflow-map) | xsd:dateTime
rule_type | [FileType](#filetype) | xsd:string
set_is_released | [Life Cycle State](#life-cycle-state) | xsd:boolean
set_not_lockable | [Life Cycle State](#life-cycle-state) | xsd:boolean
sort_order | [Relationship](#relationship) | xsd:integer
source_id | [Relationship](#relationship) | [Item](#item)
start_state | [Life Cycle Map](#life-cycle-map) | [Life Cycle State](#life-cycle-state)
starting_page | [User](#user) | xsd:string
state | [Item](#item) | xsd:string
state_permission_id | [Life Cycle State](#life-cycle-state) | [Permission](#permission)
superseded_date | [Workflow Map](#workflow-map) | xsd:dateTime
team_id | [Item](#item) | [Team](#team)
telephone | [User](#user) | xsd:string
transition_line_color | [Workflow Map](workflow-map) | xsd:string
transition_name_color | [Workflow Map](workflow-map) | xsd:string
transition_name_font | [Workflow Map](workflow-map) | xsd:string
user_no | [User](#user) | xsd:string
value | [Value](#value) | xsd:string
vault_url | [Vault](#vault) | xsd:string
vault_url_pattern | [Vault](#vault) | xsd:string
workflow | [Life Cycle State](#life-cycle-state) | [Workflow Map](workflow-map)
working_directory | [User](#user) | xsd:string
x | [Life Cycle State](#life-cycle-state) | xsd:integer
y | [Life Cycle State](#life-cycle-state) | xsd:integer
