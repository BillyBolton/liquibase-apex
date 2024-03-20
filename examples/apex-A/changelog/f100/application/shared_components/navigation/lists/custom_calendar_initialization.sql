--liquibase formatted sql
--changeset Liquibase Pro User:1-package runWith:sqlplus
prompt --application/shared_components/navigation/lists/custom_calendar_initialization
begin
--   Manifest
--     LIST: Custom Calendar Initialization
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
 p_id=>wwv_flow_imp.id(847163416176586677)
,p_name=>'Custom Calendar Initialization'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(847163613778586678)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Weekly schedule'
,p_list_item_link_target=>'f?p=&APP_ID.:111:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-o'
,p_list_text_01=>'This example customizes the weekly view to act as a conference schedule without day dates. Column headings are set to week names, a custom title is being used and nightly hours are removed from the calendar.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
