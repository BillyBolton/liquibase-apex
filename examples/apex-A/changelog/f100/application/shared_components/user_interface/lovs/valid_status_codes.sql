--liquibase formatted sql
--changeset Liquibase Pro User:1-package runWith:sqlplus
prompt --application/shared_components/user_interface/lovs/valid_status_codes
begin
--   Manifest
--     VALID STATUS CODES
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
 p_id=>wwv_flow_imp.id(2658302477581556764)
,p_lov_name=>'VALID STATUS CODES'
,p_lov_query=>'.'||wwv_flow_imp.id(2658302477581556764)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2658302685326556767)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Closed'
,p_lov_return_value=>'Closed'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2658302870037556775)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'On-Hold'
,p_lov_return_value=>'On-Hold'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2658303065600556775)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'Open'
,p_lov_return_value=>'Open'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2658303275304556775)
,p_lov_disp_sequence=>40
,p_lov_disp_value=>'Pending'
,p_lov_return_value=>'Pending'
);
wwv_flow_imp.component_end;
end;
/
