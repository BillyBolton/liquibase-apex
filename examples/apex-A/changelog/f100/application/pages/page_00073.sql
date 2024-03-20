--liquibase formatted sql
--changeset Liquibase Pro User:1-package runWith:sqlplus
prompt --application/pages/page_00073
begin
--   Manifest
--     PAGE: 00073
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
 p_id=>73
,p_name=>'Calendar Client Events'
,p_alias=>'CALENDAR-CLIENT-EVENTS'
,p_step_title=>'Calendar Client Events'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function formatYYYYMMDDhhmmss( pDate ) {',
'    var date = pDate || new Date();',
'',
'    return (',
'        ( "0000" + date.getFullYear() ).substr( -4 ) +',
'        "-" +',
'        ( "00" + ( date.getMonth() + 1 ) ).substr( -2 ) +',
'        "-" +',
'        ( "00" + date.getDate() ).substr( -2 ) +',
'        " " +',
'        ( "00" + date.getHours() ).substr( -2 ) +',
'        ":" +',
'        ( "00" + date.getMinutes() ).substr( -2 ) +',
'        ":" +',
'        ( "00" + date.getSeconds() ).substr( -2 )',
'    );',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20231002195444'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(789334880939817859)
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
 p_id=>wwv_flow_imp.id(2327561846154891471)
,p_plug_name=>'Items Container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1704183079373062579)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4799126030412108332)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_imp.id(1704182883380062578)
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page shows, how additional, <i>client-only</i> events can be placed onto the calendar view. Fill out the text fields and click the <b>Show in Calendar</b> button. You''ll then see your input displayed as a "red" event. That event is only visib'
||'le in your browser and not saved to the database so far. You can also select a date range with the mouse, after finishing, the text fields will be updated and the "red" event will appear. Click the <b>Save to Database</b> button to make the event per'
||'sistent.</p>',
'<p>This example uses the <i>FullCalendar API</i>''s <b>EventObject / CalendarObject</b> and its methods <b>setProp</b>, <b>setDates</b> and <b>addEvent</b> (<a href="https://fullcalendar.io/docs/" target="_blank">FullCalendar Documentation</a>). For e'
||'xample:',
'<pre>',
'var calendar = apex.region( "week_calendar" ).widget().data( "fullCalendar" );',
'',
'calendar.addEvent( {',
'    id:     "javascript-event-id",',
'    title:  "a client-only event",',
'    start:  "2016-05-03T14:00:00",',
'    end:    "2016-05-03T16:00:00",',
'    allDay: false',
'} );',
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
 p_id=>wwv_flow_imp.id(4799127162222108338)
,p_plug_name=>'Sessions'
,p_region_name=>'week_calendar'
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
,p_attribute_01=>'START_DATE'
,p_attribute_02=>'END_DATE'
,p_attribute_03=>'TITLE'
,p_attribute_05=>'f?p=&APP_ID.:301:&SESSION.::&DEBUG.:RP:P301_ID:&ID.'
,p_attribute_11=>'week'
,p_attribute_13=>'Y'
,p_attribute_14=>'CSS_CLASS'
,p_attribute_17=>'Y'
,p_attribute_18=>'00'
,p_attribute_19=>'Y'
,p_attribute_20=>'9'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(785492098659155275)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2327561846154891471)
,p_button_name=>'SHOW_IN_CALENDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(1704216885098062672)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Show in Calendar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(785492674032155280)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2327561846154891471)
,p_button_name=>'SAVE_IN_DATABASE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(1704216885098062672)
,p_button_image_alt=>'Save to Database'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(785492044488155274)
,p_name=>'P73_TITLE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2327561846154891471)
,p_item_default=>'My Session'
,p_prompt=>'Title'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(1704215954041062661)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(785492547713155279)
,p_name=>'P73_SESSION_TYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2327561846154891471)
,p_prompt=>'Session Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SESSION_TYPES'
,p_lov=>'.'||wwv_flow_imp.id(785409589963790451)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(1704215954041062661)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(785614263378511657)
,p_name=>'P73_STARTDATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2327561846154891471)
,p_item_default=>'to_char(sysdate, ''YYYY-MM-DD'')||'' 09:00:00'''
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'From'
,p_format_mask=>'YYYY-MM-DD HH24:MI:SS'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(1704215954041062661)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(785614652233511657)
,p_name=>'P73_ENDDATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2327561846154891471)
,p_item_default=>'to_char(sysdate, ''YYYY-MM-DD'')||'' 11:00:00'''
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'To'
,p_format_mask=>'YYYY-MM-DD HH24:MI:SS'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(1704215954041062661)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(785617602603511661)
,p_name=>'Date Range Selected: Create new Event'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(4799127162222108338)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_CSS_CALENDAR|REGION TYPE|apexcalendardateselect'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(785618091001511661)
,p_event_id=>wwv_flow_imp.id(785617602603511661)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_STARTDATE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'formatYYYYMMDDhhmmss( this.data.dates.newStartDate )'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(785618665808511662)
,p_event_id=>wwv_flow_imp.id(785617602603511661)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P73_ENDDATE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'formatYYYYMMDDhhmmss( this.data.dates.newEndDate )'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(785492476822155278)
,p_event_id=>wwv_flow_imp.id(785617602603511661)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(785492098659155275)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#P73_STARTDATE,#P73_ENDDATE")',
'         .animate({"background-color": "#FFEC8B"}, 300)',
'         .animate({"background-color": "white"},300)',
'    ;',
'',
'apex.event.trigger(this.affectedElements, "click");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(785492263910155276)
,p_name=>'Create Javascript Event'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(785492098659155275)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(785492369117155277)
,p_event_id=>wwv_flow_imp.id(785492263910155276)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var calendar = apex.region( "week_calendar" ).widget().data( "fullCalendar" );',
'var event = calendar.getEventById( "javascript-event-id" );',
'',
'if ( event ) {',
'',
'    event.setProp( "title", $v( "P73_TITLE" ) );',
'    event.setDates( $v( "P73_STARTDATE" ), $v( "P73_ENDDATE" ), { allDay: false } );',
'',
'} else {',
'',
'    calendar.addEvent( {',
'        id: "javascript-event-id",',
'        description: ''this is a "client-only" event which is not stored in the database so far'',',
'        title: $v( "P73_TITLE" ),',
'        start: $v( "P73_STARTDATE" ),',
'        end: $v( "P73_ENDDATE" ),',
'        className: "apex-cal-red",',
'        backgroundColor: "rgba(255,0,0,0.75)",',
'        overlap: true,',
'        allDay: false',
'    } );',
'    ',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(785492702011155281)
,p_name=>'Save Event to Database'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(785492674032155280)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(785492842790155282)
,p_event_id=>wwv_flow_imp.id(785492702011155281)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    insert into eba_demo_cal_sessions (title, speaker, session_type, status, start_date, end_date)',
'    values (:P73_TITLE, ''TBD'', :P73_SESSION_TYPE, ''ACTIVE'', to_date(:P73_STARTDATE, ''YYYY-MM-DD HH24:MI:SS''), to_date(:P73_ENDDATE, ''YYYY-MM-DD HH24:MI:SS''));',
'        ',
'end;',
'        '))
,p_attribute_02=>'P73_TITLE,P73_SESSION_TYPE,P73_STARTDATE,P73_ENDDATE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(785492959364155283)
,p_event_id=>wwv_flow_imp.id(785492702011155281)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4799127162222108338)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(785492992250155284)
,p_name=>'Event Data Changed: Show in Calendar'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P73_TITLE,P73_STARTDATE,P73_ENDDATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(785493145075155285)
,p_event_id=>wwv_flow_imp.id(785492992250155284)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(785492098659155275)
,p_attribute_01=>'apex.event.trigger(this.affectedElements, "click");'
);
wwv_flow_imp.component_end;
end;
/
