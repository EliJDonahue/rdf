# RDF Ontology POC

This ontology is solely intended as a proof of concept and is not for production use. Work in progress.

Ontology can be referenced via [http://purl.org/aras-poc/base#](http://purl.org/aras-poc/base#).

# Classes

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
