# RDF Ontology POC

This ontology is solely intended as a proof of concept and is not for production use. Work in progress.

## Classes

* Item
  * Identity
  * Life Cycle State
  * List
  * Permission
  * Poly Item
  * Relationship
  * Team
  * User
  * Value

## Properties

### Item

Label | Domain | Range
------|--------|------
classification | Item | xsd:string 
config_id | Item | xsd:string 
created_by | Item | [User]() 
created_on | Item | xsd:dateTime 
current_state | Item | [Life Cycle State]() 
generation | Item | xsd:integer 
id | Item | xsd:string 
is_current | Item | xsd:boolean 
is_released | Item | xsd:boolean 
keyed_name | Item | xsd:string 
locked_by_id | Item | [User]() 
major_rev | Item | xsd:string 
managed_by_id | Item | [User]() 
minor_rev | Item | xsd:string 
modified_by_id | Item | [User]() 
modified_on | Item | xsd:dateTime 
new_version | Item | xsd:boolean 
not_lockable | Item | xsd:boolean 
owned_by_id | Item | [User]() 
permission_id | Item | [Permission]() 
state | Item | xsd:string 
team_id | Item | [Team]() 

### Identity

Label | Domain | Range
------|--------|------
description | Identity | xsd:string
is_alias | Identity | xsd:boolean
label | Identity | xsd:string
maximum_pwd_age | Identity | xsd:integer
name | Identity | xsd:string 
pwd_history_length | Identity | xsd:integer

### Life Cycle State

Label | Domain | Range
------|--------|------
behavior | Life Cycle State | xsd:string 
history_template | Life Cycle State | [History Template]()
image | Life Cycle State | xsd:string 
item_behavior | Life Cycle State | xsd:string
label | Life Cycle State | xsd:string
name | Life Cycle State | xsd:string
related_id | Life Cycle State | [Item]()
set_is_released | Life Cycle State | xsd:boolean
set_not_lockable | Life Cycle State | xsd:boolean
source_id | Life Cycle State | [Life Cycle Map]()
state_permission_id | Life Cycle State | [Permission]()
workflow | Life Cycle State | [Workflow Map]()
x | Life Cycle State | xsd:integer
y | Life Cycle State | xsd: integer

### List

Label | Domain | Range
------|--------|------
core | List | xsd:boolean 
description | List | xsd:string 
label | List | xsd:string
name | List |xsd:string

### Permission

Label | Domain | Range
------|--------|------
is_private | Permission | xsd:boolean 
name | Permission | xsd:string 

### Poly Item

Label | Domain | Range
------|--------|------
 |  |  

### Relationship

Label | Domain | Range
------|--------|------
 |  |  

### Team

Label | Domain | Range
------|--------|------
description | Team | xsd:string 
name | Team | xsd:string 

### User

Label | Domain | Range
------|--------|------
cell | User | xsd:string 
company_name | User | xsd:string 
default_vault | User | [Vault]() 
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
manager | User | [User]() 
pager | User | xsd:string 
password | User | xsd:string 
picture | User | xsd:string 
pwd_is_set_on | User | xsd:dateTime 
starting_page | User | xsd:string 
telephone | User | xsd:string 
user_no | User | xsd:string 
working_directory | User | xsd:string 

### Value

Label | Domain | Range
------|--------|------
label | Value | xsd:string 
value | Value | xsd:string
