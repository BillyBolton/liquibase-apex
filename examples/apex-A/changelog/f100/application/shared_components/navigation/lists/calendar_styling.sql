--liquibase formatted sql
--changeset Liquibase Pro User:1-package runWith:sqlplus
prompt --application/shared_components/navigation/lists/calendar_styling
begin
--   Manifest
--     LIST: Calendar Styling
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
 p_id=>wwv_flow_imp.id(789388131680380061)
,p_name=>'Calendar Styling'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(789388373907380061)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Custom CSS Classes'
,p_list_item_link_target=>'f?p=&APP_ID.:91:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-paint-brush'
,p_list_text_01=>'This page shows custom styling of calendar events using your own CSS classes.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(789388700385380062)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Custom Event Icons'
,p_list_item_link_target=>'f?p=&APP_ID.:92:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-square-o'
,p_list_text_01=>'Add custom icons to your calendar events. '
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
