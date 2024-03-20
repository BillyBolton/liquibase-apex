--liquibase formatted sql
--changeset Liquibase Pro User:1-package runWith:sqlplus
prompt --application/pages/page_00091
begin
--   Manifest
--     PAGE: 00091
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
 p_id=>91
,p_name=>'Week Calendar: Conference'
,p_alias=>'WEEK-CALENDAR-CONFERENCE2'
,p_step_title=>'Week Calendar: Conference'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.fc-event .fc-content div.fc-time { display: none;}',
'',
'.fc-event.my-cal-blue {',
'    background-color: lightblue;',
'    border: 0.5pt solid black;',
'    opacity: 0.7;',
'}',
'',
'.fc-event.my-cal-blue .fc-event-title {',
'    color: darkblue;',
'    font-weight: bold;',
'}',
'',
'.fc-event.my-cal-orange {',
'    background-color: orange;',
'    border: 0.5pt solid black;',
'    opacity: 0.7;',
'}',
'',
'.fc-event.my-cal-orange .fc-title {',
'    color: darkred;',
'    font-weight: bold;',
'}',
'',
'.fc-event.my-cal-dark-orange {',
'    background-color: #8B5A00;',
'    border: 0.5pt solid black;',
'    opacity: 0.7;',
'}',
'',
'.fc-event.my-cal-dark-orange .fc-title {',
'    color: white;',
'    font-weight: bold;',
'}',
'',
'.fc-event.my-cal-white {',
'    background-color: white;',
'    border: 0.5pt solid black;',
'    opacity: 0.7;',
'}',
'',
'.fc-event.my-cal-white .fc-title {',
'    color: black;',
'    font-weight: bold;',
'}',
'',
'.fc-event.my-cal-green {',
'    background-color: lightgreen;',
'    border: 0.5pt solid black;',
'    opacity: 0.7;',
'}',
'',
'.fc-event.my-cal-green .fc-title {',
'    color: darkgreen;',
'    font-weight: bold;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
,p_last_upd_yyyymmddhh24miss=>'20230110134707'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(789334900808817860)
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
 p_id=>wwv_flow_imp.id(3250067888273280533)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_imp.id(1704182883380062578)
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page shows custom styling of calendar events using own CSS classes. Define your CSS classes (e.g. in the page attribute <b>CSS - Inline</b>) and use them as the <b>CSS_CLASS</b> column in your SQL query. An example CSS class definition (setti'
||'ng a light-blue background with black border and a dark-blue, bold font) looks as follows.</p>',
'<pre>',
'.fc-event.my-cal-blue {',
'    background-color: lightblue;',
'    border: 0.5pt solid black;',
'    opacity: 0.7;',
'}',
'',
'.fc-event.my-cal-blue .fc-event-title {',
'    color: darkblue;',
'    font-weight: bold;',
'}',
'</pre>'))
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
 p_id=>wwv_flow_imp.id(3250069020083280539)
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
'      when session_type = ''BREAK''    then ''my-cal-green''',
'      when session_type = ''BUSINESS'' then ''my-cal-blue''',
'      when session_type = ''GENERAL''  then ''my-cal-white''',
'      when session_type = ''TECHNICAL'' then ''my-cal-orange''',
'      when session_type = ''HANDS_ON'' then ''my-cal-dark-orange''',
'   end as css_class',
'from eba_demo_cal_sessions',
'where status=''ACTIVE''',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plugin_init_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function ( pOptions) {',
'    pOptions.slotMinTime      = "07:00:00";                               // hide slots before minTime',
'    pOptions.slotMaxTime      = "18:00:00";                               // hide slots after maxTime',
'    pOptions.slotDuration     = "00:15:00";                               // custom slot duration',
'    return pOptions;',
'}',
''))
,p_attribute_01=>'START_DATE'
,p_attribute_02=>'END_DATE'
,p_attribute_03=>'TITLE'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(785585657079205354)
,p_name=>'Change Project - Refresh Calendar'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P91_PROJECTS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(785586156433205360)
,p_event_id=>wwv_flow_imp.id(785585657079205354)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3250069020083280539)
);
wwv_flow_imp.component_end;
end;
/
