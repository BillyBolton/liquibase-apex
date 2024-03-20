--liquibase formatted sql
--changeset Liquibase Pro User:1-package runWith:sqlplus
prompt --application/pages/page_00112
begin
--   Manifest
--     PAGE: 00112
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
 p_id=>112
,p_name=>'Custom Drag & Drop Handlers'
,p_alias=>'CUSTOM-DRAG-DROP-HANDLERS'
,p_step_title=>'Custom Drag & Drop Handlers'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20231002195535'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(819402661716151135)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1704196012084062597)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8200481308686970588)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(1704216985366062674)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5742172018033687014)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_imp.id(1704182883380062578)
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This is a standard Oracle APEX calendar region component showing a <b>weekly</b> view on events with a time component. Using drag and drop, calendar events can be moved within the displayed week. In this example, dynamic actions are being executed'
||' to display messages based on drag and drop events. These advanced calendar events are not exposed in the builder, but can be accessed as a custom event type. When creating a dynamic action, choose <b>Custom</b> as the event type, <b>Region</b> as <b'
||'>Selection Type</b> the the calendar region as <b>Region</b>.</p>',
'<ul>',
'<li>The <b>apexcalendardragdropstart</b> event is being fired when the user starts dragging an event. The event data is being passed as the <b>data</b> attribute.</li>',
'<li>The <b>apexcalendardragdropfinish</b> event is being fired after the drag and drop PL/SQL code has been successfully executed on the server.</li>',
'<li>The <b>apexcalendardragdroperror</b> event is being fired when an error occurs on the server. The <b>data</b> attribute contains the server''s error message.</li>',
'</ul>'))
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
 p_id=>wwv_flow_imp.id(5742173149843687020)
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
'    pOptions.slotMaxTime            = "18:00:00";',
'    pOptions.dayHeaderFormat        = { weekday: ''short'', month: ''numeric'', day: ''numeric'' };',
'    pOptions.slotDuration           = "00:15:00";',
'    pOptions.weekNumbers            = true;',
'    pOptions.weekText               = "CW";',
'    pOptions.weekNumberCalculation  = "ISO";',
'    pOptions.eventStartEditable     = true;',
'    pOptions.disableKeyboardSupport = true;',
'    return pOptions;',
'}'))
,p_attribute_01=>'START_DATE'
,p_attribute_02=>'END_DATE'
,p_attribute_03=>'TITLE'
,p_attribute_04=>'ID'
,p_attribute_07=>'Y'
,p_attribute_08=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_title eba_demo_cal_sessions.title%type;',
'  l_start varchar2(30);',
'begin',
'    update eba_demo_cal_sessions',
'       set start_date = to_date(:APEX$NEW_START_DATE, ''YYYYMMDDHH24MISS''),',
'           end_date = to_date(:APEX$NEW_END_DATE, ''YYYYMMDDHH24MISS'')',
'     where id = :APEX$PK_VALUE',
'     returning title, ltrim(to_char(start_date, ''Dy, HH24:MI'')) ',
'     into l_title, l_start;',
'     :P112_DRAGDROP_MSG := ''"'' || l_title || ''": now at '' || l_start ||''.'';',
'end;'))
,p_attribute_11=>'week:list:navigation'
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
 p_id=>wwv_flow_imp.id(945713171623470190)
,p_name=>'P112_DRAGDROP_MSG'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5742173149843687020)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(945712726140470186)
,p_name=>'Begin Drag & Drop '
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(5742173149843687020)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'apexcalendardragdropstart'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(945712882476470187)
,p_event_id=>wwv_flow_imp.id(945712726140470186)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.showPageSuccess("moving \"" + this.data.title + "\" ...");',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(945712900079470188)
,p_name=>'Finish Drag & Drop'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(5742173149843687020)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'apexcalendardragdropfinish'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(945712999479470189)
,p_event_id=>wwv_flow_imp.id(945712900079470188)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P112_DRAGDROP_MSG'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'v( ''P112_DRAGDROP_MSG'' ) '
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(977933511352655145)
,p_event_id=>wwv_flow_imp.id(945712900079470188)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess( $v( "P112_DRAGDROP_MSG") );'
);
wwv_flow_imp.component_end;
end;
/
