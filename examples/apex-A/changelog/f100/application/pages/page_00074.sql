--liquibase formatted sql
--changeset Liquibase Pro User:1-package runWith:sqlplus
prompt --application/pages/page_00074
begin
--   Manifest
--     PAGE: 00074
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
 p_id=>74
,p_name=>'Schedule Builder'
,p_alias=>'SCHEDULE-BUILDER'
,p_step_title=>'Schedule Builder'
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
,p_last_upd_yyyymmddhh24miss=>'20231002195458'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(789335726005817868)
,p_plug_name=>'My Sessions'
,p_region_name=>'my_session_calendar'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(1704193397000062594)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
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
'      when session_type = ''PERSONAL'' then ''apex-cal-red''',
'   end as css_class',
'from eba_demo_cal_mysessions',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plugin_init_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function ( pOptions) {',
'    pOptions.titleFormat            = function( pDate ) { return "My Schedule" };',
'    pOptions.slotMinTime            = "08:00:00";',
'    pOptions.slotMaxTime            = "18:00:00";',
'    pOptions.dayHeaderFormat        = { weekday: ''short'', month: ''numeric'', day: ''numeric'' };',
'    pOptions.slotDuration           = "00:15:00";',
'    return pOptions;',
'}',
''))
,p_attribute_01=>'START_DATE'
,p_attribute_02=>'END_DATE'
,p_attribute_03=>'TITLE'
,p_attribute_04=>'ID'
,p_attribute_07=>'N'
,p_attribute_11=>'week:list'
,p_attribute_13=>'Y'
,p_attribute_14=>'CSS_CLASS'
,p_attribute_16=>'&ABSTRACT.'
,p_attribute_17=>'N'
,p_attribute_18=>'24'
,p_attribute_19=>'Y'
,p_attribute_20=>'7'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(892256514563710179)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1704196012084062597)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8200481308686970588)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(1704216985366062674)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3111443220151889756)
,p_plug_name=>'Items Container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1704183079373062579)
,p_plug_display_sequence=>30
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5583007404409106617)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_imp.id(1704182883380062578)
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page demomstrates how to build a <i>schedule builder</i> using the Application Express Calendar Component. On the right side, you see a list of available sessions; on the left side is the personal schedule. Click an event on the right hand si'
||'de to copy to your schedule; clicking in the personal schedule deletes it. With the mouse and the text fields, additional events can be added to the personal schedule.</p>',
'<p>This example makes use of the <i>FullCalendar API</i> <b>EventObject / CalendarObject</b> and its methods <b>setProp</b>, <b>setDates</b> and <b>addEvent</b> (<a href="https://fullcalendar.io/docs/" target="_blank">FullCalendar Documentation</a>).'
||'</p>'))
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
 p_id=>wwv_flow_imp.id(5583008536219106623)
,p_plug_name=>'Sessions'
,p_region_name=>'session_calendar'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(1704193397000062594)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
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
'      when session_type = ''PERSONAL'' then ''apex-cal-red''',
'   end as css_class',
'from eba_demo_cal_sessions',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plugin_init_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function ( pOptions) {',
'    pOptions.titleFormat            = function( pDate ) { return "Conference Sessions" };',
'    pOptions.slotMinTime            = "08:00:00";',
'    pOptions.slotMaxTime            = "18:00:00";',
'    pOptions.dayHeaderFormat        = { weekday: ''short'', month: ''numeric'', day: ''numeric'' };',
'    pOptions.slotDuration           = "00:15:00";',
'    return pOptions;',
'}'))
,p_attribute_01=>'START_DATE'
,p_attribute_02=>'END_DATE'
,p_attribute_03=>'TITLE'
,p_attribute_04=>'ID'
,p_attribute_07=>'N'
,p_attribute_11=>'week'
,p_attribute_13=>'Y'
,p_attribute_14=>'CSS_CLASS'
,p_attribute_17=>'N'
,p_attribute_18=>'24'
,p_attribute_19=>'Y'
,p_attribute_20=>'7'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(793437796585013819)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3111443220151889756)
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
 p_id=>wwv_flow_imp.id(793438186957013821)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3111443220151889756)
,p_button_name=>'SAVE_IN_DATABASE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(1704216885098062672)
,p_button_image_alt=>'Save to Database'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(793485788237622445)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3111443220151889756)
,p_button_name=>'CLEAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(1704216885098062672)
,p_button_image_alt=>'Clear Schedule'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(789336032460817871)
,p_name=>'P74_MY_SESSION_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(789335726005817868)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(793438617513013821)
,p_name=>'P74_TITLE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3111443220151889756)
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
 p_id=>wwv_flow_imp.id(793439399257013829)
,p_name=>'P74_STARTDATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3111443220151889756)
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
 p_id=>wwv_flow_imp.id(793439856851013830)
,p_name=>'P74_ENDDATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3111443220151889756)
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
 p_id=>wwv_flow_imp.id(793445549906013877)
,p_name=>'Create Javascript Event'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(793437796585013819)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(793446083029013877)
,p_event_id=>wwv_flow_imp.id(793445549906013877)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var calendar = apex.region( "my_session_calendar" ).widget().data( "fullCalendar" );',
'var event = calendar.getEventById( "javascript-event-id" );',
'',
'if ( event ) {',
'    event.setProp( "title", $v( "P74_TITLE" ) );',
'    event.setDates( $v( "P74_STARTDATE" ), $v( "P74_ENDDATE" ), { allDay: false } );',
'} else {',
'    calendar.addEvent( {',
'        id: "javascript-event-id",',
'        description: ''this is a "client-only" event which is not stored in the database so far'',',
'        title: $v( "P74_TITLE" ),',
'        start: $v( "P74_STARTDATE" ),',
'        end: $v( "P74_ENDDATE" ),',
'        className: "apex-cal-red",',
'        backgroundColor: "rgba(255,0,0,0.75)",',
'        overlap: true,',
'        allDay: false',
'    } );',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(793440430157013862)
,p_name=>'Save Event to Database'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(793438186957013821)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(793440943558013866)
,p_event_id=>wwv_flow_imp.id(793440430157013862)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    insert into eba_demo_cal_mysessions (id, title, status, session_type, speaker, start_date, end_date)',
'    values (to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX''), :P74_TITLE, ''ACTIVE'', ''PERSONAL'', '''', to_date(:P74_STARTDATE, ''YYYY-MM-DD HH24:MI:SS''), to_date(:P74_ENDDATE, ''YYYY-MM-DD HH24:MI:SS''));',
'        ',
'end;',
'        '))
,p_attribute_02=>'P74_TITLE,P74_STARTDATE,P74_ENDDATE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(793441454551013871)
,p_event_id=>wwv_flow_imp.id(793440430157013862)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(789335726005817868)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(977933862114655148)
,p_event_id=>wwv_flow_imp.id(793440430157013862)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess("\u0022" + $v("P74_TITLE") + "\u0022 added.")'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(793441848651013871)
,p_name=>'Event Data Changed: Show in Calendar'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P74_TITLE,P74_STARTDATE,P74_ENDDATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(793442297899013874)
,p_event_id=>wwv_flow_imp.id(793441848651013871)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(793437796585013819)
,p_attribute_01=>'apex.event.trigger(this.affectedElements, "click");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(789335856651817869)
,p_name=>'Event selected: Copy to "My Sessions"'
,p_event_sequence=>70
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(5583008536219106623)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_CSS_CALENDAR|REGION TYPE|apexcalendareventselect'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(789336294774817874)
,p_event_id=>wwv_flow_imp.id(789335856651817869)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P74_MY_SESSION_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data.event.id'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(789335916267817870)
,p_event_id=>wwv_flow_imp.id(789335856651817869)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  insert into eba_demo_cal_mysessions (select * from eba_demo_cal_sessions where id = :P74_MY_SESSION_ID);',
'exception',
'  when dup_val_on_index then null;',
'end;    '))
,p_attribute_02=>'P74_MY_SESSION_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(789336258554817873)
,p_event_id=>wwv_flow_imp.id(789335856651817869)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(789335726005817868)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(789336445000817875)
,p_event_id=>wwv_flow_imp.id(789335856651817869)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess("\u0022" + this.data.event.title + "\u0022 added.")'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(789336562805817876)
,p_name=>'Delete Selected Event'
,p_event_sequence=>80
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(789335726005817868)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'this.data && this.data.event.id != ''javascript-event-id''',
''))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_CSS_CALENDAR|REGION TYPE|apexcalendareventselect'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(789336767971817878)
,p_event_id=>wwv_flow_imp.id(789336562805817876)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P74_MY_SESSION_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data.event.id'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(789336788493817879)
,p_event_id=>wwv_flow_imp.id(789336562805817876)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  delete from  eba_demo_cal_mysessions where id = :P74_MY_SESSION_ID;',
'end;    '))
,p_attribute_02=>'P74_MY_SESSION_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(789336925693817880)
,p_event_id=>wwv_flow_imp.id(789336562805817876)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(789335726005817868)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(789337026777817881)
,p_event_id=>wwv_flow_imp.id(789336562805817876)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess("\u0022" + this.data.event.title + "\u0022 removed.")'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(789337176370817882)
,p_name=>'Date Range Selected'
,p_event_sequence=>90
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(789335726005817868)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_CSS_CALENDAR|REGION TYPE|apexcalendardateselect'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(789337243912817883)
,p_event_id=>wwv_flow_imp.id(789337176370817882)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P74_STARTDATE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'formatYYYYMMDDhhmmss( this.data.dates.newStartDate )'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(789337310193817884)
,p_event_id=>wwv_flow_imp.id(789337176370817882)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P74_ENDDATE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'formatYYYYMMDDhhmmss( this.data.dates.newEndDate )'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(789337450868817885)
,p_event_id=>wwv_flow_imp.id(789337176370817882)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(793437796585013819)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#P74_STARTDATE,#P74_ENDDATE")',
'         .animate({"background-color": "#FFEC8B"}, 300)',
'         .animate({"background-color": "white"},300)',
'    ;',
'',
'apex.event.trigger(this.affectedElements, "click");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(789338140645817892)
,p_name=>'Search Changed - Refresh'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P74_SEARCH'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(789338214244817893)
,p_event_id=>wwv_flow_imp.id(789338140645817892)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5583008536219106623)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(793485958991622446)
,p_name=>'Clear Schedule'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(793485788237622445)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(793486077110622447)
,p_event_id=>wwv_flow_imp.id(793485958991622446)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Clear your schedule: Really?'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(793486117911622448)
,p_event_id=>wwv_flow_imp.id(793485958991622446)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'delete from eba_demo_cal_mysessions;'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(793486204613622449)
,p_event_id=>wwv_flow_imp.id(793485958991622446)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(789335726005817868)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(793486345726622450)
,p_event_id=>wwv_flow_imp.id(793485958991622446)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess("Schedule cleared.")'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(793486648270622453)
,p_name=>'Change topic'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P74_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(793486698817622454)
,p_event_id=>wwv_flow_imp.id(793486648270622453)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5583008536219106623)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2099131334444305048)
,p_name=>'Sync "Conf Session" Scroll with "My Session" Scroll'
,p_event_sequence=>130
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#my_session_calendar .fc-scroller'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'scroll'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2099131431895305049)
,p_event_id=>wwv_flow_imp.id(2099131334444305048)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#session_calendar .fc-scroller").scrollTop($("#my_session_calendar .fc-scroller").scrollTop());'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(616222799982895706)
,p_name=>'Set Calendar AspectRatio'
,p_event_sequence=>140
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(616222912057895707)
,p_event_id=>wwv_flow_imp.id(616222799982895706)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region("session_calendar").widget().data("fullCalendar").setOption("aspectRatio", 1.3);',
'apex.region("my_session_calendar").widget().data("fullCalendar").setOption("aspectRatio", 1.3);'))
);
wwv_flow_imp.component_end;
end;
/
