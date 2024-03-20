--liquibase formatted sql
--changeset Liquibase Pro User:1-package runWith:sqlplus
prompt --application/pages/page_00035
begin
--   Manifest
--     PAGE: 00035
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
 p_id=>35
,p_name=>'Weekly Calendar: Time format'
,p_alias=>'WEEKLY-CALENDAR-TIME-FORMAT'
,p_step_title=>'Weekly Calendar 12h/24h'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20231002195240'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(785493527143155289)
,p_plug_name=>'Sessions (12h)'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(1704193397000062594)
,p_plug_display_sequence=>40
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
'where status=''ACTIVE'' or :P35_SHOW_INACTIVE=''Y''',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_ajax_items_to_submit=>'P35_SHOW_INACTIVE'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P35_SHOW_TIME_FORMAT'
,p_plug_display_when_cond2=>'12'
,p_plugin_init_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( pOptions ) {',
'    pOptions.displayEventTime = true;',
'}',
''))
,p_attribute_01=>'START_DATE'
,p_attribute_02=>'END_DATE'
,p_attribute_03=>'TITLE'
,p_attribute_04=>'ID'
,p_attribute_07=>'N'
,p_attribute_11=>'week:day:list:navigation'
,p_attribute_13=>'Y'
,p_attribute_14=>'CSS_CLASS'
,p_attribute_17=>'Y'
,p_attribute_18=>'12'
,p_attribute_19=>'Y'
,p_attribute_20=>'9'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(785493655260155290)
,p_plug_name=>'Sessions (24h)'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(1704193397000062594)
,p_plug_display_sequence=>50
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
'where status=''ACTIVE'' or :P35_SHOW_INACTIVE=''Y''',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_ajax_items_to_submit=>'P35_SHOW_INACTIVE'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P35_SHOW_TIME_FORMAT'
,p_plug_display_when_cond2=>'24'
,p_plugin_init_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( pOptions ) {',
'    pOptions.displayEventTime = true;',
'}',
''))
,p_attribute_01=>'START_DATE'
,p_attribute_02=>'END_DATE'
,p_attribute_03=>'TITLE'
,p_attribute_04=>'ID'
,p_attribute_07=>'N'
,p_attribute_11=>'week:day:list:navigation'
,p_attribute_13=>'Y'
,p_attribute_14=>'CSS_CLASS'
,p_attribute_17=>'Y'
,p_attribute_18=>'24'
,p_attribute_19=>'Y'
,p_attribute_20=>'9'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(789334239262817853)
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
 p_id=>wwv_flow_imp.id(2331227771593903150)
,p_plug_name=>'Items Container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1704183079373062579)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4802791955851120011)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_imp.id(1704182883380062578)
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This is a standard Oracle APEX calendar region component showing a <b>weekly</b> view on events with a time component. This page allows you to choose the time format (12h, 24h) used to display the time component of an event timestamp.</p>',
'<p>Note the <b>Time Format</b> attribute of the calendar component can be set to <b>Default</b> which chooses the time format based on the current locale (e.g. 12h for the US, 24h for Germany), <b>12 hour</b>, or <b>24 hour</b>. Select the <b>12 hour'
||'</b> or <b>24 hour</b> options to force the chosen format (independent from the current locale''s time format).</p>'))
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
 p_id=>wwv_flow_imp.id(4802793087661120017)
,p_plug_name=>'Sessions (default)'
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
'where status=''ACTIVE'' or :P35_SHOW_INACTIVE=''Y''',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_ajax_items_to_submit=>'P35_SHOW_INACTIVE'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P35_SHOW_TIME_FORMAT'
,p_plug_display_when_cond2=>'default'
,p_plugin_init_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( pOptions ) {',
'    pOptions.displayEventTime = true;',
'}',
''))
,p_attribute_01=>'START_DATE'
,p_attribute_02=>'END_DATE'
,p_attribute_03=>'TITLE'
,p_attribute_04=>'ID'
,p_attribute_07=>'N'
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
 p_id=>wwv_flow_imp.id(785493693688155291)
,p_name=>'P35_SHOW_TIME_FORMAT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2331227771593903150)
,p_item_default=>'default'
,p_prompt=>'Time format'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Default (based on NLS);default,12 hour;12,24 hour;24'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(1704215954041062661)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'REDIRECT_SET_VALUE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(789304684910591624)
,p_name=>'P35_SHOW_INACTIVE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2331227771593903150)
,p_prompt=>'Show Inactive Sessions'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_imp.id(1704215954041062661)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(789306731079591660)
,p_name=>'Change Show Inactive Sessions'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P35_SHOW_INACTIVE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(789307261987591661)
,p_event_id=>wwv_flow_imp.id(789306731079591660)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4802793087661120017)
);
wwv_flow_imp.component_end;
end;
/
