<!-- Auto-generated by action -->

# com.aras.innovator.ssvc Assessment

This file does not define any part of the current base vocabulary/ontology. Not every 'class' or 'property' in this file will become part of the base ontology. It was generated to take an inventory of Aras ItemTypes and their properties.

[Go To Classes](#classes) | [Go To Item/System Properties](#itemsystem-properties) | [Go To Relationship Properties](#relationship-properties) | [Go To General Properties](#general-properties)

# Classes

## Board

*SubClass of [Item](#item).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
item_config_id | Board |   | String | 
item_keyed_name | Board |   | String | 
item_type_name | Board |   | String | 

### Relationships

Relationship Class Name | Related Class
------ | ------
[SecureMessage](#securemessage) | [](#)
[StoredSecureMessage](#storedsecuremessage) | [](#)


## DiscussionDefinition

*SubClass of [Item](#item).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
default_visibility_identity | DiscussionDefinition |   | Item | [Identity](#identity)
file_selection_depth | DiscussionDefinition |   | Integer | 
item_config_id | DiscussionDefinition |   | String | 
item_selection_depth | DiscussionDefinition |   | Integer | 
item_type_name | DiscussionDefinition |   | String | 
template_id | DiscussionDefinition |   | String | 

### Relationships

Relationship Class Name | Related Class
------ | ------
[DiscussionDefinitionView](#discussiondefinitionview) | [SSVCPresentationConfiguration](#ssvcpresentationconfiguration)
[Feed](#feed) | [](#)


## Forum

*SubClass of [Item](#item).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
description | Forum |   | String | 
forum_type | Forum |   | List | ForumTypeList
label | Forum |   | Ml_string | 
name | Forum |   | String | 

### Relationships

Relationship Class Name | Related Class
------ | ------
[ForumItem](#forumitem) | [](#)
[ForumMessageGroup](#forummessagegroup) | [](#)
[ForumMustViewBy](#forummustviewby) | [](#)
[ForumSearch](#forumsearch) | [SavedSearch](#savedsearch)
[ForumSharedWith](#forumsharedwith) | [](#)
[ForumWantViewBy](#forumwantviewby) | [](#)


## HistorySecureMessage

*SubClass of [Item](#item).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
comments | HistorySecureMessage |   | Text | 
disabled_by_id | HistorySecureMessage |   | Item | [User](#user)
disabled_on | HistorySecureMessage |   | Date | 
highlighted_text | HistorySecureMessage |   | Text | 
item_config_id | HistorySecureMessage |   | String | 
item_id | HistorySecureMessage |   | String | 
item_keyed_name | HistorySecureMessage |   | String | 
item_major_rev | HistorySecureMessage |   | String | 
item_state | HistorySecureMessage |   | String | 
item_type_name | HistorySecureMessage |   | String | 
item_version | HistorySecureMessage |   | Integer | 
reply_to_id | HistorySecureMessage |   | String | 
sm_data | HistorySecureMessage |   | Text | 
thread_id | HistorySecureMessage |   | String | 


## SecureMessageViewTemplate

*SubClass of [Item](#item).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
sketch_tooltip_template | SecureMessageViewTemplate |   | Ml_string | 
style | SecureMessageViewTemplate |   | Text | 
template | SecureMessageViewTemplate |   | Text | 
thumbnail_tooltip_template | SecureMessageViewTemplate |   | Ml_string | 


## SSVC Notification Message

*SubClass of [Item](#item).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
acknowledge | SSVC Notification Message |   | List | AcknowledgeType
message_id | SSVC Notification Message |   | String | 
priority | SSVC Notification Message |   | List | PriorityList_0..9
target | SSVC Notification Message |   | Item | [Identity](#identity)
type | SSVC Notification Message |   | List | MessageType


## SSVCEmailDigestEntry

*SubClass of [Item](#item).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
item_config_id | SSVCEmailDigestEntry |   | String | 
item_id | SSVCEmailDigestEntry |   | String | 
item_keyed_name | SSVCEmailDigestEntry |   | String | 
item_major_rev | SSVCEmailDigestEntry |   | String | 
item_state | SSVCEmailDigestEntry |   | String | 
item_type_id | SSVCEmailDigestEntry |   | String | 
item_version | SSVCEmailDigestEntry |   | Integer | 
message_classification | SSVCEmailDigestEntry |   | String | 
message_comments | SSVCEmailDigestEntry |   | Text | 
message_created_by_id | SSVCEmailDigestEntry |   | Item | [User](#user)
message_created_on | SSVCEmailDigestEntry |   | Date | 
message_created_on_tick | SSVCEmailDigestEntry |   | Decimal | 
message_id | SSVCEmailDigestEntry |   | Item | [SecureMessage](#securemessage)
message_is_reply | SSVCEmailDigestEntry |   | Boolean | 
notification_user_id | SSVCEmailDigestEntry |   | Item | [User](#user)


## SSVCPresentationConfiguration

*SubClass of [Item](#item).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
discussion_panel_behavior | SSVCPresentationConfiguration |   | List | SSVCDiscPanelBehaviorList
form_tooltip_template | SSVCPresentationConfiguration |   | Ml_string | 
name | SSVCPresentationConfiguration |   | String | 
sm_template | SSVCPresentationConfiguration |   | Item | [SecureMessageViewTemplate](#securemessageviewtemplate)


## SSVCItems

*SubClass of [Item](#item).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
itemtype | SSVCItems |   | List | SSVCItems


## Discussion

*SubClass of [Item](#item) and [Relationship](#relationship).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
related_id | Discussion |   | Item | [User](#user)
source_id | Discussion |   | Item | [](#)
source_type | Discussion |   | Item | [ItemType](#itemtype)


## SecureMessageAudio

*SubClass of [Item](#item) and [Relationship](#relationship).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
media_file | SecureMessageAudio |   | Item | [File](#file)
related_id | SecureMessageAudio |   | Item | [](#)
source_id | SecureMessageAudio |   | Item | [](#)
source_type | SecureMessageAudio |   | Item | [ItemType](#itemtype)


## SecureMessageFlaggedBy

*SubClass of [Item](#item) and [Relationship](#relationship).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
flagged_by_id | SecureMessageFlaggedBy |   | Item | [User](#user)
related_id | SecureMessageFlaggedBy |   | Item | [](#)
source_id | SecureMessageFlaggedBy |   | Item | [](#)
source_type | SecureMessageFlaggedBy |   | Item | [ItemType](#itemtype)


## SecureMessageMarkup

*SubClass of [Item](#item) and [Relationship](#relationship).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
file_id | SecureMessageMarkup |   | String | 
file_selector_id | SecureMessageMarkup |   | String | 
file_selector_type_id | SecureMessageMarkup |   | String | 
markup_data | SecureMessageMarkup |   | Text | 
markup_holder_config_id | SecureMessageMarkup |   | String | 
markup_holder_id | SecureMessageMarkup |   | String | 
markup_holder_major_rev | SecureMessageMarkup |   | String | 
markup_holder_state | SecureMessageMarkup |   | String | 
markup_holder_type_id | SecureMessageMarkup |   | String | 
markup_holder_version | SecureMessageMarkup |   | Integer | 
related_id | SecureMessageMarkup |   | Item | [](#)
snapshot | SecureMessageMarkup |   | Image | 
source_id | SecureMessageMarkup |   | Item | [](#)
source_type | SecureMessageMarkup |   | Item | [ItemType](#itemtype)
thumbnail | SecureMessageMarkup |   | Image | 


## SecureMessageVideo

*SubClass of [Item](#item) and [Relationship](#relationship).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
media_file | SecureMessageVideo |   | Item | [File](#file)
related_id | SecureMessageVideo |   | Item | [](#)
source_id | SecureMessageVideo |   | Item | [](#)
source_type | SecureMessageVideo |   | Item | [ItemType](#itemtype)


## SecureMessageVisibilityFilter

*SubClass of [Item](#item) and [Relationship](#relationship).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
is_creator | SecureMessageVisibilityFilter |   | Boolean | 
related_id | SecureMessageVisibilityFilter |   | Item | [Identity](#identity)
source_id | SecureMessageVisibilityFilter |   | Item | [](#)
source_type | SecureMessageVisibilityFilter |   | Item | [ItemType](#itemtype)


## DiscussionDefinitionView

*SubClass of [Item](#item) and [Relationship](#relationship).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
client | DiscussionDefinitionView |   | List | View Client
related_id | DiscussionDefinitionView |   | Item | [SSVCPresentationConfiguration](#ssvcpresentationconfiguration)
source_id | DiscussionDefinitionView |   | Item | [DiscussionDefinition](#discussiondefinition)


## DiscussionTemplate

*SubClass of [Item](#item) and [Relationship](#relationship).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
class_path | DiscussionTemplate |   | String | 
default_visibility_identity | DiscussionTemplate |   | Item | [Identity](#identity)
file_selection_depth | DiscussionTemplate |   | Integer | 
item_selection_depth | DiscussionTemplate |   | Integer | 
related_id | DiscussionTemplate |   | Item | [](#)
source_id | DiscussionTemplate |   | Item | [ItemType](#itemtype)
visibility_supported | DiscussionTemplate |   | Boolean | 

### Relationships

Relationship Class Name | Related Class
------ | ------
[DiscussionTemplateView](#discussiontemplateview) | [SSVCPresentationConfiguration](#ssvcpresentationconfiguration)
[FeedTemplate](#feedtemplate) | [](#)


## Feed

*SubClass of [Item](#item) and [Relationship](#relationship).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
feed_type | Feed |   | List | FeedTypeList
history_events | Feed |   | String | 
polysource_type_name | Feed |   | String | 
reference | Feed |   | Text | 
related_id | Feed |   | Item | [](#)
source_id | Feed |   | Item | [DiscussionDefinition](#discussiondefinition)

### Relationships

Relationship Class Name | Related Class
------ | ------
[FileSelector](#fileselector) | [](#)


## ForumItem

*SubClass of [Item](#item) and [Relationship](#relationship).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
is_board_only | ForumItem |   | Boolean | 
item_config_id | ForumItem |   | String | 
item_keyed_name | ForumItem |   | Federated | 
item_type | ForumItem |   | String | 
related_id | ForumItem |   | Item | [](#)
source_id | ForumItem |   | Item | [Forum](#forum)


## ForumMessageGroup

*SubClass of [Item](#item) and [Relationship](#relationship).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
aml | ForumMessageGroup |   | Text | 
group_type | ForumMessageGroup |   | List | MGTypeList
label | ForumMessageGroup |   | Ml_string | 
related_id | ForumMessageGroup |   | Item | [](#)
source_id | ForumMessageGroup |   | Item | [Forum](#forum)
user_criteria_id | ForumMessageGroup |   | String | 


## ForumMustViewBy

*SubClass of [Item](#item) and [Relationship](#relationship).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
must_view_id | ForumMustViewBy |   | Item | [Identity](#identity)
related_id | ForumMustViewBy |   | Item | [](#)
source_id | ForumMustViewBy |   | Item | [Forum](#forum)


## ForumSearch

*SubClass of [Item](#item) and [Relationship](#relationship).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
description | ForumSearch |   | String | 
is_board_only | ForumSearch |   | Boolean | 
related_id | ForumSearch |   | Item | [SavedSearch](#savedsearch)
source_id | ForumSearch |   | Item | [Forum](#forum)


## ForumSharedWith

*SubClass of [Item](#item) and [Relationship](#relationship).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
related_id | ForumSharedWith |   | Item | [](#)
shared_with_id | ForumSharedWith |   | Item | [Identity](#identity)
source_id | ForumSharedWith |   | Item | [Forum](#forum)


## ForumWantViewBy

*SubClass of [Item](#item) and [Relationship](#relationship).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
related_id | ForumWantViewBy |   | Item | [](#)
source_id | ForumWantViewBy |   | Item | [Forum](#forum)
want_view_id | ForumWantViewBy |   | Item | [Identity](#identity)


## SecureMessage

*SubClass of [Item](#item) and [Relationship](#relationship).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
comments | SecureMessage |   | Text | 
created_on_tick | SecureMessage |   | Decimal | 
disabled_by_id | SecureMessage |   | Item | [User](#user)
disabled_on | SecureMessage |   | Date | 
highlighted_text | SecureMessage |   | Text | 
item_config_id | SecureMessage |   | String | 
item_id | SecureMessage |   | String | 
item_keyed_name | SecureMessage |   | String | 
item_major_rev | SecureMessage |   | String | 
item_state | SecureMessage |   | String | 
item_type_id | SecureMessage |   | String | 
item_type_name | SecureMessage |   | String | 
item_version | SecureMessage |   | Integer | 
related_id | SecureMessage |   | Item | [](#)
reply_to_id | SecureMessage |   | String | 
sm_data | SecureMessage |   | Text | 
source_id | SecureMessage |   | Item | [Board](#board)
thread_id | SecureMessage |   | String | 


## SSVC_Preferences

*SubClass of [Item](#item) and [Relationship](#relationship).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
default_bookmark | SSVC_Preferences |   | String | 
default_flagged_by_number | SSVC_Preferences |   | Integer | 
default_replies_number | SSVC_Preferences |   | Integer | 
desc_digest_notifications | SSVC_Preferences |   | Ml_string | 
desc_single_notifications | SSVC_Preferences |   | Ml_string | 
enable_email_digest_notification | SSVC_Preferences |   | Boolean | 
enable_immediate_notifications | SSVC_Preferences |   | Boolean | 
enable_in_app_notifications | SSVC_Preferences |   | Boolean | 
last_scheduled_digest_time_date | SSVC_Preferences |   | Date | 
messages_max_lines | SSVC_Preferences |   | Integer | 
prefix_for_highlight_text_markup | SSVC_Preferences |   | String | 
related_id | SSVC_Preferences |   | Item | [](#)
source_id | SSVC_Preferences |   | Item | [Preference](#preference)
subject_digest_notifications | SSVC_Preferences |   | Ml_string | 
subject_single_notifications | SSVC_Preferences |   | Ml_string | 
time_digest_interval | SSVC_Preferences |   | Integer | 
use_standard_toolbar_for_viewers | SSVC_Preferences |   | Boolean | 


## StoredSecureMessage

*SubClass of [Item](#item) and [Relationship](#relationship).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
comments | StoredSecureMessage |   | Text | 
created_on_tick | StoredSecureMessage |   | Decimal | 
disabled_by_id | StoredSecureMessage |   | Item | [User](#user)
disabled_on | StoredSecureMessage |   | Date | 
highlighted_text | StoredSecureMessage |   | Text | 
item_config_id | StoredSecureMessage |   | String | 
item_id | StoredSecureMessage |   | String | 
item_keyed_name | StoredSecureMessage |   | String | 
item_major_rev | StoredSecureMessage |   | String | 
item_state | StoredSecureMessage |   | String | 
item_type_id | StoredSecureMessage |   | String | 
item_type_name | StoredSecureMessage |   | String | 
item_version | StoredSecureMessage |   | Integer | 
related_id | StoredSecureMessage |   | Item | [](#)
reply_to_id | StoredSecureMessage |   | String | 
sm_data | StoredSecureMessage |   | Text | 
source_id | StoredSecureMessage |   | Item | [Board](#board)
thread_id | StoredSecureMessage |   | String | 


## DiscussionTemplateView

*SubClass of [Item](#item) and [Relationship](#relationship).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
client | DiscussionTemplateView |   | List | View Client
related_id | DiscussionTemplateView |   | Item | [SSVCPresentationConfiguration](#ssvcpresentationconfiguration)
source_id | DiscussionTemplateView |   | Item | [DiscussionTemplate](#discussiontemplate)


## FeedTemplate

*SubClass of [Item](#item) and [Relationship](#relationship).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
feed_type | FeedTemplate |   | List | FeedTypeList
history_events | FeedTemplate |   | String | 
polysource_type_name | FeedTemplate |   | String | 
reference | FeedTemplate |   | Text | 
related_id | FeedTemplate |   | Item | [](#)
source_id | FeedTemplate |   | Item | [DiscussionTemplate](#discussiontemplate)

### Relationships

Relationship Class Name | Related Class
------ | ------
[FileSelectorTemplate](#fileselectortemplate) | [](#)


## FileSelector

*SubClass of [Item](#item) and [Relationship](#relationship).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
filter | FileSelector |   | Text | 
reference | FileSelector |   | Text | 
related_id | FileSelector |   | Item | [](#)
source_id | FileSelector |   | Item | [Feed](#feed)
tooltip_template | FileSelector |   | Ml_string | 


## FileSelectorTemplate

*SubClass of [Item](#item) and [Relationship](#relationship).*

### Properties

Label | Domain | Range | Aras Data Type | Aras Data Source
------ | ------ | ------ | ------ | ------
filter | FileSelectorTemplate |   | Text | 
reference | FileSelectorTemplate |   | Text | 
related_id | FileSelectorTemplate |   | Item | [](#)
source_id | FileSelectorTemplate |   | Item | [FeedTemplate](#feedtemplate)
tooltip_template | FileSelectorTemplate |   | Ml_string | 


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
acknowledge | SSVC Notification Message |   | List | AcknowledgeType
comments | HistorySecureMessage |   | Text | 
default_visibility_identity | DiscussionDefinition |   | Item | [Identity](#identity)
description | Forum |   | String | 
disabled_by_id | HistorySecureMessage |   | Item | [User](#user)
disabled_on | HistorySecureMessage |   | Date | 
discussion_panel_behavior | SSVCPresentationConfiguration |   | List | SSVCDiscPanelBehaviorList
file_selection_depth | DiscussionDefinition |   | Integer | 
form_tooltip_template | SSVCPresentationConfiguration |   | Ml_string | 
forum_type | Forum |   | List | ForumTypeList
highlighted_text | HistorySecureMessage |   | Text | 
item_config_id | SSVCEmailDigestEntry<br/>Board<br/>DiscussionDefinition<br/>HistorySecureMessage |   | String | 
item_id | HistorySecureMessage<br/>SSVCEmailDigestEntry |   | String | 
item_keyed_name | HistorySecureMessage<br/>SSVCEmailDigestEntry<br/>Board |   | String | 
item_major_rev | HistorySecureMessage<br/>SSVCEmailDigestEntry |   | String | 
item_selection_depth | DiscussionDefinition |   | Integer | 
item_state | SSVCEmailDigestEntry<br/>HistorySecureMessage |   | String | 
item_type_id | SSVCEmailDigestEntry |   | String | 
item_type_name | HistorySecureMessage<br/>Board<br/>DiscussionDefinition |   | String | 
item_version | HistorySecureMessage<br/>SSVCEmailDigestEntry |   | Integer | 
itemtype | SSVCItems |   | List | SSVCItems
label | Forum |   | Ml_string | 
message_classification | SSVCEmailDigestEntry |   | String | 
message_comments | SSVCEmailDigestEntry |   | Text | 
message_created_by_id | SSVCEmailDigestEntry |   | Item | [User](#user)
message_created_on | SSVCEmailDigestEntry |   | Date | 
message_created_on_tick | SSVCEmailDigestEntry |   | Decimal | 
message_id | SSVC Notification Message<br/>SSVCEmailDigestEntry |   | String<br/>Item | <br/>[SecureMessage](#securemessage)
message_is_reply | SSVCEmailDigestEntry |   | Boolean | 
name | Forum<br/>SSVCPresentationConfiguration |   | String | 
notification_user_id | SSVCEmailDigestEntry |   | Item | [User](#user)
priority | SSVC Notification Message |   | List | PriorityList_0..9
reply_to_id | HistorySecureMessage |   | String | 
sketch_tooltip_template | SecureMessageViewTemplate |   | Ml_string | 
sm_data | HistorySecureMessage |   | Text | 
sm_template | SSVCPresentationConfiguration |   | Item | [SecureMessageViewTemplate](#securemessageviewtemplate)
style | SecureMessageViewTemplate |   | Text | 
target | SSVC Notification Message |   | Item | [Identity](#identity)
template | SecureMessageViewTemplate |   | Text | 
template_id | DiscussionDefinition |   | String | 
thread_id | HistorySecureMessage |   | String | 
thumbnail_tooltip_template | SecureMessageViewTemplate |   | Ml_string | 
type | SSVC Notification Message |   | List | MessageType


