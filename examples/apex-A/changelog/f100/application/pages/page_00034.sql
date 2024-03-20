--liquibase formatted sql
--changeset Liquibase Pro User:1-package runWith:sqlplus
prompt --application/pages/page_00034
begin
--   Manifest
--     PAGE: 00034
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.0'
,p_default_workspace_id=>5828575066947664
,p_default_application_id=>100
,p_default_id_offset=>7043616593336102
,p_default_owner=>'INTERNALA'
);
wwv_flow_imp_page.create_page(
 p_id=>34
,p_name=>'Weekly Calendar: Drag & Drop'
,p_alias=>'WEEKLY-CALENDAR-DRAG-DROP'
,p_step_title=>'Weekly Calendar: Drag & Drop'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20231002195227'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(789334094867817852)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1704196012084062597)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8200481308686970588)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(1704216985366062674)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1551479185723327035)
,p_plug_name=>'Items Container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1704183079373062579)
,p_plug_display_sequence=>20
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4023043369980543896)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_imp.id(1704182883380062578)
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This is a standard Oracle APEX calendar region component showing a <b>weekly</b> view on events with a time component. This region component is well-suited for displaying conference or similar type schedules. On this page, you can change the start'
||' and end timestamps for the individual sessions by dragging them around.</p>',
'<p>Calendar drag and drop can be enabled using the component attribute <b>Drag and Drop</b>. Your SQL query <i>must</i> select a primary key column and you must have set the <b>Primary Key Column</b> calendar attribute. Then enter the PL/SQL code to '
||'update the event row in the database in the <b>Drag and Drop PL/SQL Code</b> attribute. That PL/SQL code typically performs a SQL update on the database table - the bind variables <b>:APEX$PK_VALUE.</b>, <b>:APEX$NEW_START_DATE</b> and <b>:APEX$NEW_E'
||'ND_DATE</b> contain the dragged events primary key value as well as the new start and new end timestamp.</p>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4023044501790543902)
,p_plug_name=>'Sessions'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(1704193397000062594)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   case when speaker is not null then ',
'       title || '' ('' || speaker || '')'' ',
'       else title',
'   end as title,',
'   speaker,',
'   start_date,',
'   end_date,',
'   case',
'      when status       = ''INACTIVE'' then  ''apex-cal-gray''',
'      when session_type = ''BREAK''    then  ''apex-cal-silver''',
'      when session_type = ''BUSINESS'' then  ''apex-cal-orange''',
'      when session_type = ''GENERAL''  then  ''apex-cal-blue''',
'      when session_type = ''TECHNICAL'' then ''apex-cal-green''',
'      when session_type = ''HANDS_ON'' then ''apex-cal-lime''',
'   end as css_class',
'from eba_demo_cal_sessions',
'where status=''ACTIVE'' or :P34_SHOW_INACTIVE=''Y''',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_ajax_items_to_submit=>'P34_SHOW_INACTIVE'
,p_attribute_01=>'START_DATE'
,p_attribute_02=>'END_DATE'
,p_attribute_03=>'TITLE'
,p_attribute_04=>'ID'
,p_attribute_06=>'f?p=&APP_ID.:301:&SESSION.::&DEBUG.:RP,301:P301_START_DATE,P301_END_DATE:&APEX$NEW_START_DATE.,&APEX$NEW_END_DATE.'
,p_attribute_07=>'Y'
,p_attribute_08=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    update eba_demo_cal_sessions',
'       set start_date = to_date(:APEX$NEW_START_DATE, ''YYYYMMDDHH24MISS''),',
'           end_date = to_date(:APEX$NEW_END_DATE, ''YYYYMMDDHH24MISS'')',
'     where id = :APEX$PK_VALUE;',
'end;'))
,p_attribute_11=>'week:day:list:navigation'
,p_attribute_13=>'Y'
,p_attribute_14=>'CSS_CLASS'
,p_attribute_17=>'Y'
,p_attribute_18=>'00'
,p_attribute_19=>'Y'
,p_attribute_20=>'9'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(785421464174833539)
,p_name=>'P34_SHOW_INACTIVE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1551479185723327035)
,p_prompt=>'Show Inactive Sessions'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_imp.id(1704215954041062661)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(785422673139833541)
,p_name=>'Dialog Closed: Refresh Calendar'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(4023044501790543902)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(785423156047833542)
,p_event_id=>wwv_flow_imp.id(785422673139833541)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4023044501790543902)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(785423513192833543)
,p_name=>'Change Show Inactive Sessions'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_SHOW_INACTIVE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(785424082002833543)
,p_event_id=>wwv_flow_imp.id(785423513192833543)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4023044501790543902)
);
wwv_flow_imp.component_end;
end;
/
