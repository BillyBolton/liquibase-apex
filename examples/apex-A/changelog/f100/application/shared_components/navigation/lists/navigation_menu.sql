--liquibase formatted sql
--changeset Liquibase Pro User:1-package runWith:sqlplus
prompt --application/shared_components/navigation/lists/navigation_menu
begin
--   Manifest
--     LIST: Navigation Menu
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.0'
,p_default_workspace_id=>5828575066947664
,p_default_application_id=>100
,p_default_id_offset=>7043616593336102
,p_default_owner=>'INTERNALA'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(1704260522706183788)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(785414017562813895)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Standard Calendars'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(785483790828095058)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Monthly Calendar: Projects'
,p_list_item_link_target=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(785414017562813895)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(776101251516362276)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Weekly Calendar: Conference'
,p_list_item_link_target=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(785414017562813895)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'32'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(782693769911650594)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Weekly Calendar: Edit Sessions'
,p_list_item_link_target=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(785414017562813895)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'33'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(785420173422833535)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Weekly Calendar: Drag & Drop'
,p_list_item_link_target=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_imp.id(785414017562813895)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'34'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(789303480990591577)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Weekly Calendar: Time Format'
,p_list_item_link_target=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(785414017562813895)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'35'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(616217820388893599)
,p_list_item_display_sequence=>310
,p_list_item_link_text=>'Faceted Search: Projects'
,p_list_item_link_target=>'f?p=&APP_ID.:36:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(785414017562813895)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'36'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(785426021979875933)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Calendar and Dynamic Actions'
,p_list_item_link_target=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-check-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(785431733447888005)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Calendar and Report'
,p_list_item_link_target=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_imp.id(785426021979875933)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'51'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(785445106993901752)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'Create Calendar Events'
,p_list_item_link_target=>'f?p=&APP_ID.:52:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_imp.id(785426021979875933)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'52'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(785460378209981230)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Delete Events By Click'
,p_list_item_link_target=>'f?p=&APP_ID.:53:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_imp.id(785426021979875933)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'53'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(789405358576600345)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'Copy Events By Click'
,p_list_item_link_target=>'f?p=&APP_ID.:54:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_imp.id(785426021979875933)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'54'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(891065590669656338)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>'Custom Drag & Drop Handlers'
,p_list_item_link_target=>'f?p=&APP_ID.:112:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(785426021979875933)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'112'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(785484383268121369)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Calendar and Javascript'
,p_list_item_link_target=>'f?p=&APP_ID.:70:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-code'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(785485187364146020)
,p_list_item_display_sequence=>190
,p_list_item_link_text=>'Custom Navigation'
,p_list_item_link_target=>'f?p=&APP_ID.:71:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_imp.id(785484383268121369)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'71'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(785511699479338123)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>'Query Calendar Status'
,p_list_item_link_target=>'f?p=&APP_ID.:72:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_imp.id(785484383268121369)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'72'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(785612564565511647)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>'Calendar Client Events'
,p_list_item_link_target=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(785484383268121369)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'73'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(793436268390013781)
,p_list_item_display_sequence=>220
,p_list_item_link_text=>'Schedule Builder'
,p_list_item_link_target=>'f?p=&APP_ID.:74:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(785484383268121369)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'74'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(847161301389573333)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Custom Calendar Initialization'
,p_list_item_link_target=>'f?p=&APP_ID.:110:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user-wrench'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(847147737173449445)
,p_list_item_display_sequence=>300
,p_list_item_link_text=>'Weekly schedule'
,p_list_item_link_target=>'f?p=&APP_ID.:111:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(847161301389573333)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'111'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(785582615450197532)
,p_list_item_display_sequence=>65
,p_list_item_link_text=>'Calendar Styling'
,p_list_item_link_target=>'f?p=&APP_ID.:90:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-paint-brush'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(785583426735205310)
,p_list_item_display_sequence=>230
,p_list_item_link_text=>'Custom CSS Classes'
,p_list_item_link_target=>'f?p=&APP_ID.:91:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_imp.id(785582615450197532)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'91'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(785590252048292215)
,p_list_item_display_sequence=>240
,p_list_item_link_text=>'Custom Event Icons'
,p_list_item_link_target=>'f?p=&APP_ID.:92:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_imp.id(785582615450197532)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'92'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1707480935094685230)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-gear'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6,7,8,15'
);
wwv_flow_imp.component_end;
end;
/
