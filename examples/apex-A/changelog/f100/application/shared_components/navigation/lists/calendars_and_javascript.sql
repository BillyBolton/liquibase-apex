--liquibase formatted sql
--changeset Liquibase Pro User:1-package runWith:sqlplus
prompt --application/shared_components/navigation/lists/calendars_and_javascript
begin
--   Manifest
--     LIST: Calendars and Javascript
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
 p_id=>wwv_flow_imp.id(789382491449334863)
,p_name=>'Calendars and Javascript'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(789382698368334864)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Custom Navigation'
,p_list_item_link_target=>'f?p=&APP_ID.:71:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-user'
,p_list_text_01=>'Use APEX components like buttons or page items to navigate within your Calendar.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(789383138501334865)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Query Calendar Status'
,p_list_item_link_target=>'f?p=&APP_ID.:72:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-search'
,p_list_text_01=>'This page shows how to get the current calendar status with the FullCalendar JavaScript API.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(789383508795334865)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Calendar Client Events'
,p_list_item_link_target=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-plus-o'
,p_list_text_01=>'Add "client-only" events" to your calendar view with JavaScript. Edit them and when ready, save to the database.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(793481120203563802)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Schedule Builder'
,p_list_item_link_target=>'f?p=&APP_ID.:74:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-apex'
,p_list_text_01=>'Explore how to create a <i>Schedule Builder</i> with Application Express'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
