--liquibase formatted sql
--changeset Liquibase Pro User:1-package runWith:sqlplus
prompt --application/shared_components/navigation/tabs/parent
begin
--   Manifest
--     TOP LEVEL TABS: 100
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.0'
,p_default_workspace_id=>5828575066947664
,p_default_application_id=>100
,p_default_id_offset=>7043616593336102
,p_default_owner=>'INTERNALA'
);
wwv_flow_imp_shared.create_toplevel_tab(
 p_id=>wwv_flow_imp.id(3172526365163055981)
,p_tab_set=>'TS1'
,p_tab_sequence=>10
,p_tab_name=>'T_ADMINISTRATION'
,p_tab_text=>'TS1'
,p_tab_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_current_on_tabset=>'TS1'
);
wwv_flow_imp.component_end;
end;
/
