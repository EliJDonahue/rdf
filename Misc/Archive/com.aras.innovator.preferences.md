<!-- Auto-generated by action -->

# com.aras.innovator.preferences Assessment

This file does not define any part of the current base vocabulary/ontology. Not every 'class' or 'property' in this file will become part of the base ontology. It was generated to take an inventory of Aras ItemTypes and their properties.

[Go To Classes](#classes) | [Go To Item/System Properties](#itemsystem-properties) | [Go To Relationship Properties](#relationship-properties) | [Go To General Properties](#general-properties)

# Classes

## Preference

*SubClass of [Item](#item).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
identity_id | Preference |   | Item | [Identity](#identity)

### Relationships

Relationship Class Name | Related Class
------ | ------
[cmf_ContentTypeGridLayout](#cmf_contenttypegridlayout) | [](#)
[Core_GlobalLayout](#core_globallayout) | [](#)
[Core_ItemGridLayout](#core_itemgridlayout) | [](#)
[Core_RelGridLayout](#core_relgridlayout) | [](#)
[PE_MainPreferences](#pe_mainpreferences) | [](#)
[PM_ProjectColorMap](#pm_projectcolormap) | [](#)
[PM_ProjectGridLayout](#pm_projectgridlayout) | [](#)
[SelfServiceReportSettings](#selfservicereportsettings) | [](#)
[SSVC_Preferences](#ssvc_preferences) | [](#)


## PreferenceTypes

*SubClass of [Item](#item).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------

### Relationships

Relationship Class Name | Related Class
------ | ------
[PreferenceTabTypes](#preferencetabtypes) | [](#)


## Core_GlobalLayout

*SubClass of [Item](#item) and [Relationship](#relationship).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
core_append_items | Core_GlobalLayout |   | String | 
core_debug | Core_GlobalLayout |   | String | 
core_default_download_location | Core_GlobalLayout |   | Integer | 
core_in_basket_history | Core_GlobalLayout |   | String | 
core_popupmessage_timeout | Core_GlobalLayout |   | Integer | 
core_show_item_properties | Core_GlobalLayout |   | String | 
core_show_labels | Core_GlobalLayout |   | String | 
core_show_scan_button_for_file | Core_GlobalLayout |   | Boolean | 
core_structure_layout | Core_GlobalLayout |   | String | 
core_successmessage_type | Core_GlobalLayout |   | List | Success Message Type
core_tabs_state | Core_GlobalLayout |   | List | Structure Views
core_tear_off | Core_GlobalLayout |   | String | 
core_use_wildcards | Core_GlobalLayout |   | String | 
related_id | Core_GlobalLayout |   | Item | [](#)
source_id | Core_GlobalLayout |   | Item | [Preference](#preference)


## Core_ItemGridLayout

*SubClass of [Item](#item) and [Relationship](#relationship).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
col_order | Core_ItemGridLayout |   | Text | 
col_widths | Core_ItemGridLayout |   | Text | 
item_type_id | Core_ItemGridLayout |   | String | 
max_records | Core_ItemGridLayout |   | Integer | 
page_size | Core_ItemGridLayout |   | Integer | 
preview_state | Core_ItemGridLayout |   | List | Preview State Mode
query_type | Core_ItemGridLayout |   | String | 
related_id | Core_ItemGridLayout |   | Item | [](#)
source_id | Core_ItemGridLayout |   | Item | [Preference](#preference)


## Core_RelGridLayout

*SubClass of [Item](#item) and [Relationship](#relationship).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
col_order | Core_RelGridLayout |   | Text | 
col_widths | Core_RelGridLayout |   | Text | 
page_size | Core_RelGridLayout |   | Integer | 
redline_view | Core_RelGridLayout |   | Boolean | 
rel_type_id | Core_RelGridLayout |   | String | 
related_id | Core_RelGridLayout |   | Item | [](#)
search_vis | Core_RelGridLayout |   | Text | 
source_id | Core_RelGridLayout |   | Item | [Preference](#preference)


## PreferenceTabTypes

*SubClass of [Item](#item) and [Relationship](#relationship).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
preference_tab | PreferenceTabTypes |   | String | 
preference_tab_type | PreferenceTabTypes |   | List | PreferenceTabTypeList
related_id | PreferenceTabTypes |   | Item | [](#)
source_id | PreferenceTabTypes |   | Item | [PreferenceTypes](#preferencetypes)


# Properties

## Item/System Properties

These properties are shared by all SubClasses of Item.

Property | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
classification | [Item](#item) |   | String | 
config_id | [Item](#item) |   | Item | [Action](#action)
created_by_id | [Item](#item) |   | Item | [User](#user)
created_on | [Item](#item) |   | Date | 
css | [Item](#item) |   | Text | 
current_state | [Item](#item) |   | Item | [Life Cycle State](#life-cycle-state)
generation | [Item](#item) |   | Integer | 
id | [Item](#item) |   | Item | [Action](#action)
is_current | [Item](#item) |   | Boolean | 
is_released | [Item](#item) |   | Boolean | 
keyed_name | [Item](#item) |   | String | 
locked_by_id | [Item](#item) |   | Item | [User](#user)
major_rev | [Item](#item) |   | String | 
managed_by_id | [Item](#item) |   | Item | [Identity](#identity)
minor_rev | [Item](#item) |   | String | 
modified_by_id | [Item](#item) |   | Item | [User](#user)
modified_on | [Item](#item) |   | Date | 
new_version | [Item](#item) |   | Boolean | 
not_lockable | [Item](#item) |   | Boolean | 
owned_by_id | [Item](#item) |   | Item | [Identity](#identity)
permission_id | [Item](#item) |   | Item | [Permission](#permission)
state | [Item](#item) |   | String | 
team_id | [Item](#item) |   | Item | [Team](#team)


## Relationship Properties

These properties are shared by all SubClasses of Relationship.

Property | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
behavior | [Relationship](#relationship) |   | List | Item Behavior
related_id | [Relationship](#relationship) |   | Item | [ItemType](#itemtype)
sort_order | [Relationship](#relationship) |   | Integer | 
source_id | [Relationship](#relationship) |   | Item | [ItemType](#itemtype)


## General Properties

These properties are shared by the domain(s) listed in each row.

Property | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
identity_id | Preference |   | Item | [Identity](#identity)


