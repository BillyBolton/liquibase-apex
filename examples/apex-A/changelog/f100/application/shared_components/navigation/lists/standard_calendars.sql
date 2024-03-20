--liquibase formatted sql
--changeset Liquibase Pro User:1-package runWith:sqlplus
prompt --application/shared_components/navigation/lists/standard_calendars
begin
--   Manifest
--     LIST: Standard Calendars
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.0'
,p_default_workspace_id=>5828575066947664
,p_default_application_id=>100
,p_default_id_offset=>7043616593336102
,p_default_owner=>'INTERNALA'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(789372113725224032)
,p_name=>'Standard Calendars'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(789372345888224033)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Monthly Calendar: Projects'
,p_list_item_link_target=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar'
,p_list_text_01=>'This is a standard Oracle APEX calendar region component built using the create calendar region wizard.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(789372765639224034)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Weekly Calendar: Conference'
,p_list_item_link_target=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar'
,p_list_text_01=>'This is a standard Oracle APEX calendar region component showing a weekly view on events with a time component. '
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(789373093656224034)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Weekly Calendar: Edit Sessions'
,p_list_item_link_target=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-edit'
,p_list_text_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This weekly calendar allows to edit existing events by clicking them or to select a date range in the Calendar to create a new event.',
''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(789373580730224034)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Weekly Calendar: Drag & Drop'
,p_list_item_link_target=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-mouse-pointer'
,p_list_text_01=>'Change the start and end timestamps for calendar events with drag and drop.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(789373929693224035)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Weekly Calendar: Time Format'
,p_list_item_link_target=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-clock'
,p_list_text_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This page allows to choose the time format (12h, 24h) which is being used to display the time component of an event timestamp.',
''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(627435667902889783)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Faceted Search: Projects'
,p_list_item_link_target=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-search'
,p_list_text_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This page allows to choose the time format (12h, 24h) which is being used to display the time component of an event timestamp.',
''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
