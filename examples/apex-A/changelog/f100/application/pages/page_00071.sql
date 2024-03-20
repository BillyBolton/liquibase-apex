--liquibase formatted sql
--changeset Liquibase Pro User:1-package runWith:sqlplus
prompt --application/pages/page_00071
begin
--   Manifest
--     PAGE: 00071
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
 p_id=>71
,p_name=>'Custom Navigation'
,p_alias=>'CUSTOM-NAVIGATION'
,p_step_title=>'Custom Navigation'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function formatYYYYMMDD( pDate ) {',
'    var date = pDate || new Date(),',
'        separator = "-";',
'',
'    return ( "0000" + date.getFullYear() ).substr( -4 ) + separator + ( "00" + ( date.getMonth() + 1 ) ).substr( -2 ) + separator + ( "00" + date.getDate() ).substr( -2 );',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20231002195415'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(789334604614817857)
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
 p_id=>wwv_flow_imp.id(3259346664308943022)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_imp.id(1704182883380062578)
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This calendar component has all navigation elements being disabled. Instead, Application Express buttons (<b>NEXT</b> and <b>PREV</b>) have been created to move to the next or previous pages. After entering a date (format <b>YYYY-MM-DD</b>) into t'
||'he <b>P71_GOTODATE</b> text field, the calendar component displays that date immediately.</p>',
'<p>Dynamic actions with <b>Execute JavaScript Code</b> action have been created on the buttons as well as on the text field. The <i>Application Express region interface</i> allows to access the calendar widget Javascript object, onto which <a href="h'
||'ttps://fullcalendar.io/docs/" target="_blank">FullCalendar</a> API methods are being executed as follows.</p>',
'<pre>',
'apex.region("<i>{Region Static ID}</i>").widget().data("fullCalendar").gotoDate("<i>YYYY-MM-DD</i>");',
'apex.region("<i>{Region Static ID}</i>").widget().data("fullCalendar").next();',
'apex.region("<i>{Region Static ID}</i>").widget().data("fullCalendar").prev();',
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
 p_id=>wwv_flow_imp.id(3259347796118943028)
,p_plug_name=>'Tasks'
,p_region_name=>'project_tasks'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(1704193397000062594)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   id,',
'   project,',
'   task_name,',
'   status,',
'   assigned_to,',
'   cost,',
'   start_date,',
'   end_date,',
'   case',
'      when status = ''Pending'' then ''apex-cal-blue''',
'      when status = ''Open'' then ''apex-cal-green''',
'      when status = ''Closed'' then ''apex-cal-gray''',
'      when status = ''On-Hold'' then ''apex-cal-orange''',
'   end as css_class',
'from eba_demo_cal_projects',
'where (nvl(:P71_PROJECTS,''0'') = ''0'' or project = :P71_PROJECTS)',
'order by end_date'))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_ajax_items_to_submit=>'P71_PROJECTS'
,p_attribute_01=>'START_DATE'
,p_attribute_02=>'END_DATE'
,p_attribute_03=>'TASK_NAME'
,p_attribute_04=>'ID'
,p_attribute_05=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP:P3_ID,P3_LASTVIEW:&ID.,&APP_PAGE_ID.'
,p_attribute_07=>'N'
,p_attribute_13=>'Y'
,p_attribute_14=>'CSS_CLASS'
,p_attribute_17=>'Y'
,p_attribute_18=>'00'
,p_attribute_19=>'Y'
,p_attribute_20=>'9'
,p_attribute_21=>'5'
,p_attribute_22=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3259349767540943112)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1704183079373062579)
,p_plug_display_sequence=>20
,p_translate_title=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(785493229651155286)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3259349767540943112)
,p_button_name=>'TODAY'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(1704216885098062672)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Today'
,p_button_position=>'NEXT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(775616044995508992)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3259349767540943112)
,p_button_name=>'NEXT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(1704216324726062670)
,p_button_image_alt=>'Next Calendar Page'
,p_button_position=>'NEXT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-angle-double-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(785489276113155246)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3259349767540943112)
,p_button_name=>'PREV'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(1704216324726062670)
,p_button_image_alt=>'Previous Calendar Page'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-angle-double-left'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(785486509481146022)
,p_name=>'P71_PROJECTS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3259349767540943112)
,p_item_default=>'0'
,p_prompt=>'Project'
,p_source=>'0'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DISTINCT PROJECTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select project || '' ('' || count(*) ||'' tasks from '' || to_char(min(start_date),''Mon RR'') ||'' to '' ||to_char(max(start_date), ''Mon RR'')||'')'' d, project r',
'from eba_demo_cal_projects',
'group by project',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All Projects -'
,p_lov_null_value=>'0'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(1704215424489062656)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(785489766328155251)
,p_name=>'P71_GOTODATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3259349767540943112)
,p_prompt=>'Goto date'
,p_format_mask=>'YYYY-MM-DD'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(1704215424489062656)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(785491294045155267)
,p_name=>'P71_VIEWTYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3259349767540943112)
,p_prompt=>'View Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Month;dayGridMonth,Week;timeGridWeek,Day;timeGridDay,List;list'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(1704215424489062656)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(785487689590146024)
,p_name=>'Change Project - Refresh Calendar'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P71_PROJECTS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(785488260337146024)
,p_event_id=>wwv_flow_imp.id(785487689590146024)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3259347796118943028)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(775616179473508993)
,p_name=>'Calendar: Next Month'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(775616044995508992)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(785489048228155244)
,p_event_id=>wwv_flow_imp.id(775616179473508993)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("project_tasks").widget().data("fullCalendar").next()'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(785489578834155249)
,p_name=>'Calendar: Prev Month'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(785489276113155246)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(785489655873155250)
,p_event_id=>wwv_flow_imp.id(785489578834155249)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("project_tasks").widget().data("fullCalendar").prev()'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(785489806039155252)
,p_name=>'Focus Date'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P71_GOTODATE'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v("P71_GOTODATE").match(/\d\d\d\d\-\d\d\-\d\d/) != null'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(785489890735155253)
,p_event_id=>wwv_flow_imp.id(785489806039155252)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("project_tasks").widget().data("fullCalendar").gotoDate($v("P71_GOTODATE"))'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(785490222864155256)
,p_event_id=>wwv_flow_imp.id(785489806039155252)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Please use YYYY-MM-DD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(785491428839155268)
,p_name=>'set View Type'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(785491569886155269)
,p_event_id=>wwv_flow_imp.id(785491428839155268)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P71_PROJECTS,P71_VIEWTYPE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'apex.region("project_tasks").widget().data("fullCalendar").view.type'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(785491613303155270)
,p_name=>'Change View'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P71_VIEWTYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(785491705846155271)
,p_event_id=>wwv_flow_imp.id(785491613303155270)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("project_tasks").widget().data("fullCalendar").changeView($v("P71_VIEWTYPE"))'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(785493378392155287)
,p_name=>'Set Goto Date to "today"'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(785493229651155286)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(785493425162155288)
,p_event_id=>wwv_flow_imp.id(785493378392155287)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P71_GOTODATE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'formatYYYYMMDD()'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
