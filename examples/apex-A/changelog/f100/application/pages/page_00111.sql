--liquibase formatted sql
--changeset Liquibase Pro User:1-package runWith:sqlplus
prompt --application/pages/page_00111
begin
--   Manifest
--     PAGE: 00111
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
 p_id=>111
,p_name=>'FullCalendar API initialization'
,p_alias=>'FULLCALENDAR-API-INITIALIZATION'
,p_step_title=>'FullCalendar API initialization'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20230425161228'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(800564186538666576)
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
 p_id=>wwv_flow_imp.id(4860661220747046136)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_imp.id(1704182883380062578)
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This is a standard Oracle APEX calendar region component showing a <b>weekly</b> view on events with a time component. In this example the region attribute <b>Plugin Initialization Javascript</b> is being used to override the standard FullCalendar'
||' initialization attributes with custom values. The javascript function, provided by the developer, must accept an Object containing the calendar initialization attributes, as parameter. In the javascript code, modify that object as needed and return.'
||' The function will be called by the calendar component automatically.</p>',
'<pre>',
'function ( pOptions) {',
'    pOptions.titleFormat            = function( pDate ) { return "Conference Schedule" };       // custom title',
'    pOptions.slotMinTime            = "07:00:00";                                               // hide slots before minTime',
'    pOptions.slotMaxTime            = "21:00:00";                                               // hide slots after maxTime',
'    pOptions.dayHeaderFormat        = { weekday: ''short'', month: ''numeric'', day: ''numeric'' };   // week view column headings',
'    pOptions.slotDuration           = "00:15:00";                                               // custom slot duration',
'    pOptions.weekNumbers            = true;                                                     // show week numbers',
'    pOptions.weekText               = "CW";                                                     // heading for week numbers',
'    pOptions.weekNumberCalculation  = "ISO";                                                    // use "ISO" week numbers',
'    pOptions.displayEventTime       = true;                                                     // show event time ...',
'    pOptions.displayEventEnd        = false;                                                    // ... but not the end time',
'    pOptions.disableKeyboardSupport = true;                                                     // disable builtin keyboard navigation',
'    pOptions.windowResize           = null;                                                     // suppress automatic switch to list view on small screens',
'    return pOptions;',
'}',
'</pre>',
''))
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
 p_id=>wwv_flow_imp.id(4860662352557046142)
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
'where status=''ACTIVE''',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plugin_init_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function ( pOptions) {',
'    pOptions.titleFormat            = function( pDate ) { return "Conference Schedule" };',
'    pOptions.slotMinTime            = "07:00:00";',
'    pOptions.slotMaxTime            = "21:00:00";',
'    pOptions.dayHeaderFormat        = { weekday: ''short'', month: ''numeric'', day: ''numeric'' };',
'    pOptions.slotDuration           = "00:15:00";',
'    pOptions.weekNumbers            = true;',
'    pOptions.weekText               = "CW";',
'    pOptions.weekNumberCalculation  = "ISO";',
'    pOptions.displayEventTime       = true;',
'    pOptions.displayEventEnd        = false;',
'    pOptions.disableKeyboardSupport = true;',
'    pOptions.windowResize           = null;',
'    return pOptions;',
'}',
''))
,p_attribute_01=>'START_DATE'
,p_attribute_02=>'END_DATE'
,p_attribute_03=>'TITLE'
,p_attribute_05=>'f?p=&APP_ID.:301:&SESSION.::&DEBUG.:RP:P301_ID:&ID.'
,p_attribute_11=>'week:list'
,p_attribute_13=>'Y'
,p_attribute_14=>'CSS_CLASS'
,p_attribute_17=>'Y'
,p_attribute_18=>'00'
,p_attribute_19=>'Y'
,p_attribute_20=>'9'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(847150839203449451)
,p_name=>'Dialog Closed: Refresh Calendar'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(4860662352557046142)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(847151348012449451)
,p_event_id=>wwv_flow_imp.id(847150839203449451)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4860662352557046142)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(847151739033449452)
,p_name=>'Change Show Inactive Sessions'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P111_SHOW_INACTIVE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(847152242922449452)
,p_event_id=>wwv_flow_imp.id(847151739033449452)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4860662352557046142)
);
wwv_flow_imp.component_end;
end;
/
