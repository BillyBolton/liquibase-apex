--liquibase formatted sql
--changeset Liquibase Pro User:1-package runWith:sqlplus
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
--   Manifest
--     MENU:  Breadcrumb
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.0'
,p_default_workspace_id=>5828575066947664
,p_default_application_id=>100
,p_default_id_offset=>7043616593336102
,p_default_owner=>'INTERNALA'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(8200481308686970588)
,p_name=>' Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(616219884867893647)
,p_parent_id=>wwv_flow_imp.id(789376482047256788)
,p_short_name=>'Faceted Search: Projects'
,p_link=>'f?p=&APP_ID.:36:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>36
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(789354978023006190)
,p_parent_id=>wwv_flow_imp.id(789376482047256788)
,p_short_name=>'Monthly Calendar: Projects'
,p_link=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:::'
,p_page_id=>31
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(789355214597018035)
,p_parent_id=>wwv_flow_imp.id(789376482047256788)
,p_short_name=>'Weekly Calendar: Conference'
,p_link=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:::'
,p_page_id=>32
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(789355415935020078)
,p_parent_id=>wwv_flow_imp.id(789376482047256788)
,p_short_name=>'Weekly Calendar: Edit Sessions'
,p_link=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:::'
,p_page_id=>33
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(789355622675021782)
,p_parent_id=>wwv_flow_imp.id(789376482047256788)
,p_short_name=>'Weekly Calendar: Drag & Drop'
,p_link=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.:::'
,p_page_id=>34
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(789355801179022947)
,p_parent_id=>wwv_flow_imp.id(789376482047256788)
,p_short_name=>'Weekly Calendar: Time Format'
,p_link=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:::'
,p_page_id=>35
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(789356053024026800)
,p_parent_id=>wwv_flow_imp.id(789381530125319916)
,p_short_name=>'Calendar and Report'
,p_link=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:::'
,p_page_id=>51
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(789356223171028562)
,p_parent_id=>wwv_flow_imp.id(789381530125319916)
,p_short_name=>'Create Calendar Events'
,p_link=>'f?p=&APP_ID.:52:&SESSION.::&DEBUG.:::'
,p_page_id=>52
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(789356449108030727)
,p_parent_id=>wwv_flow_imp.id(789381530125319916)
,p_short_name=>'Delete Events By Click'
,p_link=>'f?p=&APP_ID.:53:&SESSION.::&DEBUG.:::'
,p_page_id=>53
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(789356647244033050)
,p_parent_id=>wwv_flow_imp.id(789387671145370517)
,p_short_name=>'Custom Navigation'
,p_link=>'f?p=&APP_ID.:71:&SESSION.::&DEBUG.:::'
,p_page_id=>71
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(789356802421035250)
,p_parent_id=>wwv_flow_imp.id(789387671145370517)
,p_short_name=>'Query Calendar Status'
,p_link=>'f?p=&APP_ID.:72:&SESSION.::&DEBUG.:::'
,p_page_id=>72
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(789357068157036372)
,p_parent_id=>wwv_flow_imp.id(789387671145370517)
,p_short_name=>'Calendar Client Events'
,p_link=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.:::'
,p_page_id=>73
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(789357196560038710)
,p_parent_id=>wwv_flow_imp.id(789391695281402594)
,p_short_name=>'Custom CSS Classes'
,p_link=>'f?p=&APP_ID.:91:&SESSION.::&DEBUG.:::'
,p_page_id=>91
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(789357436203040386)
,p_parent_id=>wwv_flow_imp.id(789391695281402594)
,p_short_name=>'Custom Event Icons'
,p_link=>'f?p=&APP_ID.:92:&SESSION.::&DEBUG.:::'
,p_page_id=>92
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(789376482047256788)
,p_short_name=>'Standard Calendars'
,p_link=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:::'
,p_page_id=>30
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(789381530125319916)
,p_short_name=>'Dynamic Action Examples'
,p_link=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:::'
,p_page_id=>50
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(789387671145370517)
,p_short_name=>'Calendars and Javascript'
,p_link=>'f?p=&APP_ID.:70:&SESSION.::&DEBUG.:::'
,p_page_id=>70
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(789391695281402594)
,p_short_name=>'Calendar Styling'
,p_link=>'f?p=&APP_ID.:90:&SESSION.::&DEBUG.:::'
,p_page_id=>90
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(789412790749637836)
,p_parent_id=>wwv_flow_imp.id(789381530125319916)
,p_short_name=>'Copy Events By Click'
,p_link=>'f?p=&APP_ID.:54:&SESSION.::&DEBUG.:::'
,p_page_id=>54
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(824566560799966604)
,p_parent_id=>wwv_flow_imp.id(789381530125319916)
,p_short_name=>'Custom Drag and Drop Handlers'
,p_link=>'f?p=&APP_ID.:112:&SESSION.::&DEBUG.:::'
,p_page_id=>112
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(847166049086608172)
,p_short_name=>'Custom Calendar Initialization'
,p_link=>'f?p=&APP_ID.:110:&SESSION.::&DEBUG.:::'
,p_page_id=>110
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(847166282231611437)
,p_parent_id=>wwv_flow_imp.id(847166049086608172)
,p_short_name=>'Custom weekly schedule'
,p_link=>'f?p=&APP_ID.:111:&SESSION.::&DEBUG.:::'
,p_page_id=>111
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(892256887383710189)
,p_parent_id=>wwv_flow_imp.id(789387671145370517)
,p_short_name=>'Schedule Builder'
,p_link=>'f?p=&FLOW_ID.:74:&SESSION.'
,p_page_id=>74
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1310283892927691705)
,p_short_name=>'Mini Calendar'
,p_link=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:::'
,p_page_id=>13
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1310284566090691709)
,p_parent_id=>wwv_flow_imp.id(1310283892927691705)
,p_short_name=>'&P14_PROJECT.'
,p_link=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:::'
,p_page_id=>14
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1869125722291448865)
,p_parent_id=>wwv_flow_imp.id(1869607205231933114)
,p_short_name=>'Application Theme Style'
,p_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::'
,p_page_id=>8
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1869607205231933114)
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:15:&SESSION.'
,p_page_id=>15
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2577430093499934500)
,p_short_name=>'Calendar Entry'
,p_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_page_id=>3
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2577838770032018041)
,p_short_name=>'Time Line'
,p_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2590561772587856841)
,p_parent_id=>wwv_flow_imp.id(1869607205231933114)
,p_short_name=>'Manage Sample Data'
,p_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_page_id=>6
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2592173474281076761)
,p_parent_id=>wwv_flow_imp.id(2590561772587856841)
,p_short_name=>'Report'
,p_link=>'f?p=&APP_ID.:7:&SESSION.'
,p_page_id=>7
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2657897867214493781)
,p_short_name=>'Project Due Dates'
,p_link=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:::'
,p_page_id=>9
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2657898196890493782)
,p_parent_id=>wwv_flow_imp.id(2657897867214493781)
,p_short_name=>'Project Detail'
,p_link=>'f?p=&FLOW_ID.:10:&SESSION.'
,p_page_id=>10
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3247350684426004405)
,p_short_name=>'Help'
,p_link=>'f?p=&FLOW_ID.:12:&SESSION.'
,p_page_id=>12
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8200481720534970591)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp.component_end;
end;
/
