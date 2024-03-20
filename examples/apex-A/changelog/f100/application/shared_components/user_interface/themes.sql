--liquibase formatted sql
--changeset Liquibase Pro User:1-package runWith:sqlplus
prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 100
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.0'
,p_default_workspace_id=>5828575066947664
,p_default_application_id=>100
,p_default_id_offset=>7043616593336102
,p_default_owner=>'INTERNALA'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(1704217583730062695)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(1704177952166062542)
,p_default_dialog_template=>wwv_flow_imp.id(1704170401755062525)
,p_error_template=>wwv_flow_imp.id(1704162975469062512)
,p_printer_friendly_template=>wwv_flow_imp.id(1704177952166062542)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(1704162975469062512)
,p_default_button_template=>wwv_flow_imp.id(1704216885098062672)
,p_default_region_template=>wwv_flow_imp.id(1704193397000062594)
,p_default_chart_template=>wwv_flow_imp.id(1704193397000062594)
,p_default_form_template=>wwv_flow_imp.id(1704193397000062594)
,p_default_reportr_template=>wwv_flow_imp.id(1704193397000062594)
,p_default_tabform_template=>wwv_flow_imp.id(1704193397000062594)
,p_default_wizard_template=>wwv_flow_imp.id(1704193397000062594)
,p_default_menur_template=>wwv_flow_imp.id(1704196012084062597)
,p_default_listr_template=>wwv_flow_imp.id(1704193397000062594)
,p_default_irr_template=>wwv_flow_imp.id(1704191962619062589)
,p_default_report_template=>wwv_flow_imp.id(1704203178942062618)
,p_default_label_template=>wwv_flow_imp.id(1704215857838062660)
,p_default_menu_template=>wwv_flow_imp.id(1704216985366062674)
,p_default_calendar_template=>wwv_flow_imp.id(1704217064353062678)
,p_default_list_template=>wwv_flow_imp.id(1704210626382062640)
,p_default_nav_list_template=>wwv_flow_imp.id(1704213690591062647)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(1704213690591062647)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(1704214495880062651)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(1704183079373062579)
,p_default_dialogr_template=>wwv_flow_imp.id(1704182883380062578)
,p_default_option_label=>wwv_flow_imp.id(1704215857838062660)
,p_default_header_template=>wwv_flow_imp.id(1704182883380062578)
,p_default_footer_template=>wwv_flow_imp.id(1704182883380062578)
,p_default_required_label=>wwv_flow_imp.id(1704215995047062662)
,p_default_navbar_list_template=>wwv_flow_imp.id(1704214366315062650)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/23.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/
