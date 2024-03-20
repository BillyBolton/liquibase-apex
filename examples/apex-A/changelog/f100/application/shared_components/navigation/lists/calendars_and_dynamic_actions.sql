--liquibase formatted sql
--changeset Liquibase Pro User:1-package runWith:sqlplus
prompt --application/shared_components/navigation/lists/calendars_and_dynamic_actions
begin
--   Manifest
--     LIST: Calendars and Dynamic Actions
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
 p_id=>wwv_flow_imp.id(789377327591276859)
,p_name=>'Calendars and Dynamic Actions'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(789377535968276860)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Calendar with Report'
,p_list_item_link_target=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'This page contains a classic report region which is always in sync with the Calendar view, i.e. shows only data which is also visible on the calendar.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(789377939825276860)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Create Calendar Events'
,p_list_item_link_target=>'f?p=&APP_ID.:52:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-plus-o'
,p_list_text_01=>'Select a date range in the calendar and have a new event being created in the database immediately.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(789378313572276860)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Delete Events By Click'
,p_list_item_link_target=>'f?p=&APP_ID.:53:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-times-o'
,p_list_text_01=>'Delete a calendar event in the database by simply clicking it in the Calendar.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(789413156602645660)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Copy Events by Click'
,p_list_item_link_target=>'f?p=&APP_ID.:54:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-files-o'
,p_list_text_01=>'This page shows, how existing calendar events can be copied with a simple mouse click.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(977943610549738315)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Custom Drag and Drop Handlers'
,p_list_item_link_target=>'f?p=&APP_ID.:112:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-pointer'
,p_list_text_01=>'Explore how to capture drag and drop events with dynamic actions.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
