--liquibase formatted sql
--changeset Liquibase Pro User:1-package runWith:sqlplus
prompt --application/shared_components/navigation/listentry
begin
--   Manifest
--     LIST ENTRY: 
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.0'
,p_default_workspace_id=>5828575066947664
,p_default_application_id=>100
,p_default_id_offset=>7043616593336102
,p_default_owner=>'INTERNALA'
);
null;
wwv_flow_imp.component_end;
end;
/
