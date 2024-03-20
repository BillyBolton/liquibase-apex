--liquibase formatted sql
--changeset Liquibase Pro User:1-package runWith:sqlplus
prompt --application/shared_components/user_interface/lovs/session_types
begin
--   Manifest
--     SESSION_TYPES
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.0'
,p_default_workspace_id=>5828575066947664
,p_default_application_id=>100
,p_default_id_offset=>7043616593336102
,p_default_owner=>'INTERNALA'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(785409589963790451)
,p_lov_name=>'SESSION_TYPES'
,p_lov_query=>'.'||wwv_flow_imp.id(785409589963790451)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(785409953474790451)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Business'
,p_lov_return_value=>'BUSINESS'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(785410292839790453)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Technical'
,p_lov_return_value=>'TECHNICAL'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(785410705180790453)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'General Session'
,p_lov_return_value=>'GENERAL'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(785411164034790453)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Break'
,p_lov_return_value=>'BREAK'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(785411546282790454)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Hands On Session'
,p_lov_return_value=>'Hands On'
);
wwv_flow_imp.component_end;
end;
/
