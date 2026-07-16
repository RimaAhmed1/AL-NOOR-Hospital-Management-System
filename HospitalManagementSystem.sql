prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.0'
,p_default_workspace_id=>7517107481336796
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'HOSPITAL_SCHEMA'
);
end;
/
 
prompt APPLICATION 101 - Al Noor Hospital Management System
--
-- Application Export:
--   Application:     101
--   Name:            Al Noor Hospital Management System
--   Date and Time:   13:48 Thursday July 16, 2026
--   Exported By:     HOSPITAL_ADMIN
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     30
--       Items:                  102
--       Validations:              6
--       Processes:               45
--       Regions:                 76
--       Buttons:                 63
--       Dynamic Actions:          6
--     Shared Components:
--       Logic:
--         Build Options:          1
--       Navigation:
--         Lists:                  2
--         Breadcrumbs:            1
--           Entries:             28
--       Security:
--         Authentication:         1
--         Authorization:          1
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                   6
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         26.1.0
--   Instance ID:     1714039887113778
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'HOSPITAL_SCHEMA')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Al Noor Hospital Management System')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'AL-NOOR-HOSPITAL-MANAGEMENT-SYSTEM')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'CE043FFF6B40FC7F3E77C114372D852DC0A25CF98B9540C16E357B9053413347'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'26.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix=>nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(7526947438442598)
,p_application_tab_set=>0
,p_logo_type=>'T'
,p_logo_text=>'Hospital Management System'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_authorize_batch_job=>'N'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Al Noor Hospital Management System'
,p_created_on=>wwv_flow_imp.dz('20260712121924Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260716134322Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_last_updated_by=>'HOSPITAL_ADMIN'
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>2461234121926
,p_version_scn=>'9405923'
,p_print_server_type=>'NATIVE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'N'
,p_pwa_is_push_enabled=>'N'
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(7527769568442609)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2469215554099805162
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(7528559418442683)
,p_nav_bar_list_template_id=>2849019392706229583
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7522845009442585)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>'SH256:NcagEyRP_F17oe14bnrSYSYienkBgpdRSvH17g_NxoE'
,p_created_on=>wwv_flow_imp.dz('20260712121924Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121924Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7525830753442590)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>'SH256:FJR60MFzlfEjx0PvnpYBK4631rNeUHXaF3eGFKxcTgE'
,p_created_on=>wwv_flow_imp.dz('20260712121924Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121924Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7523101656442585)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>'SH256:dQTHqehcDG0h-d-qmHe5lf-DuViElEHDw9zMkscLr6M'
,p_created_on=>wwv_flow_imp.dz('20260712121924Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121924Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7523443595442586)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:CU9J9l4sUtY-UffjdBCosfDW6ER-I0swXpw8GekLiYQ'
,p_created_on=>wwv_flow_imp.dz('20260712121924Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121924Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7525577409442589)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>'SH256:jJTPfH8wphTXe7ahDytF6PbWlPl1mXrDRYylCDda0k0'
,p_created_on=>wwv_flow_imp.dz('20260712121924Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121924Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7524934544442588)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>'SH256:oAqKgc-cSRXHDMjfwwNIgo78WqYXKjQz8MWGBG6Euj0'
,p_created_on=>wwv_flow_imp.dz('20260712121924Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121924Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7526113117442590)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>'SH256:uT4QhQbZQY61UFxAGl7ieo2urrCo8jUsFNprrg7lGHo'
,p_created_on=>wwv_flow_imp.dz('20260712121924Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121924Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7526456046442590)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>'SH256:wAjuCAsVhoIbbuKGWTMQ__Rd_YS_sY9KgWhpqOO11mc'
,p_created_on=>wwv_flow_imp.dz('20260712121924Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121924Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7524694266442587)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:GIeRbUJQ8yKfen6-dFvkghmSUZXFoUAXCCTNRhCJgh0'
,p_created_on=>wwv_flow_imp.dz('20260712121924Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121924Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7522526733442566)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>'SH256:4M27aN0U-JyQ0prILtI8ITLXOphqUdO-xWNcwkSL1SI'
,p_created_on=>wwv_flow_imp.dz('20260712121924Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121924Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7525214640442588)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>'SH256:tNGqNT-VaoKqWOwKbAdEqb6C0QO-GMcYRZJLXjScHMo'
,p_created_on=>wwv_flow_imp.dz('20260712121924Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121924Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7523784655442586)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>'SH256:vJP7K77hiNj1R2RE6dHVyRAhlmxDg6KGn4yRE20J9Qw'
,p_created_on=>wwv_flow_imp.dz('20260712121924Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121924Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7524335247442587)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>'SH256:fiSZ-OfcUl-d0e0dtJUYffG7q61xKsHlomsv7ZU1BMw'
,p_created_on=>wwv_flow_imp.dz('20260712121924Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121924Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7524089406442587)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>'SH256:dRkCWi6vQMhdQUSqb0QlRls9iYcsZ93IPYrbTqFqJFE'
,p_created_on=>wwv_flow_imp.dz('20260712121924Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121924Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(7528559418442683)
,p_name=>'Navigation Bar'
,p_static_id=>'navigation-bar'
,p_version_scn=>'SH256:vnb1-G39r80BPE-5P2Enpuf0sMSVvBeNQDVbFiNwRto'
,p_created_on=>wwv_flow_imp.dz('20260712121925Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121927Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7541643693442797)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_static_id=>'app-user'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260712121926Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121926Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7542255225442798)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_static_id=>'list_item'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(7541643693442797)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260712121926Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121926Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7542728867442802)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_static_id=>'sign-out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(7541643693442797)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260712121927Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121927Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(7527769568442609)
,p_name=>'Navigation Menu'
,p_static_id=>'navigation-menu'
,p_version_scn=>'SH256:5jSdRM19u7FD3oO1rlOdtPUTlZF3EU348COu4NNgyJI'
,p_created_on=>wwv_flow_imp.dz('20260712121925Z')
,p_updated_on=>wwv_flow_imp.dz('20260716133721Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8419057636716184)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'Admissions'
,p_static_id=>'admission-management'
,p_list_item_link_target=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'31,32'
,p_created_on=>wwv_flow_imp.dz('20260715140143Z')
,p_updated_on=>wwv_flow_imp.dz('20260716133721Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8475178151223795)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'Admission Report'
,p_static_id=>'admission-report'
,p_list_item_link_target=>'f?p=&APP_ID.:34:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'34'
,p_created_on=>wwv_flow_imp.dz('20260716113951Z')
,p_updated_on=>wwv_flow_imp.dz('20260716113951Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7776133598822171)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Appointment Report'
,p_static_id=>'appointment-report'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'24,25'
,p_created_on=>wwv_flow_imp.dz('20260712132240Z')
,p_updated_on=>wwv_flow_imp.dz('20260712132242Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7586805520551761)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Appointment Statuses'
,p_static_id=>'appointment-statuses'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12,13'
,p_created_on=>wwv_flow_imp.dz('20260712123736Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123737Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7551473080481959)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Departments'
,p_static_id=>'departments'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4,5'
,p_created_on=>wwv_flow_imp.dz('20260712122558Z')
,p_updated_on=>wwv_flow_imp.dz('20260712122600Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7724957812696275)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Doctor Management'
,p_static_id=>'doctor-management'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'18,19'
,p_created_on=>wwv_flow_imp.dz('20260712130141Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130143Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7564303057532299)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Doctor Specialties'
,p_static_id=>'doctor-specialties'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'8,9'
,p_created_on=>wwv_flow_imp.dz('20260712123421Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123423Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7539058383442767)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_static_id=>'home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260712121926Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121926Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7575801776546020)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Medicine Categories'
,p_static_id=>'medicine-categories'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10,11'
,p_created_on=>wwv_flow_imp.dz('20260712123639Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123640Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7742778147727772)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Medicine Management'
,p_static_id=>'medicine-management'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'20,21'
,p_created_on=>wwv_flow_imp.dz('20260712130656Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130658Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7758533592769531)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Medicine Stock Report'
,p_static_id=>'medicine-stock-report'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'22,23'
,p_created_on=>wwv_flow_imp.dz('20260712131353Z')
,p_updated_on=>wwv_flow_imp.dz('20260712131355Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7619432948567037)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Patient Management'
,p_static_id=>'patient-management'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'16,17'
,p_created_on=>wwv_flow_imp.dz('20260712124009Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124010Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8456836594840575)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Patient Visit Report'
,p_static_id=>'patient-visit-report'
,p_list_item_link_target=>'f?p=&APP_ID.:33:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'33'
,p_created_on=>wwv_flow_imp.dz('20260716092802Z')
,p_updated_on=>wwv_flow_imp.dz('20260716092802Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7967609439938566)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Prescriptions'
,p_static_id=>'prescription-management'
,p_list_item_link_target=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-layout-header-sidebar-left'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'28'
,p_created_on=>wwv_flow_imp.dz('20260713083026Z')
,p_updated_on=>wwv_flow_imp.dz('20260716133702Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7599556102556164)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Rooms'
,p_static_id=>'rooms'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'14,15'
,p_created_on=>wwv_flow_imp.dz('20260712123820Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123822Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8176231331547332)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Visit and Prescription'
,p_static_id=>'visit-and-prescription'
,p_list_item_link_target=>'f?p=&APP_ID.:29:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_parent_list_item_id=>wwv_flow_imp.id(7952014448691627)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'29'
,p_created_on=>wwv_flow_imp.dz('20260714134249Z')
,p_updated_on=>wwv_flow_imp.dz('20260714134249Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7952014448691627)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Patient Visits'
,p_static_id=>'visit-form'
,p_list_item_link_target=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-forms'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'27'
,p_created_on=>wwv_flow_imp.dz('20260713070900Z')
,p_updated_on=>wwv_flow_imp.dz('20260716133533Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B800001000494441547801EC5D097014D799FE5FCF8CEE6B24812443388D39C41A271C16C2D8C996B15D59076204ACC1ACAFD472254EC5BB49A56A8FDAECD66EED6E2576';
wwv_flow_imp.g_varchar2_table(2) := 'D9496C24927288030283100112921887C3E6303684DB47051CC0E63492903487E67CF9FFD7235B0723CD74F75CDD6FFCFEEED7EFFAFFF7FD1FEF75BFD76A2B207F12011D084802E9004F56059004922CD0858024902EF864654920C9015D084802E9824F';
wwv_flow_imp.g_varchar2_table(3) := '569604921CD085806602E9D22A2B9B06014920D3B832351D91044A0DEEA6D12A09641A57A6A6239240A9C1DD345A25814CE3CAD47444122835B89B466BF209140374739FDE56B870D5A6CA27966D1DBB7479F394A5AB7E5DBB7879F39CC5CB9BBE660D69';
wwv_flow_imp.g_varchar2_table(4) := '9E437DA6BE1306840561120374492F92620271B67859D384C756363DB164C59697518EA0F80BB2821D8EB0ED4A40099F0D337E3C1C0E1D608CBFCE18DB6E0DE1AF539FA9EF8401614198103628471E5BB1E525C28CB003E02CE9ACE9A130A9045AF8CCA6';
wwv_flow_imp.g_varchar2_table(5) := '214B576E998B20FC0FCAAE252B9ADB98C2DEE79CAD459B56A24C4571A0C8706B04089BA91C60156146D8118684E5632B9AFF9B46E785DFD8547AEBAA89494D22813873F8EDB59CC3F7B12BFF82723F4A318A0CFA10200CEFE7C0FF1547E7EF6739ECB5C9';
wwv_flow_imp.g_varchar2_table(6) := '1C95124EA065CB1A1CF8AFE31F97AC6CFE0018FF35FEEBC10EEA434CD68E8AC02C0E7CC792155BDF5FB27CCB3708FBA8250DCA4828811E5FB169984B293F849D5A031CEE30C866D9CCA008F0F1C0E0E788FD41BA6D18B4B88E020923D063CB374D0A80ED';
wwv_flow_imp.g_varchar2_table(7) := '30DA46F73578922105084C73046C87167FB3A93A51BA1342A0C5CB9AEFE1CC7690010C33CE70D9924604C6B2103BB07865F37D1AEB0F58CD7002D1C8C314FE07D44A37777892210D1028669CEF4CC448642881962DDB91C7997D3302968722437A2190C7';
wwv_flow_imp.g_varchar2_table(8) := '82EC35F2919166194AA04E25F0323E424E32D240D996810830A8567D645C9B861168C98A2D4F32E04F18679A6C291108908FC85746B56D0881163EBB29170D7A1E4586CC40E039A3A632430894E5B1D3C8E3CC0CECA4958840A99B051EC7B3EE60008138';
wwv_flow_imp.g_varchar2_table(9) := 'C3EDBCEFE8B624710DC8966F8500E3DFC6FB555C69B95566EC69BA09B478F9D607D190F1B1AB9425D30101DC529AA8FA4E9F35BA09C41897A38F3E1FA4ACB611BED345A0279FFC450EF67E0E8A0C9989C09CC8039066EB751128985350839A75B581F565';
wwv_flow_imp.g_varchar2_table(10) := '481D024AB697DDAD47BD2EE787801181F4E89775538C805E1FEA2210DEC24B02A598007AD5EBF5A10E02E1C33BB07BF476209DEB5BC3367DB38866022D5CB5B902012E439121B311A878FC9BCD9AFDA8994076A668569AD9789BCFFA00842BB5F64A3381';
wwv_flow_imp.g_varchar2_table(11) := '14CEE42B1B5A514FB37A7A7CA99940611E92044A33226835478F2F351308C276DA81D76AB3AC9746082861875DAB399A09848F7F7204D28A7A9AD50B03A73F58D4649566020103390245833CC3D2F50C06DA09A483B59982AFD7DD0A5E4F5BA698ABDD4E';
wwv_flow_imp.g_varchar2_table(12) := '1D8381660271C683DA2D4EFF9AAECEEB823C44228AA7BFC5A9B150338152636E72B4BA3AAE82BFAB132A2A8608A1B8ABE35A729467981649A03E0EEB6CBF027E9F1B4A4B4B60E6F46A2165A54E4C734167FBD53EA5E5A524500F0EB83B3F8580DF034545';
wwv_flow_imp.g_varchar2_table(13) := '85307BE614B0D91421B366DE09C5C58598E7062AD3A38AE5A39240110A74796F82AFAB030A0BF3E1BE597781DD6E8BE40038303EBBF62E2828C81765BABCED9FE5593DA2581D00EABFDFEF068FAB05F2F272E1DE595F84AC2C0725F7926C4CA3BCDCDC1C';
wwv_flow_imp.g_varchar2_table(14) := '2C7B0347234FAF7C632E32AF15CB13888743E0EEB80E8C319855330572B2B3A27A3137270B66DE7D279655C08D4F699C87A396B54A86E509448FE8448489E3C74051E1E08BEBCEE202187FC7680813F1904456214AB47E5A9A403E7C540F446E9A27DC31';
wwv_flow_imp.g_varchar2_table(15) := '221A46FDD2278EFF82B8A9A6A735BFCFD52FDF4A099625108D201ED70D9C8E18DC3DAD5A9C6375BCC214983E7592A8E3C63668048BB5AED9CA5996405E4F2B90E3274DBC3DA6A9ABAFE38BF1698DA63DBA87F25A61BBA32F00916B4B122814F483CFDB01';
wwv_flow_imp.g_varchar2_table(16) := 'D9D9D950565A04375A3B344979593164E14D7797E726DE130523905AEB64490279DC2DC2CB3E9F0FDEDC7F14F6BD754493BC79E04FB842ED176D79701940445273489956CB112814F28B359C51A32A61E9A35F3144468DAC4422B92C390A598E405D3875';
wwv_flow_imp.g_varchar2_table(17) := 'D13FD7795F9D01750FDF6588CCFDEA346A524C8B2262A183A508C43907DA59B7E1D644CDD49186B979E6B4D1406DD2B280618D664843962290DFD7299EBC6AEF9E842BCE9A5F03EEE7DA9C6C3BD44C9F28A6303F6E8BF42B60E2048B11C82D5C796FED04';
wwv_flow_imp.g_varchar2_table(18) := '718E76F0740560F3B663F0A39FBE2EA469FB31A0B468E529FDDE5AF51349019FAA83D2AC209621104D5F81801777D4F360DA94E1517D7BF1D24D78E67BAF42E3E6BD70E0ED3342D66FDA2BD23EBEDC1EB5DE8C2F8EC0CDD81CF0E3CA76D44226CCB00C81';
wwv_flow_imp.g_varchar2_table(19) := '02010FE0FC85BBEDD551DD180A7378EEA59DD0DEE986790FCF847F7AE6EBF0ECB7E68938A53DFFD2EF80CA4094DFECDAC9400B8BC1A02F4A89F44BD66B91650814F47B0556B367AA538DB8E87378EFC3AB70F1E235B8A76632DC3EA6526C55288A22E2B3';
wwv_flow_imp.g_varchar2_table(20) := '6AAAE1FC852BF0E1D9EB7D6A7D7E397BA6FAFF93E9D6F5798E796396215008579F01184CB87D0844FB5DF8A455649595158A73CF43795991B8BC1829232EFA1CC68D291729415C6B12110B1C2C4320726A71F1C0AF6B9414A97FEAE6F305FBB9BECB1710';
wwv_flow_imp.g_varchar2_table(21) := '6945856A1971D1E790E5B0417E7E0EA864ED9369D24B4B108876DEE9DEC4E954479168BEBC63EC50CC6270E6FD0B78BF84D1EEC001DE7B0FD31883F1E3A84C7746FFB3B3A40868B5BB7F8E3953AC41A0903A7A94390B06F4E2D0F2027874C16CA07B9D57';
wwv_flow_imp.g_varchar2_table(22) := '7EF506ECDA731A76ED3E05143F7FF12A2CFDFB2F4359C9C0A39898FE70C1321CEE3F8A0DA83C43332D41201E79F5B4B4646002910F17CEFB123CB5F47EE87079E0E4A93FC3C9D367A1D3ED85A7FF610E3CF27753A8C880E22CCE17F9E170489CCD7E50CC';
wwv_flow_imp.g_varchar2_table(23) := 'DE41EA5F37818A4B54E7525A3451709A9AFBD0DF40D3DA6FC30BFFF714FCE4874F43E3CF56C1D71E9C0C9417AD5E77BA3342529A32BBD34C798E74CA2204C29B18EC702C231016FB2C8C1C5E02C3AB8AC59FF57C963848A4D4A992B49BB48314CFF86C4B';
wwv_flow_imp.g_varchar2_table(24) := '10A8DB4B1CEF4DBAE3893A33C644D3C9D02514A5F860090231A63AB5ED66E2F7A95A233A185375A6D8BF09576F1102A9DD4C0681DADAD4BFD2604CD599700FA65881257AC914F5CF945BDB3A130E776B84404A4467C215A658812508442FBD13CEC92050';
wwv_flow_imp.g_varchar2_table(25) := '4BAB4A52AFE726A934BD989E40AE8E6BD0FDC77FF112E8F40757E1346EB0C6C3829656F5950FD249BAE3A99B8965E3275006F5D2451F8AF2B960F8B02AB8AD6A2874767AA0E5A627E61EBC58BF137E52FFBB98CB7FDAE206AFD787BA2A844E2B90C8A404';
wwv_flow_imp.g_varchar2_table(26) := 'E2E263507E9F1BAA903833A64E80AA4A7517FED499CB31138216B0C3211E73F993672E89B2B7559583D05935548C7E44E4DE9B6BA298290EA624900BA7AD80DF0D951543A0667A3530C630EE140E3B7EEA823827E270ECD479D16C5565A9D049BA2B2BCA';
wwv_flow_imp.g_varchar2_table(27) := '91446E7075447F8F4854CAD083E908E4F5B409870D1952063533AAA17BFB813EDB425F193B7AFC2CC43EA6C4EED5302E521E3D76164A4A8A21CBA17E5F8874D74C9F0CE565EA27F2BA3CE6BBB1361581E83D1C2F12282F37176A674C069BD2BB7B348DB9';
wwv_flow_imp.g_varchar2_table(28) := '7093F4A30BEA8B63B1D363F09267FFD2025D5D78FF5359DEABB0CDA6406DCD9D909B930D1E4FABE95EF5E88D70AFAE67DA05C769E21ADE6A709831AD1A7A7EA2AEBB27951565227AF2F4C7E26CE4A1BBCDCA8AD27ECDD227F2A67DA95AD8A64E65891803';
wwv_flow_imp.g_varchar2_table(29) := 'FBA94D4A826908140874897FDDA5CE62F1C1845BA157EA2C00074E2FBBF79D049A726E55464B1ABD68BF6BEF09D1B6B3A4F0964D0C1D5222BE29140AFA2018F0DDB24C26262691408985271C7969ACBCBCFF08D0AD990183316386C327976FC0A177D51B';
wwv_flow_imp.g_varchar2_table(30) := 'DEEE3C3DE7FD6F7F04D7AFB7C1B8B123066C66E810D5B650C4D6010B6748A66908140AA96F009697150F08FDF8B15FC0E9CD0E1B9BF61B320AD148B6A1E92D31FA8C1B3B7C40DDE56525223F2C09247048AB03E721614F5E6EB638473B381C76F18D431A';
wwv_flow_imp.g_varchar2_table(31) := '850E1FD5FF487FF09DF3700D471FFAD894DDAEEEB945D39D979723B2C2115BC545861F4C3302C5F36C3E6ECC30F161A84D5B0FC553AD9FABC3F8E8BE71CB7EC8C9C98131A3ABFAE55B21C13C048AC35BF4683D69C218387FE12ABC7BEC621C357B17A511';
wwv_flow_imp.g_varchar2_table(32) := 'EC12DE4F4D9A30BADF9241EF92E6BDB22481C89DA34756E2DA4C0EFC6CED1BE0F2F829292EA13A5497D69C468DA88CABAE990A9B87402C3EB784C31C72F17EE9464B3BFCE8A7BF8F6B2AA3A9EB873FFE3DB4DDEC841C6C2314B6EE07C7338140F1312386';
wwv_flow_imp.g_varchar2_table(33) := 'D23E7F00F6BEF527686D6B07C6143871F21C34FFE6780C35D5224DDB8EC1C9D3E78061DDD6D69BD8D631A036D55C6B1DCD43A01817773B5D5ED8BDF708B4B77742764E2194948E00C5E680F5AFED81F7FF3CF88627BD23B471CB3EAC638792B291A28DF6';
wwv_flow_imp.g_varchar2_table(34) := 'F60ED1A6CBDD652DF6606FCD43A018A6B096D60ED8B3EF5DF078BD909B5F0AF985438129362828AA007CA082FF7D7E2BDC68F5202C6AE098D89397D76FB8E0FF5FD826CA16145502638A6883DAA2367763DB34ADA9B5AD71340F8106F1D7E5AB2DB06FFF';
wwv_flow_imp.g_varchar2_table(35) := '510804838230B979EAEB1D54CD6ECF1684A217CEFEF9DFD6C1AF36BD035B7E731CBCB839EAF1768938A57DF7DF1B813663F3F2CB7031329BAA0AA1B6888481004D8D478074890C0B1CCC43A09E43451FC79DFDE8121C3A7C12531914950CC335A0028CF7';
wwv_flow_imp.g_varchar2_table(36) := '0E4402928E0E37346F3F00EB36EE116F17D21B8614A734221895C9C95357947BB690955D20DAE69C095DE7FE12FB8B6B3DDBC9B4B8790814650A3B8137BB274E7D088ACD0645CEE16077A8ABC1B772144D45CEF2D140242B2CB94D4C6F34C5519CD29CE5';
wwv_flow_imp.g_varchar2_table(37) := 'A3C44805517ED47691731828382D1E3FF90190EE28454D936C1E02F571891FA79383874FC3D9731780A6A8A292E160C39B6518E4C79802440487231758E43F8A531AC33C18E467B365411112D586D322E93EF4CE190804D47DBA41AA6664B679081499C2';
wwv_flow_imp.g_varchar2_table(38) := 'DED87318B66CDB0D3B76BE0557AE5E077AD22AC4698B460548D28F74D18895854F7997AF5C83ED3BDF1436FD116D4B92094953631A02D10861C75183C4919507D9B9C55088D39078D2620CB4FC1CD979E0C8CED75215186350804F7985C5B7095BC826B2';
wwv_flow_imp.g_varchar2_table(39) := '8D8446344D8DA66125CD046261E5F3E7DD34E8188D3445481892C2E22AC82F2807BD8ECA2F1822DAD1D33D4756AE68836C22DB48B2F0865B4F9B86D7E5E0D5DAA66602E18C915604D20A80AC07A0C7979A09044A50336BA5D3D20C011DBED44C2085D9E4';
wwv_flow_imp.g_varchar2_table(40) := '0894663CD06A8E1E5F6A265098714920AD1E4BB37A7A7CA999402CCCCC3B85A59983136D8E1E5F6A26508085E4089468CF26A97D3DBED44C2067B0AD05FB67BDF717B0D3260B5D115F6AEA966602AD59B33C801A0FA3C890D9081C8EF852532F341328A2';
wwv_flow_imp.g_varchar2_table(41) := '6D6FE42C4F998B802E1FEA229002615DCA331773F358AED787BA0864EF72BD8D50CAFB200421434357C4879ACDD745A0B56B9FEA0206DB346B375DC50CEB10FA4EF85087D9BA08447A719FFB053A4BC93C048CF09D6E02AD5F5DF73663209FC6328C3FE4';
wwv_flow_imp.g_varchar2_table(42) := '33F29D5EB37513880CE09CC9518880C82031CA678610E872A5B309B1FB0445860C4080035CCE24BE230000028F494441548AF84CB7B5861068EF0FBE1204CEBEA5DB1AD9407210E07CA5F09901DA0C2110D9D1D8301F9FC6D88B149792CE08B01737342C';
wwv_flow_imp.g_varchar2_table(43) := 'D86194858611880C2A087FFA3D3CBF8B22437C0824A53407B637E223C3F4194A20DA530983B20838DC04F94B3704AE41D0F628F9C848C30C251019B6B1FE91F361C6FF16E3E75164480F042E289C3DB8E1E7F3AE196D8EE104220337D62F3866B7B16918';
wwv_flow_imp.g_varchar2_table(44) := '7F034586D422B01B7D31755DC3FC13893023210422435F7D697E4BA025F410305E4FD752928F0007780E7DF000F92251DA1346203278F3E645A1C6D50B5632CE56E2B51F4586E420E0651C1EDD505FF75DF2412255269440DD86AF6F985F6F87D018CEF9';
wwv_flow_imp.g_varchar2_table(45) := '7F60DAC728322406015ACCFD01623D6E7D43DD6B8951D1BBD5A4108854BE5ABFE8D2868605FF8543EA6806301FD3FE8082A32C1E65D08C00560C01831D61060F23B6A31AEBEBFE93B0C6F4A484A411A8BB3734A4AEAFAFDB8A1D7D28100E3981C37DC0F9';
wwv_flow_imp.g_varchar2_table(46) := '7738B05F02F05358CEBC9FB2C0CEE90C880D62C4E055C6E059CED89773FC7667E3EABAB91B57D7FD96B0D5D97EDCD5934EA09E166E5EB3A8BDB1A1EECDC686052F6EA89FFF6463FD823B91580E97DF5E145042558EB0723B3E7EDEA528B6599CB307700A';
wwv_flow_imp.g_varchar2_table(47) := '9C6B0D610F509FA9EF8401614198103602A3D5754FAC5F5DF7C286D5F3F7BDF2CABC4E48E12FA5048AD6EFED08CAE697175DFDE59A47CEADC3C7CF752F7FFDE08686F9BB36E012BC3564FE2EEAF33AEC3B6140581026D1F04A657A5A1228958048DDF121';
wwv_flow_imp.g_varchar2_table(48) := '2009141F5EB2741F042481FA00222FE3434012283EBCCC53DAA09E48021904A4559B9104B2AAE70DEAB7249041405AB5194920AB7ADEA07E4B021904A4559B9104B2AAE70DEAB7249041405AA799DE3D9504EA8D87BC8A130149A0380193C57B23F05700';
wwv_flow_imp.g_varchar2_table(49) := '0000FFFF5D7AC4D600000006494441540300B4FD0A99EA52914A0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(7529802726442703)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260712121926Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121926Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C0700001000494441547801EC5D098C1BD779FE87DC837B907B4ADE7BA5DD9556B7BC3A2C5F75EDD4CD01A48D7BA428DA047582A26D5A2440910605DAA2288A0641E12629';
wwv_flow_imp.g_varchar2_table(2) := 'EC22461DC4765CA575E03AB663C5B1629D96AD5AD6E5952CC992BCB22C6977A5D5CADA8BC7925CB2EF7FC37933CBE57086E4901C727EEEBE99FFFDEF7FEFFDEF7BEF1BBE7973D0F5477FF1629C0261E0D431E002FA10020E468008E0E0CEA7A603100168';
wwv_flow_imp.g_varchar2_table(3) := '14381A012280A3BB9F1AEF600250E713023405A231E07004E81BC0E103C0E9CD2702387D0438BCFD4400870F00A7379F08E0C411406D160810010414243811012280137B9DDA2C102002082848702202440027F63AB559204004105090E0040492DB4804';
wwv_flow_imp.g_varchar2_table(4) := '484684E28E428008E0A8EEA6C626234004484684E28E428008E0A8EEA6C626234004484684E28E42C041047054BF52634D224004300914999527024480F2EC576A9549048800268122B3F2448008509EFD4AAD32890011C02450256D46CEEB224004D085';
wwv_flow_imp.g_varchar2_table(5) := '86129C800011C009BD4C6DD4458008A00B0D253801012280137A99DAA88B001140171A4A2807048CDA4004304288D2CB1A01224059772F35CE080122801142945ED6081001CABA7BA971460810018C10A2F4B246A08C0950D6FD468DB308012280454052';
wwv_flow_imp.g_varchar2_table(6) := '31A5890011A034FB8DBCB60801228045405231A5890011A034FB8DBCB6080122804540DAAA1872C634024400D35091613922400428C75EA53699468008601A2A322C47048800E5D8ABD426D30810014C434586A58040A63E12013245CC22FB582C0A3353';
wwv_flow_imp.g_varchar2_table(7) := '6330CB02CA16154BC5648800112043C0AC305F5888C0CCED5188468210610165D4595136959119024480CCF0CAD97A6121CC8EFCA3A03DEAA33C3B350A9896730554404608100132822B37E368749E1FF9E3B1055E505D5D2D60C0488CE9F09B006D304E';
wwv_flow_imp.g_varchar2_table(8) := 'A1300810010A83339BEE84F87C3F1E8FF11A71E03FF86B5B0003CAA8C4B459764E108D84304AA100089411010A80569655E05C7F864D7170806311F5F5757CE07BAAAB0003920075988636B3D3639C3018A7905F045CF92D9E4A5F6027BCB3D3D705103E';
wwv_flow_imp.g_varchar2_table(9) := '6FBD18FC8A722909E2303B731D620B51C584F679428008902760B158F9683E0EB8C7784D8D071EB87F08AAAB2A31BA28A0EED7599AC7E3E17A3C4F989D56F372256D2C4780086039A46A8178E48FB16F00D4545654C003F76D4939F8311D037E133C70EF';
wwv_flow_imp.g_varchar2_table(10) := '9D5059598151BE2A34C7BE097884367941800890175801FCB337D93C3EC84B975C2EB8FFDE21A8AF938FEE5CA9B3F17A6BE1BE7B8600F3A049241C84C0DC248A14F2800011200FA08682D3301F9A1125DFBD7D2334377945DC486861B63BB66D1066C9E5';
wwv_flow_imp.g_varchar2_table(11) := '890445A07DD6081001B2862E75465CC70FCCDD12891B370C42475B8B889B153ADB5B61C3FA55C2DCCFBE0516A2611127C11A045CD61443A52002F1781CE6666E3031CE02407BFB7258DDDFC9E56C368303DDD0D17E879C15CB9E55CB9695B4CD15012240';
wwv_flow_imp.g_varchar2_table(12) := 'AE086AF207FDB7D8D265846B6AD86ACEF62D6BB99CCB66DB9641C0B2B00CFC0608F86FA348C122048800160119890401E7EA727112DC7DD746A8AC70CBD11CB6B87AB4633B9E0F48BC9450600AA2D1792ED32677048800B963C8D7F9FD3313A2A4756BFA';
wwv_flow_imp.g_varchar2_table(13) := '323AE91519758496661F0C0EAE48A4CAD32C9C6E25148EDEE5DA782240AE08B2FC0176821A8BC9576D7DEC4AEF9AD53D4C6BEDFF7A4600E57609BCB61064D32D6B6B70666944801CFB1DA723F3A15951CA5636EF972479BA229416089224C1D621F59C22';
wwv_flow_imp.g_varchar2_table(14) := '149C81055A15CA195922408E10E2D15F2962456F2734379A5FEF57F299DDB7B2A9504F7747C23C0E01FA16486091FD8E08903D76100EFBD9D55EF9D6653C59DDB8BE2F87D2CC65DDB4A19F9D5CCBB74A44C20151BFB9DC64958C00112019910CE2C1B94F';
wwv_flow_imp.g_varchar2_table(15) := '84F5A60DABA1AAB252C4F325E04D73DA0B640176FE91AFBA9C506E0913A0B8DD331F6273F005F5CAECF1F7CEC28BAFEC2B4838397C4E343ECA9644C3F373224E426608100132C38B5BE31264C0AF1EFDB9B2881B3BF9524418B2AA9A0890056C61B6EA83';
wwv_flow_imp.g_varchar2_table(16) := 'F7EB6791352F59705994BE05B283960890056EC1E094C8F537DF78045EDAF9D74509DFFCFA17841FEA5568A122C1040244001320694D22E1A0B8DFC7EBAD83BBB7295768B5568591EFD9BE127CBE3A5E59341262D705E816090E46061B22400660A1A9F6';
wwv_flow_imp.g_varchar2_table(17) := '48FBF9CF6C03B7CBFA8B5E584FDA9048C4BA3FFBF0D6440C34F722091509060810010C00D226E35C3BC2D6DE5127492EF8CC6FAC43B1A8E1D30FAD0589F9824ECCB3D5A078E2B52B18A7608C0011C018236111624B9F00F2BDFEF7DFB30E1ABCC68F388A';
wwv_flow_imp.g_varchar2_table(18) := 'CC79125A9A6AE19E1D6BE4D2E371980FAA4FA2C94ADAA6438008900E9DA4B470485D6FFFDC6F6E4E4A2D5EF4730FABBEE0B740F13C29BD9A890026FB6C815D7052EEF86C6EF6C1DA55CB4DE65C6CF6C954107EFCFC11F8E7C75E8547FFEA291E507EEEA7';
wwv_flow_imp.g_varchar2_table(19) := '4700D3165B9B8B6D58D3060D0DF2C930FA69A7255A732D289E1511C024F6E1C4DC1FCDEFDABA1A77198763C3D7E01B7FFB2CBCBCEB309C1CFE10A6A7FD3CA0FCD2AB87791ADA645C30CB70D716D5A770D8CF34E5F96F75AB880026118D6808B06573E64B';
wwv_flow_imp.g_varchar2_table(20) := '9FBF78E32C7CFBB117C0EF0FE9D6886968F3DADEB3BA367A09431A9FB4BEEAD9935E46800820E390768B538A68445E6377B95CB0697D475AFBE4C4AB6353F0CC4FF608757F5F07FCE1EF3F04DFFCFA233CA08C3AC5E0999D7B61EC466627B39B37748224';
wwv_flow_imp.g_varchar2_table(21) := 'C94BB21176AD02D809B1521EEDF5112002E8632352E4E98FBCFAB379631F54579A7FD6772116877F7BE23576914A7E25FAE68D03F0C8E77740674723B011CB03CAA8C334609F68240ADFFD8F5F02E6655153FFB59E4A58BF56FE66C2A5D04824682A9FD3';
wwv_flow_imp.g_varchar2_table(22) := '8D8800264640945D6555CCB6DED9A788A6F617466EC295ABF83A1380BABA1A78F8417CC03D75564CABAB9597562F7D3406972EABEF174A9D63B176DB50BF50687D164A12962040045802C952C582E6B6E7C1813B961AA4D14CDC541F975CD5DF09FCA80F';
wwv_flow_imp.g_varchar2_table(23) := '3A1F368519409B44F2C4A49A37A14ABB1B5CD526D2B53E0B25094B102821022CF1BD600ABCE75EA9AC0BA72E4AC4C47E66469D8AD4D5D718E6A8F7D60A9BDBD301219B11BA3A1A8459949E171658A4138800E9D061690BF876E7C409656B4B0378AAE5C7';
wwv_flow_imp.g_varchar2_table(24) := '115992A9FF0E0D61FC732A19F432CFCDAA83BEB3AD51CF2CA5BEBEB60A9A1AEB791ADEB6A15CB5E60ADAA444800890121655B9A03992F6F6647EF16B4577B328ECE2C8281B93F2C9B4506A8438231AB749E856F4A879132AC35D4FF71DC286BE050414BA';
wwv_flow_imp.g_varchar2_table(25) := '021140171A39614133FFEFE95A262B33D8E2BD3ADBB70EF21C7E7F10F61C789FCBA9367B0F9C864040BE4EB06DCB203435184F9992CBE9EE6A152A2D798592844508100116C1B134A21D44DD9D991F91B1C43FFFCA83505D5D85220C9FFE905D093E02A3';
wwv_flow_imp.g_varchar2_table(26) := 'ECDA005FAB67477D945F7EF5084B1BE13668FBB5AF3EC4E54C373D5DEA9BA8B5E4CDB41CA7D813010C7A3AAEB9BDB8B9A9CEC03A75724B632D3CFAC79F12892397C6E0F9FFDD0FDF7DE2651E501E61CB9E8AC157BFFC3034376A8EFE4A8289BDD647BC80';
wwv_flow_imp.g_varchar2_table(27) := '67228BA34D880006DDAF25404D8D7C1437C89232F9B39F5A0B7FFFAD2FB26B01F23A7F2A23BC4EF00FCCE6D30FCA53A6543646BA5A8D8F5ADF8DF239359D0860D0F3DA4154C3AEB61A98A74DDEB6B90B1EFFD747E1777FFB5E18DA3C00F8486553931750';
wwv_flow_imp.g_varchar2_table(28) := 'FEBD2FDCC7D2FE04B6329BB48518247A343EC66231036B4A2602188C012B098055E1D4E6CB7FB003FEF15BBF05CF3DF967F0F4137FCAE52F7DF1AEACA73D58AE126A6B2A15919D62100104183A0211400718451D6727A98A5C5393D93500255F21F7DA6F';
wwv_flow_imp.g_varchar2_table(29) := 'A9784CBEFFA890F5975A5D4400831E8B6BA611DAC16590AD68C9351E95A471CD097CD11CCAB1E27C67270218212CDF61CCAD6231FD8B58DCC0161BD5E178E2F9655BB86553278800061D2381242C8221F9F7BF84C2864248E3A3A4F1DD86AEDAC2252280';
wwv_flow_imp.g_varchar2_table(30) := '51374892B00885E45F81110A1B0A5A924A89D7A5D8D04DDBB8440430E80A97661069079741B6A2256B7D945CD4BD461D4108192024B9D4A7BFB4D30B836C454B0E04D5699A24A9BE17CD219B576C6302D80339978600539A7BFBEDE1DD522FA634CF1068';
wwv_flow_imp.g_varchar2_table(31) := '7D5F6A491A4480088028A40971CD75801B193EA89EA6D8BC255D9F501FA68FD332A821CE44803410F9676F4244F33A94F109F5B5E869B21535E9C60DD547F41DDB5054876C5E391140A783FCB31330CFDF05AA1A5CBF715B8DD8541A4FF211DBE06744B6';
wwv_flow_imp.g_varchar2_table(32) := 'A9BB45778B0890A20B70C0CC87963E903E366EDDCF22DD9E0EC2DFFDCBCF784039851B59A9C6C697BE49629E11D94F3FA697124F2240122CF2E057E7D1DD5DEDC2E2C684750438FCEE2538F7C1C73CA02C2A41218730796B5AE4D6FA3E1F9C0622818046';
wwv_flow_imp.g_varchar2_table(33) := '0844000105803F69DAD3D3DD01DBB7AE81D6D626503E1F5DB5661A149A57972BB5B2524F36FB11CD7B84962D6BE1BE631B94B23809581B9538ED0188008951200F7E75DAB3B2B70BB66F590312FB6B6D511F853C777E3C91C37EBBB31ADF96B53432CF25';
wwv_flow_imp.g_varchar2_table(34) := 'DE066C8BE2ED3C9BDA615B95B8D3F7440036027040E0C06022FFEF5BD9035BEE5CCD65DCB4B6F870C7C3FBE7AEF2BD1D37EF9FBB22DC6A6951DF11846D2112086816098E27807FEE265BED518FFCAB067A6168D3C022905A9A55020C9FBAB428CD2E9118';
wwv_flow_imp.g_varchar2_table(35) := 'BB5E71FACC65EE0EDEBED4DCE4E5B2B24112F4F5F52851DE663A2700674F8142C1A9453F293438B81236AD57DFAFA98C960AB71B1A1B6412048221B832AAAEB52B36C5DE5FB93605C1E03C77A3A9B101D0671ED16C86360E00125C51E13941889D1C2B71';
wwv_flow_imp.g_varchar2_table(36) := '3BEC0BED8363BF01F02251604E5D325C33D8071BD6ACD4C5BFBD6D99483B714A9D6A0865918513C3AA4FEDEDAAAFC96E21C157AF52DB1960CBA38845B29D53E28E24409C4D17E634AB21BDBD9DB07E8DFC6A71BD8EEFEA5407D5C1B7CFE899154DBFE7C0';
wwv_flow_imp.g_varchar2_table(37) := 'B0A8BBA76BB99053091BD7AD84DE9E4E918458202642E120C1910408B1A94F3CF1BC6C438317B6DD3968D8E53E6F2DF8BCF27B372F5FBE0E3726D51FCC33CC9C67039C928D5F97BFCD70AA565BE331AC71DBD0A0680F6281D321C34C6568E04802CC6B7E';
wwv_flow_imp.g_varchar2_table(38) := '4A74C3BAA5737EBD7EEEEE562F8A1D7CEB829E59C1F56F1F91DF2887156B7DC478BAB05ED3F69043CF051C4700FCE188584C7EB2ABC6E381B6E5EA1A7FBAC18269DD9A69D0EB7B4F02AEBCA0BE98017F45E68DFDEF09177ABAD4A99A50EA081D6D2D8018';
wwv_flow_imp.g_varchar2_table(39) := '603262128DCA27D118774AB011010A037938EC17156572B4C44C75B51E68642B2CC03EB76FCFC0BB27D4134FA62ACAFF3BC72E03FA8295B7B4348127F10E528C9B099D9D7708B3F0BC8A8D5096B9E0380244133F7687FDDAD9DE8ABB8C427F5F97B0FFF9';
wwv_flow_imp.g_varchar2_table(40) := '2F8F0BB958C24BBB8E8AAAFB56A827B642692074762C13160B51F9CDD442E100C171048827A63FD8B73E9FFA6B2C183713708AE1F1547353BC99EDE36BD6DC1BC40BCC7073F1D2248C5C1AE5B96AD889AF768AC69526360D1A0C6289850113D9CAC6C471';
wwv_flow_imp.g_varchar2_table(41) := '0458D01020D5C522A39EC587E4570FAC1066AFBC7652C8851676ED56E7FE83AB5680244919BBE0D23C384F04C818BE12CCC0AE01E4EAF58ADE36A8ACA8E0C51C7CEB145C9F506FA5E0CA026C46AFCFC0A1C3A7794D555555B0A2A78DCB996EDC2EF51818';
wwv_flow_imp.g_varchar2_table(42) := 'A76F804CE173A67D65851BFAFBE5FB6A62B1383CF3DF877203228BDC4F3DBB1F142E0FF477D1F8963C000007294944415483DBAD0EE42C8A736C16422DCBAE5F3DD00578E4C5ECEF1E3B0F672FDC40B120E1D4D97138F5BE7C531EFAB0AABFAB20F59663';
wwv_flow_imp.g_varchar2_table(43) := '2544802C7B15A7401BD70D88DC3F7C6E5F41AE0BE0DB499FDEB95FD4BB69C3AA9437BE090312D2224004480B4FFA443C17684C5C17C0DB23DEFC3FF9A89C3E576EA9FBDFBA081F5F91BF6DB0EE5ECDAF42E656B23373130172ECF72D9AFB889EFEAF3D30';
wwv_flow_imp.g_varchar2_table(44) := '3B97BFABA953332178F627FB84C75B87D6089984EC10200264879BC8D5D4500F7837292A666703F0F8537B50CC4BF8FE0F7603D68185E3135E8DBE3A144B3A14DB792280053DA0BDFDE0D8890BB0F790F537CABDBEEF9C38F14597AB34BF0586710AD921';
wwv_flow_imp.g_varchar2_table(45) := '4004C80E379E0BEFA13F7AE203387FE1231E57364F3DB31B262CBC5D7A9C5D67F8119B5E29E5E3FEFCF98F00EB461F304E213B048800D9E1069168945D881A862B57C7440952E255EAE17014BEF3EFBB201CC9FD37BA42F3ACACEFFD1CA211F90E56A50E';
wwv_flow_imp.g_varchar2_table(46) := 'AC14EB3E74F814F705E3143247800890396680CF05EF3B781C6E4EAA2FCAAAF6F8A0B1A5175C2EF90AF1E5CBE3F0F87FEECDA274350B2E797EEF07BF82ABD726B812CB6E6CEE01AC8B2BD8E6E6E42D405FD02716A5FF0C1120026408D827B76761EF8163';
wwv_flow_imp.g_varchar2_table(47) := '3037A7DC3A2C416D7D2BD479978124B9A0BEA10D20714FCEDBEF9C819FFD427D541132FCBCF0CA09387AFC7C2297C4CB965C6E5E17D60920DFFB83BEA04FB7A7EDF3941A94C8A78804281184346E5E1B9B8403878E41381CE65A890D782F1BF09E9A061E';
wwv_flow_imp.g_varchar2_table(48) := 'C74D454535D4D6B5A0C8C3CEE7F7C1F019759AC4952636C786AFC1FFBC705058D6D6350396AD28B04EAC1B7D401DFA74E0CDA3303A3E89510A26117099B473BCD9B90B1FC391A3A74039E974B92AC0D7D80995554B6FA9C6C159552D2F51E2FD3AFFF49D';
wwv_flow_imp.g_varchar2_table(49) := '9FC26B7BCEC2F4ACF1FDF6B8D6BFEB8D33F0EDC75E109863599EDA46115704ACDBD7D801E80BEAF0BEA477DE3D051F5CB4EFCBBBD04F3B052280416FC4E2313872FC1C9C3D37222CDDEC28EF6BEA02774595D0250B75DEE5626062DA0F9FDD0D8F7EED49';
wwv_flow_imp.g_varchar2_table(50) := 'F89D2F7D9F879DCFEF47350F282BFAAFFCE593F0A31FFF8AEB71E37257B029CF7214530637F7A593F9522DD2CF9CBDC85788D077A124212502448094B0C8CA7024026FBE3D0CD7AEA9EF03ADACAAE3477E97CB2D1BE96C25C9053E46928A4A8F8E85B1BA';
wwv_flow_imp.g_varchar2_table(51) := 'A2B2067C8D5D20B1B220CD07BF017C49DF46B84284BEE36A559AAC8E4F2202E80C81B94010F61E3C06B76EA94F7CE134449E774B3AB916AB91243830F184B5924D9570A02EB6581A439B4A4632CCE3E3D31BF752A3141A4992C0DBD00E1ECDF908FA8E2B';
wwv_flow_imp.g_varchar2_table(52) := '447301E3A9578A221DA12202A4E8E6C94F66601F5BE909F8838954097095A75673729B4830B5C34189831397499B97F543330B35ECA456C98CB2A2471B6FD289B56267668FC4415F016492E20AD1BE03470157AF803E4B1020022441F2E1A55138C8567A';
wwv_flow_imp.g_varchar2_table(53) := '226CFA8349129B7E781BDA41BBF68E7A3B07F4D5CB4884BEA39FD896FD6C8568E472E6AB5198BF9C031180F5EEF48C1F46D885ABD7F7BC03C3A7CF338DFCEF725782AF09577A6A6445096D2BD994CBC7CE0B5CEC245A71FBBDE10F60F7DE237089B515DB';
wwv_flow_imp.g_varchar2_table(54) := 'ACE89DBC7739B9F12FBEB20F30ECD97F04DE1B3E077E7F40C051C14E5E1BD80072BBF5577A84B14D05375BA5F2B193686C0B243E38253AC9DA8A6DC6B66348243972E7725AAB9569815EBB5DECA85FEFBB03F0E82919ACF4E89561462F8124CC248D2C94';
wwv_flow_imp.g_varchar2_table(55) := '1609EA89780B489294B654894DF7D21A9461A2E30850E5F12EE9467745355F3DA9F7B501DE6B53555DBFC4C66A054E515CEC621A0694AD2E3FB93C4F4D233434F500AE64617D2ECDD448B14D858D9266D5DE6EE5388E0075F5ADD0CC5661B4A181ADD7E3';
wwv_flow_imp.g_varchar2_table(56) := 'EA095E712D5407B9D9F404577C30A05C887A71D0E34A96979DD43736F72EC101B129841F76AAC37104B013F8E44BF111200214BF0FC883222240042822F85475F111200214BF0FC883222250400214B195543521A0830011400718523B0301228033FA99';
wwv_flow_imp.g_varchar2_table(57) := '5AA9830011400718523B0301228033FA995AA98300114007184BD554986D112002D8B66BC8B1422040042804CA54876D112002D8B66BC8B1422040042804CA54876D112002D8B66BCAC331BBB7820860F71E22FFF28A001120AFF052E17647800860F71E';
wwv_flow_imp.g_varchar2_table(58) := '22FFF28A001120AFF052E17647800860F71E22FFF28A401E099057BFA97042C01204880096C04885942A02448052ED39F2DB1204880096C04885942A02448052ED39F2DB1204880096C0985408454B06012240C97415399A0F048800F94095CA2C190488';
wwv_flow_imp.g_varchar2_table(59) := '0025D355E4683E102002E403552AB364102002944C579586A3A5E62511A0D47A8CFCB514012280A5705261A5860011A0D47A8CFCB514012280A5705261A5860011A0D47A8CFCB514010B0960A95F54182150100488000581992AB12B024400BBF60CF955';
wwv_flow_imp.g_varchar2_table(60) := '100488000581992AB12B024400BBF60CF9551004880056C04C65942C02448092ED3A72DC0A04880056A04865942C02448092ED3A72DC0A04880056A04865942C02448092ED3A7B385EEA5EFC3F000000FFFF411C8174000000064944415403005B973E79';
wwv_flow_imp.g_varchar2_table(61) := '3A2E9F5D0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(7530195449442714)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260712121926Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121926Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A86600001000494441547801EC5D09981CC5757ED5B3F7A9D5EA5AED4ABBBA05BA112021648EE48BE3601B84562220091BE74B9084EDCF4EEC7C761CDB91034EFC25B1637F';
wwv_flow_imp.g_varchar2_table(2) := '26BA420C01B41292762530048311081D9C022481D02D2109DDC7EAD87376A73BEFF54C1F7BCFCC4E77D74CBFF9BABAAAABEB78EF7F557F575775F728C03F468011F02D024C00BE353D2BCE08003001702B60047C8C0013808F8DCFAAFB1B01D29E098050';
wwv_flow_imp.g_varchar2_table(3) := '60C708F8140126009F1A9ED566040801260042811D23E0530498007C6A7856DBDF0818DA33011848B0CF08F8100126001F1A9D5566040C0498000C24D867047C880013800F8DCE2AFB1B01BBF64C00763438CC08F80C0126009F199CD56504EC083001D8';
wwv_flow_imp.g_varchar2_table(4) := 'D1E03023E0330498007C667056D7DF08B4D79E09A03D227CCC08F8080126001F199B556504DA23C004D01E113E66047C840013808F8CCDAAFA1B81CEB46702E80C158E63047C820013804F0CCD6A32029D21C004D0192A1CC708F8040126009F189AD5F4';
wwv_flow_imp.g_varchar2_table(5) := '37025D69CF04D015321CCF08F8000126807646FEF6B7FF2FF3A18736F499FBC8DA41F73FB271C883DF7A61D8BC85EB47CD5FB8F6FA0716AF9FB8E0E1EA1BE62DDE30959D7C18906DC846642BB219D98E6C38176D493625DBB633B7EF0F7D49007FF9F086';
wwv_flow_imp.g_varchar2_table(6) := '11F316D6CC9EBFB8E667F316ADDF888DE5A3798BAA4FA2D32EB6343605B3D4DA7435705A5143C743AD2D474088039A08EC119AD8A52AF00168EA0E76F26140B6211B91ADC866643BB221D9926C4AB6251BA33B19B6F9FA8D7A1BC0B6306F71F5703FB281';
wwv_flow_imp.g_varchar2_table(7) := '2F0860DE231B26A3D17F82EE4D34745D40510F81D0AA354DFB2980B8071BCB6400188C8E377F2030386C73718FDE06B02D800687A96D601BD98CFE8F172CAC99942A5074A7474A12C0DCB96B3390E1EF42632E45771C54F52304E19FD1DD8686CE459F37';
wwv_flow_imp.g_varchar2_table(8) := '46A023021A50DBB81DDBC8A3AAD07622111C99B7A8E6D7F317AEFB536A531D33247F4C4A11C08247D68E7C6071F5BFA4150768D8FE129A6731BA21E8786304624740836100DA7734A1BC466D0A2F263FA736167B41F2E6487A0298FBC8DABCF98BD6FF15';
wwv_flow_imp.g_varchar2_table(9) := 'B2F556550D1C141AFC830028951772962C191188B4A91F511B7B6051CD16248387A8ED25A32E7699939A00E62FAABE373D14784703F13F386C9B69578CC38C80530808D0BE80653F89938B9BE72D5AFFE7189676EB49B0A42480058BD6DD316F51F5DB1A';
wwv_flow_imp.g_varchar2_table(10) := '400D0818D793927C9E11700881A900E20FD416A94D4212FE928A0068C88560AF56417903B19E8E8E3746400604A6539B9CBFB0E6196AA3320814AD0C494300F73FB26E060EB976A162F7A3E38D11900E014D680BB08DE2EAC1061C1948275EA702250501';
wwv_flow_imp.g_varchar2_table(11) := 'CC5B58F33545D5AFFABE7C58A353CB71A4AC088C004D7D8BDAACD7024653BFE404A0091CF2FF1C84F6BFA84C063ADE188164402083DAECBC85D58FCA2EACB404400F5EE0D2DE7A04F047E8786304920F01013FC636FCBFD49665155E4A02B863C91B69E9';
wwv_flow_imp.g_varchar2_table(12) := 'C54A356862B6ACC0B15C8C40540868F0B5B4E2C03A6AD351A57739919404507AA6F66900F115E01F239002080880BB4B4FD73EE9A62AD1D6251D01E07DD32F34D01E8856014EC708240302B442406D5B3659A52280F98BABBF0B027E201B482C0F239010';
wwv_flow_imp.g_varchar2_table(13) := '04B06DEB6D3C218525A610690860FEA2EA5B350D7E9918B5B81446404E04B08DFFC7030FD748F3D8BA140440B3A41A002DF549218F9C4D87A54A11040242D19EA436EF943EB1942B45874BEF1BA077F547C42238A76504921881919136EFB90A9E13C083';
wwv_flow_imp.g_varchar2_table(14) := '8B6AC68380EF7B8E040BC008B88900B6F9F90F6F9CE066959DD5E5390184407D0C050BA0E38D11F01302014D69F5FC49414F09805EF001FA261FF08F11F02302E29E444F08C68AA2A7041050957F8F55604ECF08A412023821482360CF54F28C001E58BC';
wwv_flow_imp.g_varchar2_table(15) := '7E16CEFCCFF04C73AE9811900381DB1F5858F325AF44F18C008426BEEB95D25C2F2320130242683FF44A1E4F0860DE37ABCB51E1DBD0F1C608300200B73DF8D76B87F5168878F27B420010826FA0B0021D6F8C00230020426981AF83073F0F0840A38EFF';
wwv_flow_imp.g_varchar2_table(16) := '9007BA72958C80BC0808F81A80DE375C95D1750298BFB8661A6A588E8E374680113010D06058A46F1831AEF8AE1380A6C22CE01F23C008744040D320EED5800E854519E13E0108F7958C120B4EC608788A80F0A06FB84A00F77FEBF9C1380130D15394B9';
wwv_flow_imp.g_varchar2_table(17) := '7246405204700470F3DC87D716BA299EAB04A0B4B67E1195430EC03D6F8C0023D01E0191AEA4FD45FB48278F5D2500ECF9FC6F3E4E5A93CB4E7A04046877C4AA446FD2BB4A00206032F08F116004BA46C0E53EE21A012C59B244C17B1CBEFFEFDAF47C86';
wwv_flow_imp.g_varchar2_table(18) := '1100EC2313A8AFB805856B0470E0DC24EAFCD96E29C6F53002498A40CEFE53E347BB25BB6B0420421ADFFFBB6555AE27A911108A12F5AD726F15557A5B40D4F985E69A5251CBC40919011911D0DCEB2BAE1180065001FC630418819E1110DAD89E132526';
wwv_flow_imp.g_varchar2_table(19) := '859B043028312273298C406A23A08170ED62E91A0108002680D46EB7AC5D821088B6AF24A23A570820B2AC519C0881B90C46C00708F48DF419C7557585003E3C3E2517354943C71B23C008F48C40FA07A74AB27A4ED6FB14AE10405F55E5EFFEF7DE565C';
wwv_flow_imp.g_varchar2_table(20) := '828F10280E0EC870435D57082094A5B9A28C1B80711D8C801B08F4D4671225832B04A0A91A8F001265312EC71708B8D5675C2180D6B420DFFFFBA2D9B2928942C0AD3EE30A01809AC5238044B50C2EC71F08B8D4675C21004D0526007F345BD632410874';
wwv_flow_imp.g_varchar2_table(21) := 'D7671254855E8C2B049091C693803ADA92ED346C65E424138BC52104D2DD993773850082A4103BA9100836D7C1E58BC774176CAE974A36160611D0DC1935BB4200A80E6F122110C4CE5F77F51CD0D59F5CDDD5B310641290C842EE89C204E01ED652D414';
wwv_flow_imp.g_varchar2_table(22) := '8C747E00CD268F066112A8B3C571504604122D131340A21195B8BCE6A66B7A47373A7F6E6E0E900B8B1C26014A133EE6BD1F106002F0839551C7E6A6AB507FED3C86C21B75FC3BBE700390A3703816F434CD4814C631FBA98D0013406ADB57D7AEB9D1E8';
wwv_flow_imp.g_varchar2_table(23) := 'FCE1617F5E5EAEDEF1B33233801C91403EC6E989F1D6A0FEDA39601208A391EA7B25D515F4BB7E2DC106A8AFBB60C250909F67767E239248E0761C0D5824101E09505E230DFBDE23E084044C004EA02A4999ADADCD6DEEF9A9F3DFFE8529909991DE4142';
wwv_flow_imp.g_varchar2_table(24) := '8A231228C8CF8F9C0BCF09845A79113702484A7A4C0029695600556D856B574EEB4B7DA4624E7636DC36730A64A477ECFC749E1C91C06D3327437656F855745A22A432543544A7D9A520024C002968544DD3C29D3FD271D3D2D2E00BB74EEEF4CADF5E7D';
wwv_flow_imp.g_varchar2_table(25) := '2281993326435A20FCFE966A124978FEA07D7A3E4E6E04980092DB7E9D4A5F77F50C1843772104CC983609F272A3FF4F9682FC1C983E6D020821F4F243E6AD847EC83B0F1070AA4A2600A790F5A8DC069CF0B34FDEDD30E93AE8DFAF30666906F62F8249';
wwv_flow_imp.g_varchar2_table(26) := '13ADAF53B704EBA1A1FE62CCE57006B911600290DB3E3149471DBFA9F18A99675845195494C7FF31E61115253074C860B3BCA686CBD0D2D2681E7320F9116002487E1BEA1A6878BF5F87EBF7FA01EE68496FD2F89118EADD76C3A4D1B6A705717930F20E';
wwv_flow_imp.g_varchar2_table(27) := '41EF4AE5DCB220C004208B257A2907757E22012A46280ADC327D220402BD372F953103E7039448593429586F7BA290EA63E72C024E96DEFB16E2A4745C76540834375D051AFE1B89274F1C03F9314CFA19F9BAF20BF27361E2F831E6697AA1889C19C181';
wwv_flow_imp.g_varchar2_table(28) := 'A445800920694D17165C0DB5004DFC858F004A060D80E1E525C661C2FC11381F505232C02C8F4601341A302338909408300124A5D92CA1F5A13FAEFB534C3AAEF7DF788375A5A6B844BA1BA78C01AA83CAD43415E89B02146697BC08300124AFED8086E1';
wwv_flow_imp.g_varchar2_table(29) := 'AD2D4DA606E3C78FEAF6493F33619C017A8A70DCB85166EE565C11B0DF7A9827389030049C2E8809C069841D2B5F8386FA4B66E97D0A0B1C19FA9B154402C32B0681F5BE0040431D3F1B108126293D2680A4341B4053E355A0FB7F43FCA9375C67041DF5';
wwv_flow_imp.g_varchar2_table(30) := '0508983AC57A4028140AF2ABC38E22EE6CE14C00CEE2EB48E91ADEF33736D49A650FAB28833E05F4FFAB6694A381BE45F9503EB4D4ACA3511F89F0BB0226204914509248561635824053E36530D6FC29AAF6F235D8FAD62E57DD95ABD6F7036935804624';
wwv_flow_imp.g_varchar2_table(31) := '240BBBC421E046494C006EA09CC03A349C7D6F6AB8DCA6C4CB97AFC0B9F3175D7554A75D88461C91683832B1C771587E049800E4B7511B099BB0F36B48026D222538A011497393F51E820422B1085120C0041005483225696ABA6A8A7313AEF92FB8FF4E';
wwv_flow_imp.g_varchar2_table(32) := 'F0D2DD78C368531EBE0D30A1489A001340D2980AF4D976BAD292C8420858F4577742E557267BEA167DE34E10429048FAAA043F17A043D1EB9D5B053001B8857402EA69B2BDEA3BEDA6B1D0B74FF41FF94840F59D16515C9403374DB58F02F836A053A024';
wwv_flow_imp.g_varchar2_table(33) := '8D640290D430EDC56A6D6D06FA328F117FD79F4D32829EFB77FDD964538696602384422DE63107E4468009406EFB98D2D9AFFE25838A61FC7525E639AF0313C70D8601038A226268D0DC68CD534422D99314012600490D63178B66FD83B67FEBB9FBAE9B';
wwv_flow_imp.g_varchar2_table(34) := '207CD76D4FE55D9864B9E7AE9B4D01E8F564F380033123E06606260037D18EB3AE96608399332B2B13EEB8D57A21C73C1147E0E4E92B402E8EAC1DB2DC3173146464A6EBF144582D782BA01FF04E6A049800A4364F58B860737D3880FB69378E81ACCCF0';
wwv_flow_imp.g_varchar2_table(35) := '27BBF130E6ED0FAFEF85EFFCB00AEE5DF06BF8D6DFFF4E7714FECE3F54C12B6FEC8BB93C23434E563AD0B2A4714C1F1135C2ECCB8B001380BCB631256BB18D00A64E1E66C6C712680EB6C2AF96BD062B7EF70738FEF959CC6A7F765F83E327CEC2F2FF79';
wwv_flow_imp.g_varchar2_table(36) := '19D36C82604B7C7F0472A34DB6A04D66AC8C374911600290D4308658F4BE3F0DA98DE3C9E3AD97708CB868FC9FFECB06D8BAFDE31E936EDDBE1B286D8F093B4930794299194B6F2AF26A800947D401B7133201B88D788CF5D9AFA4634695417E5E668C25';
wwv_flow_imp.g_varchar2_table(37) := '00ACDDF8211C38F4B9996FECE8A130EFBE3F81EF7D7B96EE283C76F410F3FCFE832760FD0B1F99C7D106FA1464C1F06183CDE4F6918B19C901A910600290CA1C1D8569095AF7FF53278FEC98A08798A3276A614DF55633D52DD3AE832F7F692A940C2A04';
wwv_flow_imp.g_varchar2_table(38) := 'A027F8D051F8CB5FBA11E81C447E55EBB6C0F193972347D17B374EB1646402881E37AF52320178857C14F5D263BF21DBBFF34E99685DA5A3C8AE2779F98FBBC1B885183A6400CCB879AC1EDFD98ECE0D1DD25F3F45795E7EADE75B063DB16D3765E250F3';
wwv_flow_imp.g_varchar2_table(39) := '8809C08442DA001380B4A60168B5757E2114185E511CB3B4C78E9F33F38CBF7E18002DDA43173F3C37FE3A4C13397DECC4F948287A6FE4B0621028AB91C34E60461CFB9D23E0452C138017A847596728D46CA62C2F1F000A0ED7CD882803C74E580450DC';
wwv_flow_imp.g_varchar2_table(40) := '37AFC75CC5C5F9661A7B5E33B287405A4081B2D27E66AA5028688639201F024C00F2D9C494C87EF52C2F1B60C6C712E8575C60258FE2831D9A2D4DDFC25C2B6F0CA18AF281666AFB28C68CE4803408300148638A8E82D83B4FF910EBAADA3165D731C387';
wwv_flow_imp.g_varchar2_table(41) := '9598278F1CB346036664BBC0D1CFAC3423865B33FAED92757B6897D54E62DD66E2939E20C004E009ECD1556A1F3E0F29ED1B5DA676A986E1AD8311B5E3C3FDD0D8D8F590BCA12108EF631A23FD880AEB4A6EC445E30F292D3693D96F63CC480E7440C0AB';
wwv_flow_imp.g_varchar2_table(42) := '082600AF90EFA15EFDCA691B8E97951A6FDBF590B1DD697A6F2027274B8F6D6E6E810D2FBE77C88B760000100049444154038DD8D1F508DBAEA1A11936E2B96030FC2A6F7E7E0EDC3E33BE770E8694F6314B5643ADB80A617FEAD03CC5010910600290C0';
wwv_flow_imp.g_varchar2_table(43) := '089D89405FDAB5C70FEC9F673F8C3A5C54980DDFFC9BBF30D39F3E7D11963EF17FF0EAA69DB06BF767B0131D85973DF1329C3E73D14CF79D455F8682381E3AA2028A8B72C8331D3D15681E70402A049800A43287258C66FBF067666606E00A9D7532C6D0';
wwv_flow_imp.g_varchar2_table(44) := '8C9B2A60D6576EB1E5D2E0E33D47E1B5CD1FC126741406B0AED273EF9D095327598FF5DA324615CC480F603A4B62BB2E7882378910600290C818765134DBF03F3FAFF79FFEFAFAFDD3E1D11F3F004545B655017B8518EED7B7504F33AFF2263CEADD467F';
wwv_flow_imp.g_varchar2_table(45) := '1E6294A06AF1BD5C64E44F75DF4BFD9800BC44BF9BBA35DB08203737AB9B94D19F1A3F7610FCF6DF1E841FFCED6C987FDF1D30F39671789F3F11E6FFE51DF0438CFB0D9EA334D197D8754A63DE815268AA4A1E3B0911600290D02824929D000AF2E35B8F';
wwv_flow_imp.g_varchar2_table(46) := 'A772DABBDCEC0C983EB51CE6DC3D05BEF7CD2FC27717FD29CCF9EA14988671F44E7FFBF4F11E17E45BA316BB2EF196C7F99C418009C0195C7B5DAABDD3E4E565F5BA3CB70BB08F5AECBAB82D07D7D73D024C00DDE3E3D959CD36079097A05B003795C9B3';
wwv_flow_imp.g_varchar2_table(47) := 'CD5BF02D40D7C87B7D8609C06B0B44517F1CAF004451AAB349D2146B15006C2B0CCED6CAA5C78A001340AC88B9945E08AB0375F7F49E4BE2C45C4D83FD89439B2E3117C4191C458009C05178E32F5CD856FE1B1AADB702E32FD1DD9C7699EDBAB82B05D7';
wwv_flow_imp.g_varchar2_table(48) := 'D613024C003D21E4D179617BA7BECDD5D4237962ADB6A1A1C9CC22948019E68085800C21260019ACD0890CF64ED3988423807ADBFB060A1340271696238A09400E3B7490C2DE69EC57D30E09258DB0CB6C1FCD482AAE6FC5620290D4F4F64E73E16272FD';
wwv_flow_imp.g_varchar2_table(49) := 'D79E8A4B9897AFD499C8DAC9CC8CE480140830014861868E4234D9FE0A5C5555387FD1FA3A70C7D472C59C3B5F0724B321556343EC5F1736F2A6AA2F8B5E4C00B258C22647DDD533106CB6AEA074EACCB9E419059C6E272BE9423A911EECE4428009402E';
wwv_flow_imp.g_varchar2_table(50) := '7B40DDD5B3D8F93B5EED4F9FBD927049777E720AC825BAE0D3673ACA1A6CAED7754B745D5C5EEF106002E81D7E09CD1DEEFCD6953F2D60FD09E8E933891D466F7BF728FCEC17CFE9EEED1D9F25548F53676ACDF2EC3A047154433A9A2739E039024C009E';
wwv_flow_imp.g_varchar2_table(51) := '9B202C405DBB61FF90B21298307E54F824EE0F1D3983FBC46D7B0F9C320BDBB3EFA4194E44E0F0514BD609134601E96294CB240060602183CF04E0B91534B87685EEF9AD617F69E940B869EA58B07FD27BEF81E3100A25F0BD7A9CA93754B7BF7864C4C5';
wwv_flow_imp.g_varchar2_table(52) := 'EBB7B486E0A0ED7F08E92323A40BE964944924403AF33B020622DEF94C00DE618F3553E73F0BF6FFFFA38E326DEAF5408FCFE6E7E7427A5AF83620841DEBC8B14B9847EEEDF0D18B2651A5A1EC05F939BA2EA453C920EBBF0D48E76B57CEA232D6A7C8F0';
wwv_flow_imp.g_varchar2_table(53) := '803797116002701970ABBA8E9D9F3A08751421849E8CF6FDFA599F03DF77D01A5AEB0924DCEDB5C938A0BFF5797021044CBFF97A201D0DB199040C24BCF399003CC2BE0E67FBA90318D50F1CD81F3BC8381082BABD110BD0BF9FF539F0BDFBADBFF8B652';
wwv_flow_imp.g_varchar2_table(54) := 'C4196A5B4D9C8574CCB6779F2563FFFED6E7C129A522145D47D2958EC91106840585FDE064D39109C0038B34D45D6CB3D43770603FB8E5E671A0B4EBFC245A715FEB239E9FEE3F4E5189710E8CBCE909C03D7B8F99F215F72D34C3468074245DFBF7B346';
wwv_flow_imp.g_varchar2_table(55) := '07415C226CA8B73E496EA465DF790498009CC7B84D0DCD4D57A1A9D15AD2EBD7AF2F76FEF110503A3745DFA27CC8C8C8D0CBB872A51E0E7F96A08EE2C008E0D0910BD0D0187E0B303333138A0A3BFF2F8380A2C0ADD32700E9AE2B86BBA686CBD0DC740D';
wwv_flow_imp.g_varchar2_table(56) := '43BCB98940E7ADCE4D097C5497AAB6427DDD0553E3DCDC5CBD230494EECD30A46C909967DB3B07CD70AF020E8C00B6BF7BC81469E8104B6633D21608041498316D3CE4E5591F3C6DA83B0FAACA9F10B7C1E478B0FB96E778F5FEAAA0B1BE1657BEC23D8F';
wwv_flow_imp.g_varchar2_table(57) := '66C867CE980469819EDF952F2BED6F02F5E6F63D89F9C056824700A4D51B5B779B72960D1E6086BB0AD00AC78CE91381B0A034B41CD9D820FF4A07C91A8F93310F13804B5609855ADA0C71AF1B3B1CF222FFD9D79308B4969E9595A527ABADBD0A7B0FD0';
wwv_flow_imp.g_varchar2_table(58) := 'F2997E18FF8E7A6CFCB93BE4FC74FF59B876AD418FCFCACA04BA75D10F7AD8E5E766C398D1C3CC54CD8DD7701931FCFF846624071C438009C03168DB16DCDC482FF3847B5D7676168C1C36B86D821E8E86DA6E03B6BF9BA0DB801EEA8CE5F4B6770E98C9';
wwv_flow_imp.g_varchar2_table(59) := 'CBCB63D36DD4F05220D20817A021511256E123DE3B8B001380B3F89AA5B7B484AF8E1431BCA20C941EEEFB299DDD95955A43EACD5B3E86A6E656FB694FC324CB966D9F98324433FC37136380E6032A10130CEA5B4BB051F779E73C024C00CE630C1A4E6C';
wwv_flow_imp.g_varchar2_table(60) := 'E97FF71DA96BC0006B6D3F12D5A357D4270FFAF429D4D3D14CFBEB5BAD2BAE1EE9E1EEB52DFBCDD9FFC2C27CE853604DEC452BD6A0FE1626A1D666D06C7F8D166D1932A79355362600172CD3DA1A6C534B57CB636D127572306654B919BBF1C57781D6DD';
wwv_flow_imp.g_varchar2_table(61) := 'CD088F02215583E75116A3FAEBC70E378231F985856D492384241053019C382E049800E2822DB64CF6AB5946664687A7FDA22DADB4A41872B2B3F5E4E72F5C86F73E4CE083417AA9B1EFDED9F1195CB8187EFF3F3737074A06590FF8C4521AAD8618AB01';
wwv_flow_imp.g_varchar2_table(62) := '944FE51100C1E0B86302701C625AF9B3DEE2CBC619F278AB1442E08C798599BDFA8577CD70CC81042D03D6FCFE3DB3EAB1A32BA037C5F23F0A9B50BA1660027005EAF0EC3F5515507A5EF7A7745DB9F2A103CD27030F1D3E19FF177D2C91BAAAAAC7F81D';
wwv_flow_imp.g_varchar2_table(63) := '3B4FC091A3E1EF0AD0D38A43870CE8314F77096814609D4F808056619E8664AE9C094066EB74225B405160D488A1E699279EDEE4C95C007D9BE0BFB16E4390D1383F412FFB18C7EC2707024C00C961A736528E1C516A8E024E9EBA00AFBDB9BFCD79370E';
wwv_flow_imp.g_varchar2_table(64) := '5ED9BC0FCE9DABD5ABA2E7FE47C4F85C839E91779E23C004E0B90962178086CAE3AF1F61667CF6B937A1B1C9BDA7E7EA1B83B06ACD9B66FD13C68D8CEA9166330307A4418009401A53C4264845F920C88FBC48438FE03EB3B6171382B1550D4FAF79BBCD';
wwv_flow_imp.g_varchar2_table(65) := 'BA7FF990813196E09FE4B26BCA0420BB85BA904FE07CFB944963CCB32FBFFA3E7C9A887704CC123B0FECDE7B1A5EDDF4A17972CAA4B1669803C987001340F2D9CC94B87FBF3E505262CDBCFFE7E32F397A2B4043FF5F3DFEA2597F59E920282ECA378F39';
wwv_flow_imp.g_varchar2_table(66) := '907C083001249FCDDA485C6E7BEFFEC2A52BF0E4AAED6DCE27F2E089A7B7C215DB7FFED9DF4F48643D5C967B083001B88775C26B3A7DF612BCF781F5120E55F0C7373E825D7BC26BF3749C28F7C1EECF61B3ED7D7F2AF77DAC9B64A030BB8E0824430C13';
wwv_flow_imp.g_varchar2_table(67) := '403258A913190F1C3A016FBDB30BD44EFE2BE097384CBF586BBD7DD849F698A2CE5DAC87FFFCAFDF77C843CF02900C070E5B1F02ED908823A4468009406AF374144ED33478FFC37DF0F11EFA2640F86939454983823EA5403EE5B876AD1E7EFECB17A0B9';
wwv_flow_imp.g_varchar2_table(68) := 'A5F79FD7A2577D1FFBF78D505F1FFED61FD561AF0B40838F3F39001FEE3C00241BD5CF2E79106002481E5B414B6B2B6C7D6B371C3F610DF10369195050540669E959905740CB7142D7E8E867A7E1F195AFEBE17877442FBF5AFA2A9CF8FC5CA408A1D741';
wwv_flow_imp.g_varchar2_table(69) := '75519D5477E4041C3DF6B92E5B6B6BEF49C728937DE7116002701EE384D4A07F03E0CD0FE0FC05EBABC0E9193910BE1A07F43AA86366E7F4D1C3B4DBF6F62750F3D22E0A7674619EE8186F8B59FFFC47F0FE07D65386D9B9453AD150124509E875930C74';
wwv_flow_imp.g_varchar2_table(70) := '4C8E647B63CB0E68686CA6435FBB64519E0920092C75A9F61A6CDABC03EAEAACFF0FCCCCCA87FCC21210A2AD09B373FB82BD533EB3FA75D8FCD6E18E5AD2E5BD63AC19B369EB01A85AB7D93CA632B3738ACC630A50DD2403C942C7E4AEE2EDC7A6CDEF43';
wwv_flow_imp.g_varchar2_table(71) := 'EDE53A3A642739026D5B8FE4C2FA51BC93A72FE0ECFB0E0806AD8F8A5027CFCDB7D6FFDBE342B7024A20DD8CFECDD217E01F1FAB81AAEAF7A1FAC59DBA3B78D8BA8D3878E8941E47E756619A1F3D5A0D8FAF78C9CC4F6551996644BB00C9423219D124EB';
wwv_flow_imp.g_varchar2_table(72) := 'E6ADEF03C96EC4B12F27024C0072DA45976ADF81E3F0CE7BBBDB4CAE51476C7F25D613DB76FA95B96010081CA61BD19FEE3B06EB366C8367D7BCA1BB83874F1AA780C246FC7A4CB377BFF5A1112A83AEF254A699A19300C944B219A75455D365DF77F084';
wwv_flow_imp.g_varchar2_table(73) := '11C5BE84083001486814FA1ACEBB1FEC853D7BAD3FDAA00E588033FD19999DFFDB4E7B356882AE303239D8FE5CB4C76969995058340402B6D10474F323D9484692D548B6E7D383FAAA05E964C4A5BA9F4CFA31014866AD604B0B6CD9BE0B3EFFFCB42999';
wwv_flow_imp.g_varchar2_table(74) := '12488382383AB3A2603E248D3C1C0DD0153A3D2317D2D2B37547E78C0A286CC4531A4A4B79A84E9AEC33D245E3A7E16A849E0F6536D2D3AA05E944AB18461CFB7220C00420871D7429EA1A9A60D39B3BE0E2C5F07BF61419A0AB709F3208447915A63CED';
wwv_flow_imp.g_varchar2_table(75) := '5D46662ED03D7A7EE12028E8335877E9B88260A44BCFA4D584703CA5A1B494C7381FAB4FB21690CC283B447EA4D3EBB88AD110F9EFC048347B1E23C004E0B1018CEACF9CBB04AFE3EC7943BDF54DFC74BC6217E0155CD8EEE58DF4B2FB347220D9D36D44';
wwv_flow_imp.g_varchar2_table(76) := '43AB189B7035E3EC798BE064D723D5E56302F0D0C2CD38B35F7BA50EEF91F7C2F6B777420B0EFF0D7132B30B71990F27F244140BF646A6587C878AB58B2084401D4A2033BBC08CA615826D6F7DA4EB4CBA3707DDFB908929848381642B9A09C0658B5DAA';
wwv_flow_imp.g_varchar2_table(77) := 'BD0CD5CFBFAEBB175FDE8657FDF7E0F809EB7E1F40404E6E31E4E6F503477F3D3C0790C8BA73F3FAEB3A01EA06911FE9FCFAE6F7E0C597B7EA581026976AC39F178F2461CF050498005C0059B47B58A7AB2AE97EBF00EFD1B36C4FF37595B6B7F1425843';
wwv_flow_imp.g_varchar2_table(78) := '0001CE3703D289740BA4654034BF68318BA62C4ED33502CE5BBEEBBA7D73262D3D1B4437241048CB841CBCE217C631D31F2F88E9383168E4EDCD849F5146347E1AAE1014E2B222E94A3A779547E09C877DEEA0AB741CDF7B0494DE17C125F484004D88F5';
wwv_flow_imp.g_varchar2_table(79) := '29AED067DFF3F10A4FAE0027F7FAF42D87BEFD47E05A7B1964E13D3FB8F84B47522A42998AFA0DC365C12C176B065DD742243BD29D30202CF24D5C0603C9D51D6182A4BF6414CB1D0210104A46701229B310023B5A3650C723475743C5B6569EC8BAA22D';
wwv_flow_imp.g_varchar2_table(80) := '8BAEB45E7734C280B0204CC8A52131452B7F4AA76B15D6B3DF0E2AEA0E01B408DF13808336E4A2531001BC6374A5CFB842006E299382ED8055F22B024A53EA1000B8A48C5FDB0AEBED3D02899620AD35A335D16576569E2B2300B794E94C418E63049211';
wwv_flow_imp.g_varchar2_table(81) := '01A1B873DBEC0E010415EBF9D664B406CBCC08B88C40A029852601EB2B5A12F7895A970DC1D531025E20E0569F716504B06EC97DB4A4C11F8AF3A225719D8E23E04005CD913EE340D16D8B74850022559E89F8EC31028C40F708B8D6575C230021C035A5';
wwv_flow_imp.g_varchar2_table(82) := 'BAC796CF3202D223F0995B12BA46009AA63101B86555AE27B91170F162E91A018026F625B755587A46A023028EC4A8907A2300106227F08F1160047A46C0C5BEE2DA0840535526809E4DCF29180170B3AFB8460063067F72006DABA2E38D116004BA46A0';
wwv_flow_imp.g_varchar2_table(83) := '21D257BA4E91C033AE11C092254BB0F38B8309949D8B62043C45C089CA71B5ECE3705F71A2F48E65BA46007AD54B62F853000006394944415442E3DB001D08DE31025D20A081AB7DC4550210AAD80CFC63041881AE11D044EA120084B41751730D1D6F8C';
wwv_flow_imp.g_varchar2_table(84) := '0023D011012D941E78A163B47331AE8E00563D51F939F6FEDDCEA9C3253302EE20E0442DD437D63C7ECF2927CAEEAA4C57098084101AFC817C768C0023D016012FFA86EB04A0089509A0ADDDF98811D011100A6C04977FAE13408E7A693BEA780C1D6F8C';
wwv_flow_imp.g_varchar2_table(85) := '0023602170FCE4C0BE3BAC437742AE13C0CA950BE9CFE09E72473DAE8511483C020E95F8E4E62577BAF21D40BBFCAE13805E79009E441FE73C70CF1B23C008B406D4D0EFBC80C11302A8FAAF4ABA0578D50B85B94E46403E04B4979E5979DF712FE4F284';
wwv_flow_imp.g_varchar2_table(86) := '00485105D45F90CF8E11F03B020A68BFF60A03CF08E0D9E573E9A9C057BC529CEB6504E241C0813CAF44FA820345F75CA4670440A2299AF801F9EC1801BF2220D4C0DF7BA9BBA704F0EC8AD9BB00B4E7BD0480EB6604BC43407B7ED5CA591F7B573F80A7';
wwv_flow_imp.g_varchar2_table(87) := '04408A2B8AFA7DF4EBD0F1C608F8070101F52135F03DAF15F69C009E5D7ADF2121E0275E03C1F533023D2190C8F34215DF7F6EE5BD871359663C65794E002474F042E8B720601B85D931023E4060FBAA15B397CBA0A71404B06EDD7D214584BE8180F0AD';
wwv_flow_imp.g_varchar2_table(88) := '0082C05B0A23A00FFD95AFCBA2A114044060D0AD8006DA431856D1F1C608A42202AAD0E0411986FE06B8D2100009B47AF99C6A24817FA4303B4640260412210BCE757D6FD5F2CA0D89282B5165484500A41492C02F40037A57800ED93102298280F8CDAA';
wwv_flow_imp.g_varchar2_table(89) := '65959E3DF1D71588D21100099AA75D5888FE1FD1F1C608243D021AC086D18376FF9D8C8A484900F4CA709E9A310B84562323682C1323103D02DAF3F96AC682254BE8B3F8D1E7722BA5940440CAAF5CF9D586AA6595734083C7E8981D23E01502F1D6AB09';
wwv_flow_imp.g_varchar2_table(90) := 'F8D7AAE595F7525B8EB70CA7F3494B0061C58556B5A2F227A0095A360985E378CF08488F4010402C58BDACF247E86B20F14F91583653B4AA15B39F5655ED5600B11FF8C708488D80F6B1AA69B7562D9FBD4A6A3123C225050190AC6B56CE7937A3E9CA64';
wwv_flow_imp.g_varchar2_table(91) := '0CFF0C1D7D560C3DDE18016910A036F9689E7A71EA9A15735CFFB65FBC28240D0190824F3DF58DA6AAE5954B4221311E04FC9EE2D831024E221045D91A8EF1D72B4AE87A6C9B3FA509EC28F2489324A908C040EDB9FF9E7D002708EF160033318EBE328C';
wwv_flow_imp.g_varchar2_table(92) := '1E6F8C80BB08682036ABA04D5DBDBC722E3DC9EA6EED89A92D2909C0507DD5F2CAEDC8BA3385805B30EE1974CDE87863049C4480DAD82ABAF8AC5E3EFBCE35CBE77CE464654E979DD4046080B36A59E53B48045FD3D48C325C31A02FAC78FE9AA5211BFB';
wwv_flow_imp.g_varchar2_table(93) := '2983C011ECF43FA036866D6D015D7C5241B3942000C310AB577EF502AE18FC071A682480F62534D8523C77021D6F8C40CC0860066A3BCB344D7C11DBD408ECF4FF466D0CE353664B2902B05BA56AF99C57562DAFFC261A6EA8A289C93869481F1DD9827E';
wwv_flow_imp.g_varchar2_table(94) := 'BD3D1D871901130101D436B6E0F14F4151A650DB41F7C8EA15B353F6B1F494250034A2B9D1B70771D2F03134E6EDE8E721098CC05B854A21C43F037D9350D376626257FF9515EBE3CD3B044E816E73ED79BD0D68A232A42A23A96DE86D6479E5A3554BEF';
wwv_flow_imp.g_varchar2_table(95) := 'A536E19D842ED5EC0B02688F251AFA08DE2AD4AC5A36FB9FAA96CF9955B5620EB17D291A5F14A76767653429452D4AA8445502430369E9C3B1B18C165A689C26B4498A0A53412837B2930F03B20DD9886C059A369A6C4736245B924DC9B6646374A5619B';
wwv_flow_imp.g_varchar2_table(96) := 'CF99A5B78115B36B9E93E0F35CEDDBA91BC7BE2480EE80FDED6FEF6A7EEAA97B2FAF5B7ADF99354B679D78E6F1BB8F626339B86AC57D9FAE5E3667F7B32B2B3FAC5A76EF07ECE4C3806C4336225B91CDC87664C375684BB229D9B63BDBDBCFF925CC04E0';
wwv_flow_imp.g_varchar2_table(97) := '174BB39E8C402708300174020A4731027E418009C02F96663D19814E106002E804148EF237027ED29E09C04FD6665D198176083001B403840F19013F21C004E0276BB3AE8C403B049800DA01C287FE46C06FDA3301F8CDE2AC2F2360438009C006060719';
wwv_flow_imp.g_varchar2_table(98) := '01BF21C004E0378BB3BE8C800D0126001B181CF437027ED49E09C08F56679D198108024C001120D86304FC880013801FADCE3A3302110498002240B0E76F04FCAA3D13805F2DCF7A33028800130082C01B23E057049800FC6A79D69B11400498001004DE';
wwv_flow_imp.g_varchar2_table(99) := 'FC8D809FB56702F0B3F55977DF23C004E0FB26C000F8190126003F5B9F75F73D024C00BE6F02FE06C0EFDAFF3F000000FFFF0950C02F0000000649444154030035F399C4FA9F998E0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(7530479788442717)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260712121926Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121926Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF40000023D494441547801EC544D6B1341187EB2693EDA26DB6DBE4DEB416D4B2AF1A856D07F207AF71778D753F1E81FF0EA0F10049582E4D283052BA64551ABA60A4209';
wwv_flow_imp.g_varchar2_table(2) := '16C434D9C424D46477B2BBCE0CEC82F49099EDA15076D967DE79DF79E6D987777756B973F7B973925070C2576020E840D081E375C0EA030CC738CAFE0D3887B87665092B979700FBD0B7055F060819E0D2F23CE2B12826E351942FCE614486BE4C28F2BB';
wwv_flow_imp.g_varchar2_table(3) := '1C58A48796DEC5F71FFB1CBADEA3B5AEBC14DD216DC034FFE2C1FDDB78B87AF33FACDEBB05620EA8A4DC2D6D409D0A61793107C31CE1D1E3571C6C5EA2B5C4A4DCC3195BDAC0E2429EED83DE19209751393A7F065042212C5CC8F2359941DA402695E0FA';
wwv_flow_imp.g_varchar2_table(4) := 'C57C12F3C514CECEA551C825792D3D3BCDA3CC206DC0304C4FFFC6CA795CBF7ACECB09B1BCB9E844CA8031ECA3FEB3E96977FB4330B885FA7E038CE3E62251D800A167BF5C2AC0208EA7FBEB770F0CAC603B0E86868D72290FC6653511081B9855C3F49D';
wwv_flow_imp.g_varchar2_table(5) := '6790D25454DFD78F6857DFD5914D6B9493C54C425816C2CCE4748C3FB478268527CFDE828C6C9EB3C1A0EFFEE98B2A8A85344B31A3C6791419840D801E3326A88414FA0B8E63ADB2C3528EB5CA27FA4B9EA29410CF013762EC256E804AD98E8D9DAF7B68';
wwv_flow_imp.g_varchar2_table(6) := 'B62DBC5CFF828DCD6FD878BD8BCA7A0D0D9DE0736D0F0EFD162855F81636D06AB5F1666B17CD8E8DF0440C91A886ED0F0D6C7F3C4024A6F1DA41DBC6E6560D8C2BEA40D8007134584E12E170C4D39E88C4C1E016D81AE330AE5B1B17850D8C13F2BB1E18';
wwv_flow_imp.g_varchar2_table(7) := '083A70FA3B30EE74FC030000FFFF1531E6AC0000000649444154030023570A108A4EAB650000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(7529676848442701)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260712121926Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121926Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA00001000494441547801ECBD07941C497ADFF965557BEF1DBCC7C08C05066376B9BBE2D22C29DD91A27822F9F8F6F8F8288ABC939E4EBC7BA7131F8F7C3422253A91D2';
wwv_flow_imp.g_varchar2_table(2) := 'D28914C5DDE572DDAC9D9D593B1E030CDCC09B01066E06DE37BABBBC5144351A68342A23B3AACBA4F935BABAAAC27EDFEF2B54FE33223232F233BFF4A53C0F18F019E033C06780CF009F81707D0622C20F04200001084000022123208200085DC8711802';
wwv_flow_imp.g_varchar2_table(3) := '10800004208000E03300010840000210081D01ED3023009A020F08400002108040C8082000421670DC850004200081B01398F61F0130CD81BF1080000420008150114000842ADC380B0108400002612730E33F02608604CF108000042000811011400084';
wwv_flow_imp.g_varchar2_table(4) := '28D8B80A0108400002612770CF7F04C03D16BC82000420000108848600022034A1C6510840000210083B81D9FE230066D3E03504200001084020240410002109346E420002108040D809DCEF3F02E07E1EBC8300042000010884820002201461C6490840';
wwv_flow_imp.g_varchar2_table(5) := '000210083B81B9FE2300E612E13D04200001084020040410002108322E420002108040D8093CE83F02E04126A440000210800004024F000110F810E3200420000108849D4031FF1100C5A890060108400002100838010440C0038C7B1080000420107602';
wwv_flow_imp.g_varchar2_table(6) := 'C5FD470014E7422A04200001084020D0041000810E2FCE410002108040D809D8F98F00B023433A04200001084020C0041000010E2EAE410002108040D809D8FB8F00B067430E04200001084020B0041000810D2D8E410002108040D80998FC470098E890';
wwv_flow_imp.g_varchar2_table(7) := '07010840000210082801044040038B5B108000042010760266FF1100663EE4420002108000040249000110C8B0E2140420000108849D8093FF08002742E4430002108000040248000110C0A0E2120420000108849D80B3FF080067469480000420000108';
wwv_flow_imp.g_varchar2_table(8) := '048E0002207021C5210840000210083B0137FE2300DC50A20C0420000108402060041000010B28EE400002108040D809B8F31F01E08E13A5200001084000028122800008543871060210800004C24EC0ADFF0800B7A42807010840000210081001044080';
wwv_flow_imp.g_varchar2_table(9) := '82892B1080000420107602EEFD4700B8674549084000021080406008200002134A1C810004200081B01328C57F044029B4280B01084000021008080104404002891B1080000420107602A5F98F00288D17A5210001084000028120800008441871020210';
wwv_flow_imp.g_varchar2_table(10) := '800004C24EA054FF1100A512A33C04200001084020000410000108222E400002108040D80994EE3F02A07466D480000420000108F89E0002C0F721C4010840000210083B8172FC470094438D3A108000042000019F134000F83C80980F01084000026127';
wwv_flow_imp.g_varchar2_table(11) := '509EFF0880F2B8510B021080000420E06B0208005F870FE3210001084020EC04CAF51F01502E39EA410002108000047C4C0001E0E3E0613A0420000108849D40F9FE2300CA67474D084000021080806F0920007C1B3A0C870004200081B013988FFF0880';
wwv_flow_imp.g_varchar2_table(12) := 'F9D0A32E042000010840C0A70410003E0D1C66430002108040D809CCCF7F04C0FCF8511B021080000420E04B0208005F860DA3210001084020EC04E6EB3F0260BE04A90F010840000210F0210104800F8386C91080000420107602F3F71F01307F86B400';
wwv_flow_imp.g_varchar2_table(13) := '010840000210F01D010480EF4286C1108000042010760295F01F0150098AB401010840000210F019010480CF0286B9108000042010760295F11F0150198EB402010840000210F015010480AFC285B1108000042010760295F21F01502992B40301084000';
wwv_flow_imp.g_varchar2_table(14) := '0210F0110104808F8285A9108000042010760295F31F01503996B404010840000210F00D0104806F4285A1108000042010760295F41F0150499AB405010840000210F0090104804F028599108000042010760295F51F0150599EB406010840000210F005';
wwv_flow_imp.g_varchar2_table(15) := '0104802FC28491108000042010760295F61F015069A2B407010840000210F0010104800F828489108000042010760295F71F015079A6B408010840000210F03C010480E74384811080000420107602D5F01F01500DAAB409010840000210F038010480C7';
wwv_flow_imp.g_varchar2_table(16) := '0384791080000420107602D5F11F01501DAEB40A010840000210F034010480A7C383711080000420107602D5F21F01502DB2B40B010840000210F030010480878383691080000420107602D5F31F01503DB6B40C010840000210F02C0104806743836110';
wwv_flow_imp.g_varchar2_table(17) := '80000420107602D5F41F01504DBAB40D010840000210F028010480470383591080000420107602D5F51F01505DBEB40E010840000210F02401048027C382511080000420107602D5F61F01506DC2B40F010840000210F020010480078382491080000420';
wwv_flow_imp.g_varchar2_table(18) := '107602D5F71F01507DC6F400010840000210F01C010480E74282411080000420107602B5F01F01500BCAF401010840000210F018010480C70282391080000420107602B5F11F01501BCEF402010840000210F014010480A7C281311080000420107602B5';
wwv_flow_imp.g_varchar2_table(19) := 'F21F01502BD2F403010840000210F010010480878281291080000420107602B5F31F01503BD6F404010840000210F00C010480674281211080000420107602B5F41F01504BDAF405010840000210F008010480470281191080000420107602B5F51F0150';
wwv_flow_imp.g_varchar2_table(20) := '5BDEF406010840000210F00401048027C280111080000420107602B5F61F01506BE2F407010840000210F000010480078280091080000420107602B5F71F01507BE6F408010840000210A83B010440DD4380011080000420107602F5F01F01500FEAF409';
wwv_flow_imp.g_varchar2_table(21) := '010840000210A8330104409D0340F71080000420107602F5F11F01501FEEF40A010840000210A82B0104405DF1D3390420000108849D40BDFC4700D48B3CFD42000210800004EA4800015047F8740D01084000026127503FFF1100F5634FCF1080000420';
wwv_flow_imp.g_varchar2_table(22) := '0081BA114000D40D3D1D430002108040D809D4D37F04403DE9D337042000010840A04E04100075024FB71080000420107602F5F51F01505FFEF40E010840000210A80B0104405DB0D32904BC4220EF1543B00302A123506F871100F58E00FD43A0C604F2';
wwv_flow_imp.g_varchar2_table(23) := 'F9BCC4633765E2D605B9AD1E89F8B8E472991A5B4177108040BD092000EA1D01FA87400D0964334919BFF99EC4A76E483A1D974C3A21B1C96B4A089C978CCAABA1297405819013A8BFFB0880FAC7000B20501302A9E4944C8C5F925CF6C1B37D9D36317E';
wwv_flow_imp.g_varchar2_table(24) := '5174999A184327108040DD092000EA1E020C8040F509A45371999ABC6A1CEACFE7B285D1004440F5E3410F10F00201048017A2800D10A8228164E2B64CDEBE28FA00EFD48D5E0B3079FBB22413134E45C98700047C4E0001E0F300623E044C04F402BFD8';
wwv_flow_imp.g_varchar2_table(25) := 'E475C9E74B59ED9F2F8C042462B74C4D93070108944DC01B151100DE88035640A0E204EE1DFC7325B79DCFE7243675A370B540C995A9000108F8820002C01761C2480894462036794D62EACC5FA49433FFB97DE40B570B4CA9B6E6E6F01E0210289F8057';
wwv_flow_imp.g_varchar2_table(26) := '6A2200BC1209EC80400508E4D5507F6CEABA24E2B7556BF339F8ABEA777E93F171999AB87AE71D4F10804050082000821249FC808022108FDD904461EEDEF9E0DFDADA2CD168A3AAE5FC9B4CDCBE33A2E05C9612108080898077F21000DE89059640601E';
wwv_flow_imp.g_varchar2_table(27) := '04F285B3F4446CDC551B0303FDF2E10F3E26DFF781C765C1E890AB3A89F82DD1A30BAE0A53080210F03C010480E7438481103013D0C3FEF1A99BA2CFD2DDCCF90F0EF6C9964D0F495B6B9BF4F5B4CBA38FAC96A1A17E73277772B5C0884FDDB8F38E2708';
wwv_flow_imp.g_varchar2_table(28) := '40A054025E2A8F00F05234B005026510884D5E73BD5A7F7878409E7DEA6169696EBADB937EFDEC968D3232327837CDFE45BED01722C09E103910F00B0104805F22859D109843409FF94F4D5C5167FEEE36ED195543FD4F6F5E27D1C883FFED232AED8947';
wwv_flow_imp.g_varchar2_table(29) := 'D7CAE245A3737A29FE361EBBA9A61CAE14CF24150210B021E0ADE407BF09BC651FD6400002C508E4F599F88D3B077FE7057F63EAEC5E0FFB47A30DC55A2BA4B53437CA231B57CA98120A8504873FC9C4046B021C18910D012F13400078393AD806011B02';
wwv_flow_imp.g_varchar2_table(30) := 'B1BBABFD6D0ACC4A5EB86044B66C5E2FD14874566AF1974D8D8DB265D33A5930365CBCC09CD444EC56614A604E326F2100812204BC968400F05A44B007020E049289DB9288BB5BEDAF0FE49B1E5F237A88DFA1D9BBD9BAECE38FAE91A54BC6EEA6995E24';
wwv_flow_imp.g_varchar2_table(31) := 'D474805B7B4CED90070108D4960002A0B6BCE90D02F322904EC5A4B0339F9A02706A481FFC0BC3FE2ECEFCE7B6D5D4D8200F6F58A946029C2F11D46B116253D7259D8ECF6D86F71080C05D02DE7B8100F05E4CB008024509140EFE7A473E1707FFA54B16';
wwv_flow_imp.g_varchar2_table(32) := 'C8939B1E12CB2AFFBF786343836CD9B45E162F723112A06CD277114404083F10F00D81F2BF1D7CE3228642C0FF04B2D9943AF3BF2AFA76BD4EDEE833FFC71E592591791CFC67FAB02C4B1E7D78A59A0E58309364FBAC6F371C9BBC2EDA56DB42644020A4';
wwv_flow_imp.g_varchar2_table(33) := '04BCE83602C08B51C12608CC22A00FFA13E3172597CDCC4A2DFE727868409DB5AFABC8C17FA6073D12B061DD0A191AEC9B49B27DCE66923279FB8AE4F3A5DF81D0B65132200081AA10400054052B8D42A03204F481545FEBEFE6E0DFD5D5294F3EB1562C';
wwv_flow_imp.g_varchar2_table(34) := 'CBAA4CE7B35A696ED2D301EBA4A3BD7D566AF1975A044CA9A98ABC9A16285E825408848D8037FD450078332E5805810201BDE02F9D725E5CD7DCDC284F3FB95E9A9AEEEDF05768A0827F74DB9B1E7F48DA5A5B1D5B4D252745DF45D0B12005200081BA11';
wwv_flow_imp.g_varchar2_table(35) := '4000D40D3D1D43C04C405F5A974A38EFF2D7A40EFE4F3EB1519D9DB7991BAC406E7F5F973CF2F01A89469DF714884DCD6C5454818E6902023E26E055D311005E8D0C76859A402A35257175007582108958F2D8C6B56A7EBEC7A968C5F2C746FAE4B147D6';
wwv_flow_imp.g_varchar2_table(36) := 'A8A906A7AF8F7C61E1A29E12A858E734040108548C80D3FFE08A7544431080803B027AD19F5E4D9F77B1904E9F8D2F5CE0E6263EEEFA765B6AC9A2117968ED72E7E279250226F4D50B59E7B2948040200978D7290480776383652124A00FFAFA7AFA5C36';
wwv_flow_imp.g_varchar2_table(37) := 'EDE8FDCA158B65D99251C772D52AF0D0EA45B27CD922C7E6339924370E72A4440108D49E0002A0F6CCE911023604F40D7E6E4A269DB0C9BF973C36362C1BD72F174BFDBB975AEB57963CBA71A5ABDD02D3A918F70CA87578E8CF1304BC6C0402C0CBD1C1';
wwv_flow_imp.g_varchar2_table(38) := 'B6501148C46F4B22E6BCC7FF407F8F9A835F5DD16BFDCB056D59966C7EFC21E9EFEF756C42AF69D042C0B120052000819A104000D404339D40C04C209B49DD59F467BEB56F7B7BBB6C7A7C9DB434359A1BAC61AEBE2260F313EBA4BBABC3B1577D59A3F6';
wwv_flow_imp.g_varchar2_table(39) := 'D5B1200520100802DE760201E0EDF8605D0808E472D9C21CB99EFF37B91B6D6890A736AF93F6B61653B1BAE4B5B736AB5189B5D2ECB00F815EDB109BBC56171BE9140210B89F0002E07E1EBC8340CD09C4636ADE3F9374EC77D363EBA4A7BBD3B15CBD0A';
wwv_flow_imp.g_varchar2_table(40) := 'E83D021E7F6CAD63F7E9749CF5008E94281004025EF70101E0F508615FA009241313E266B39FB5AB97CAC2B17ECFB3181DEE97654B9DAF0CD0A247EF16E879873010020126800008707071CDDB04F470787CEABAE38D73BAD559FF9AD54B9433967A78FB';
wwv_flow_imp.g_varchar2_table(41) := 'D7B22CD9B87E9974743ADC33209F2FAC79C8E59C6F70E46D8FB10E027604BC9F8E00F07E8CB0308004F47CFFD4A4F306394D8D8DF2E4A6F5D2E062EB5DAF60D2770FDCFCF83A696C6C309A94CDA625C67A0023233221504D0208806AD2A56D08D81088C7';
wwv_flow_imp.g_varchar2_table(42) := '6E49DAE1263F961591750FAD94AE8E369B56BC9BDCD7D3298F6E5CED68602A3925A9E4A463A4AEDF520000100049444154390A40C06F04FC602F02C00F51C2C64011D007FE44FC96A34F4B978CCA8A65A38EE5BC5A60F1A211593036EC689E1E05E0D240';
wwv_flow_imp.g_varchar2_table(43) := '474C148040C50920002A8E940621604F40CF794F4D5C1135F16F5F48E5747474A8B9F415EA95BF7F1F7F748D747799AF5CC8DDB90CD2DF9E623D046613F0C76B04803FE284950121905043FF3987856F0D0D0DB2E9F135A2E7D2FDEE7653634341C83439';
wwv_flow_imp.g_varchar2_table(44) := '6C5C94C924251177DE05D1EF3CB01F025E228000F05234B025D004526ABE3B91B8EDE8E3EA554BA5BFB7DBB19C5F0A0C0FF5C9DA354B1DCD8D4D5D172D041C0B5200021E27E017F310007E891476FA9A40BE70D9DB75C7A1FFB1D12159B3D2F93A7ABFC1';
wwv_flow_imp.g_varchar2_table(45) := '58B96C818C0C3BEC6350607453CD8EE4FCE61EF642C097041000BE0C1B46FB8D406CEA9AE8CBDE4C7637B7B4C886752B2412F1FEF5FE263F8AE5E92B1A1E7F74AD74749AAF6848A7A6444F93146B833408F883807FAC4400F8275658EA5302A9E4A424E3';
wwv_flow_imp.g_varchar2_table(46) := 'E6A17FCBB264933A407676B4FAD44B67B35B5B9A65FDDA95128D98BF76F42592D96CCAB9414A400002F32260FE9F38AFA6A90C0108E8057F6ECE68972ED143E47D8107B660B45F162D1A73F0332FB149E7E9128746C886405D08F8A95304809FA285ADBE';
wwv_flow_imp.g_varchar2_table(47) := '23A00FFE4E0BDB3A3ADA64CD2ABDD5AFEFDC2BD960CBB2E4A1354B24EAB0B3613A1593743A5172FB54800004DC134000B8674549089444209B4949C261E85F37B87AE532696F6BD62F43F1686B6D960DEB57295FCD6B1D6253D7259FCBAA72FC42C02F04';
wwv_flow_imp.g_varchar2_table(48) := 'FC652702C05FF1C25A9F1028ACFA8FDD50D6E6D5C3FE77686850962C1AB42F10D01CBDC3E1C080F9AA806C26295A040414016E41A0EE041000750F01060491805ECD9E4AC68CAE45A211D9B85EAFFA0FDF7F434B2C59B766A93436361A19E9DB256B2160';
wwv_flow_imp.g_varchar2_table(49) := '2C4426043C42C06F6684EF9BC76F11C25EDF11D067FF7AEE5FC47CF6BF64D102E9E9325F16E73BE74B307870A04B562C5BE458435F15A0993A16A4000420501201044049B8280C01670289D84DC71DEDF45EFF6BD72C716E2CE02556AF5A28CDCDCD462F';
wwv_flow_imp.g_varchar2_table(50) := 'F565947A44C558884C08D49D80FF0C4000F82F6658EC6102B96C5A122EF6B4DFB87E95B4B53479D893DA98A6EF77B061DD4AD599A51EF6BFFAB2404601ECF990038172082000CAA1461D08D810D007FF7CDEBC95EDC8C8B08C0C0767AF7F1B14AE93972C';
wwv_flow_imp.g_varchar2_table(51) := '1A9281810163F9C27E0A2E6EA16C6C844C085491801F9B4600F8316AD8EC4902E9745C924E37FBB12CD9F0D0728958FCD79B09A26559B27EDD32C705817A5D8593B89A6993670840C09900DF42CE8C2801015704E253FA4636E6857F2B972D91EEAEE06E';
wwv_flow_imp.g_varchar2_table(52) := 'F7EB0A54914203BDEDB26AE5922239F792F4C15F8B807B29BC82805708F8D30E04803FE386D51E23904927249331EF5CD7D3DD292B578C78CC72EF98B378E1A0B4B79BC5513231215C16E89D986189BF092000FC1D3FACF70881D894F3DEF5C3C3BDD2D2';
wwv_flow_imp.g_varchar2_table(53) := 'D228F97C96C7030C72D2D2DC280BC7068D11D56B0192894963193221506B027EED0F01E0D7C861B76708A49253A247009C0C7AE7F87BF2FC8B6FCAB7BFB753BEFDD22EF9168FBB0CBEF9BD1DF2FC37B7CA3B27DE73C2585867A1858063410A4000024602';
wwv_flow_imp.g_varchar2_table(54) := '0800231E3221602690CFE725E9E2B2BF9956B2D99C4CC5E232351593188FBB0CE2B1846836339C4CCFF97C4EE2B19BA622E441A08604FCDB1502C0BFB1C3720F1048252725ED30F7EF01330367C2F45A8054E0FCC22108D4920002A096B4E92B700412B1';
wwv_flow_imp.g_varchar2_table(55) := '5BA226F403E797E71D52232F7ACF05CFDB89818127E0670711007E8E1EB6D795404ACDFD67B39C85D62B08293DFA928ED7AB7BFA8580EF0920007C1F421CA807013D0F9D88ABB3FF7A744E9F05023A06C9F8EDC26BFE40A03E04FCDD2B02C0DFF1C3FA3A';
wwv_flow_imp.g_varchar2_table(56) := '1148A9B37F372BFFEB645E68BA4DA76292CB6543E32F8E42A09204100095A4495B2121E06EE57F7B7B9B0C0DF5CA308FB2180C0DF6497B877963A0C22880D3F6CB21F954E266ED09F8BD470480DF2388FD3527904EC5259B4D1BFBFDA18F3E219FFACB5F';
wwv_flow_imp.g_varchar2_table(57) := '94BFFCE39F93BFE0511683BFFACFFFBBFCED27FE85FCE0F73F6A649D540240DF85D158884C0840E00102088007909000013381849A77D6679E76A5DADB9AE5FB9E592B11CB124B15E221657110F5D3D410951FF98147A5CDB045702E9B916492DD01152E';
wwv_flow_imp.g_varchar2_table(58) := '7E6B4AC0FF9D2100FC1F433CA82181AC3AF34FAB796753972B572C9495CBFA4D45C82B81C0E870973CBC6EA9B1861E05C8E7CD376232364026044248000110C2A0E372F904F48146C4FE40D3D818958F7E78A334A9E7F27BA1E66C029AE547BE6FDDECA4';
wwv_flow_imp.g_varchar2_table(59) := '075EE7B2594925261E48270102D52210847611004188223ED48440369392A4C3416668B047D6AF1DA9893D61EA64EDAA6159BA78D8E0725E128971956F2FCE5426BF1080C02C02088059307809011381743A2679C325677AAEFFC31FD828BDDDE695EBA6';
wwv_flow_imp.g_varchar2_table(60) := '3EC82B4EA0A3BD493EF8CCFAE2997752B540CB289176E72D4F10A8228160348D0008461CF1A2060452C998B19781811ED9FCF832631932CB23A017547EF803ABA5BBBBC3D880DE9FC158804C0840E02E0104C05D14BC80803D814C262959F5B02F21F2F0';
wwv_flow_imp.g_varchar2_table(61) := '8665B264618FA90879F320D0D5D92C4F3EB1DAD8423A3525D9ACF9124D63036442C00581A0144100042592F85155027ACBD97C3E67DB47341A91679F321F9C6C2B93E18A408362FCD10FEBC5807AB2A578956C262D9974A27826A91080C07D041000F7E1';
wwv_flow_imp.g_varchar2_table(62) := 'E00D041E24A0B79A4D395C67BE6AE54259B57CE0C1CAA45494C0A205BDB276F512439B794925A70CF9644160BE0482531F01109C58E249950864D271319DFD8B58F2FD1FDA281D6D4DC24F7509B43437C88FFE907967401D2F2DDAAA6B09AD43C0FF0410';
wwv_flow_imp.g_varchar2_table(63) := '00FE8F211E549980D319E5A28503F2F0BA0555B682E635013DF8FFC8FA31E9E9E9D46F8B3EB4584B25D913A0281C12E74D20480D200082144D7CA938013D9FAC1FA6869FDAB4468606DA4D45C8AB2081F6F626F9E8871F36B6984C4C388CDA18AB930981';
wwv_flow_imp.g_varchar2_table(64) := '501040008422CC38592E81B41AFECFE532B6D57B7B3AE4C94DCB6DF3C9A83C017D49E0F77FE82169686CB46D3C9B497135802D1D32CA2710AC9A088060C5136F2A4C20EDB0A0EC918D2B64E552F6FDAF3076C7E606FB3BE48947571ACB39DDB3C158994C';
wwv_flow_imp.g_varchar2_table(65) := '0884800002200441C6C5F208E47259C96453C6CA9B1FF7DFD9BFDE2C379BCB4B32959554262BB97CDE707703A3FB75CB8C462C350DB0DED8BF16007A3D80B1109910288140D08A2200821651FCA91801BDA98C9A48B66D6FC1823E59BEC4FB67FF37C713';
wwv_flow_imp.g_varchar2_table(66) := '72F0E865F9F41776CBEFFDE977E477FEF01BF21BBFF715F98DDF7D4EFEFFDFF9A2FCFAEF7D55FEC31FBD20BFFF89EFCA73CFEF97FD472EC9CDF1B8ADDF5EC958BD7C505A5A9A6DCDD11B0265D813C0960F19104000F019804011027975569C72B8F67FC5';
wwv_flow_imp.g_varchar2_table(67) := 'D2511919B25F8D5EA4D99A25E9B3FAF3976ECBE7BEB247FEE39F7C437EEF8F9F932F7FFD0DD9B9EBB0BCBDEF841C3E7A56DE79F7821C7FF7A21C3E7246F6EC3D2EDBDF3A249FF9FCCBF29BBFF73955E705F9D2F3FBE4DC457D839D9A995D52476D6D4DF2';
wwv_flow_imp.g_varchar2_table(68) := 'D8232B6CEBE8FB36E85100DB026440A02402C12B8C00085E4CF1A8020472B98C64D249434B96AC5FBBC8905FBFACCB5727E5B9AFBD2DBFF6DB9F93CF7FE975397EE27D89C7CD5319B3ADD5E247D7F9FBCFBF22BFFDFB5F92E7BEBE57AEDEF0DEE63A7A67';
wwv_flow_imp.g_varchar2_table(69) := 'C0C71F5E3ADBF4075EA7D3F107D248800004A6092000A639F01702F711C8A4CC9BFF343434C8CAE543F7D5A9F71B3DAFBFF7E039F9ADDF7F4E3EFBDCEB726B7CFE07ED2B57C7E5335F78557EEB3F3D27AF6F3F596F171FE87FC3BA31B12CBD3BC0035985';
wwv_flow_imp.g_varchar2_table(70) := '043D0D90CB660AAFF90381F91008625D044010A38A4FF326E074E6B871DD6219E837DF996EDE4694D040229991E7BFB55F7EE70F9E930B176F9650D35DD173E76FC89FFFF58BF2D517F74B3A937357A906A506FBDA6564B8D7BE273595934E9BEFE2685F';
wwv_flow_imp.g_varchar2_table(71) := '991C08049B000220D8F1C5BB3208E8E17FA73BFF6D58BF58BA3A9ACB68BDF255A66229F9FB2F6C934FFEC32B92CBE52BDFC19D1693A98CEAE365F9BBCF6E152D38EE24D7F529128DC8335BD61A6D483B8CE6182B930981028160FE41000433AE78350F02';
wwv_flow_imp.g_varchar2_table(72) := 'FA80A14580A98987568F9AB26B96A70FCA9FFBCA0E79E1DB7B6AD6E78BAAAF7F78EEAD9AF567EA480FFE6F7A6C99711A209D8E2B61943535431E044249000110CAB0E3B489403A1513BD10CEAECCF2A523D2DF57FFE17FBDD2FFE5D78FC937BEB9DBCED4';
wwv_flow_imp.g_varchar2_table(73) := 'AAA5BFF0EDDDF2B56FEEAF5AFBA534BC6461AF7474D86FC59CCF6545EF0C584A9B9485C06C02417D8D00086A64F1AB6C02994CC25877F5CA8532D86F7FC03156AE60E691772EC9DF7EFA25D72D0E0E74C9079EDE203FF5931F965FFE173F2AFFF7BFFEB1';
wwv_flow_imp.g_varchar2_table(74) := 'C243BFD6693A4F9711173F3935D5A0171AEE3B74DE45E9EA16696E6E908DEB97183BD177083416201302212480000861D071D99E404E9D2DEA877D099187D62E103DF46C2A53EDBC1BB7E2F2B77FFFB264B2CE0BF20607BAE57FFDC7CFC8C77FFAFB65CB';
wwv_flow_imp.g_varchar2_table(75) := 'E655B260B457DA5A9B44F4EA79F5D0AF759ACED36574595D471C7E92C98C7CEAB3AFCA543CED50B2BAD911E5C39627ECF703D0BD6732EE2F83D4E57940E01E81E0BE42000437B6785606818CDE392E6FBF90AE4F0DFDAF583A5046CB95ADB273CF293973';
wwv_flow_imp.g_varchar2_table(76) := 'F68A63A38F6C5CA90EFCFF48562E1F1671A35A54195DF6E33FFD11D1F73910879FD3CA86975F3FEA50AAFAD9EB1F1A9568C4FEEB2C974D4BD6615BE7EA5B490F10F01601FBFF31DEB2136B20501302E9B479E39895CBC664A0AFBD26B6D87572E5FA943C';
wwv_flow_imp.g_varchar2_table(77) := 'FFAD5D62D02985AA4F6FD9201FFDC8467175E097393FEAACFAA31F79589EDE62DE6F5FD7FAEA37DEAAFBD6C17D3DADB278911239DAA0228F5C3E2B192DEE8AE4910401138120E72100821C5D7C2B89402E9B713C48AC5BBB489A9BA225B55BE9C27B0F9C';
wwv_flow_imp.g_varchar2_table(78) := '75BCD6FFB14756C9335B56CDBBEB67B6AC9647555BA6866EDC9C92975E7FC754A4EA799652399B3719FC556A299D328BBBAA1B490710F018010480C7028239F523905543C439F5B0B3C08A44E5910DF5DDFE77622A256F6C3F666762217D68B057FED187';
wwv_flow_imp.g_varchar2_table(79) := '36145E57E2CFF7ABB686067A8D4D6DDB51FF6980CD8F2D15BD2F809DA185C59D4A08D8E5930E810709043B050110ECF8E25D0904B26A9E386F3840AC5C3E2A5D9DF5DDFCE7D2E5DB72FEFC55A357CF3CE53C6C6F6CA048E6334FAF2B927A2FE9D2A51B72';
wwv_flow_imp.g_varchar2_table(80) := 'EEE2ED7B097578B57C499F7476B4DAF69CCB662597775E3469DB0019100818010440C0028A3BE513C82A0160AABD4A09007D073A53996AE79D3875596E8DDB6F6D3B34D8232B960D56DC8C15CB866470B0DBB6DD543A237B0FBC679B5F8B0CCB1259BA78';
wwv_flow_imp.g_varchar2_table(81) := 'C8D0555E7239EE0B600044D61C02417F8B00087A84F1CF3581ACC3A56223C33DD2D2D4E0BABD6A143C75C6BCF27FCDAAEA4D51AC59B5D8D6A56C3627274F5FB6CDAF4D86252B978D8865292560D3A1538C6DAA910C81401240000432AC38552A013DF49F';
wwv_flow_imp.g_varchar2_table(82) := '77383B1C1BE92EB5D98A974F24CDD7B32F5C3050F13E671A746AFBEAB5FA4E01683B172F1C9068D4FE6B0D01A029F1704720F8A5ECFFA704DF773C84C05D02D96C4A9CE687BD70F7BF783C79D7E6622F7A7BABB745715FAFF9F2C7DBB7A78A9954B3347D';
wwv_flow_imp.g_varchar2_table(83) := 'DEBF62F9A04423F6576914E29CE3BE00350B0A1D799A0002C0D3E1C1B85A11D0D788E70D0BC45A5A9AA4B5A5B1B5C668F9000010004944415456E614ED27A386D9E371F336C5AD2DD59BA26875F03F9E488A9E0A286A7C8D12FB954889464D02202D3987';
wwv_flow_imp.g_varchar2_table(84) := 'B51E3532956E3C4E200CE645C2E0243E42C0894026A3CEAC0D5700AC5A31262D0E0740A73EE69B1F89581231CC6F8BFEB1DFC450E7CEEF61E0A31BCEE572C6CBF074996A3FF47D01FA07ECA76AF4C13F8B00A8761868DF270410003E091466568F405E1D';
wwv_flow_imp.g_varchar2_table(85) := 'D8B25A0018BA58BE74B8EE1B00E9837F4B8BF932C478C2BC46C0E0A26356CC61CFFFF6B656D1C3F08E0D55B180EE7F6CA4CFD8831601C602644240C2810001108E38E3A591405E0D0B9B2E0FB364541D549AEB7C058076A1B5B5453FD93E6EDCAADE3CFC';
wwv_flow_imp.g_varchar2_table(86) := '4D87B6BBBADA6CEDAA65C6B2C583C6EE180130E2213344041000210A36AE1627905773FF79350A503C57448FBA2F1CEB112FFC34379BD7219C3F7FBD6A669E3B7FCDD87677B77991A0B1720533172DEC93A646FBB510EC055041D8016D2A2C6E2100C212';
wwv_flow_imp.g_varchar2_table(87) := '69FCB42590CBEAB3FFBC6DBE5811E9ED69B3CFAF61CED8A87978FBF8BBE7AB66CDF113E78C6D2F5B326CCCAF55E6F2A5FD1289EAC980E23DE6B80AA03818524347000110BA90E3F05C023987EBFF07FA3AA5C5E1CC7B6E9BD57ABF6AF9B0E8C58076ED5F';
wwv_flow_imp.g_varchar2_table(88) := 'BE72434E9D319FA9DBD535A59F3C7D55AE5CBB655B449F713F5AE7FB24CC18D7DFDB264D4D86911235DA9357A33E33E57986C0FD04C2F30E01109E58E3A90D819CC319E15235A7DC54E73B00CE98BE70418FAC5AB160E66DD1E7ADDB0E8A1806348A5632';
wwv_flow_imp.g_varchar2_table(89) := '25AAB6B66E576D1ACA8C0CF7CBCAE57D8612B5CB6A68884A5F6F976D877905677AD4C7B60819100805814828BCC44908180838AD0A5FB470403ADA9A0C2DD42EABB7AB459EDABCDAD8E15575A6FEF2EB878C654AC97CE9B58372EDDAB86D15CB1279EAC9';
wwv_flow_imp.g_varchar2_table(90) := 'D562A97FB6856A9861A9BEC646FBD55F9B5F75F69FE552401B382487890002204CD1C6D7A204720E53000BC6FA8AD6AB57E2934F2C93A101FB335C6DD7DEFD2764DB8E13FAE5BC1EDBDE7A47F61D78D7D84677579B7CECA31B8C656A9DA9476DC44690A8';
wwv_flow_imp.g_varchar2_table(91) := '1900C966AB77B9A4F003019F104000F8245098591D02FAFAFF5C6111A07DFB0BC77AED33EB903336DC253FF4034F38F6BC7DC721F9DE2B07D474801AC3772C3DA7803A4A7EEF95FDB27DE7913919F7BFD567FF1FFDC8E3D2A34626EECFA9EFBB654B060D';
wwv_flow_imp.g_varchar2_table(92) := '1B37E5A530EAA37CACAF95F4EE3D02E1B2080110AE78E3ED1C027AF73AD33D00AC889A4FF6C81500B34DFFD033AB65E102C330F79DC2FB0F9E944F7DF6153975E6EA9D14E727BDE0EF93AACEFE83A71C0B8F0EF7C94FFC93C71CCBD5BAC09285BDD2D860';
wwv_flow_imp.g_varchar2_table(93) := 'BF1030AB445F5ECA1046B57684FE2050450208802AC2A569EF13C8E7B3629A02E8EAEC90A8E1EE72F5F250AF74FF271FDBE2AAFBAB6AFEFE2B5FDF2A9FF9FC56D9B9E7949CBF785362713504AE8F7FEA2C38164BCAF90B3765E7EE93F2F79F7F43BEFAFC';
wwv_flow_imp.g_varchar2_table(94) := '56E39CFF4CA74D4D0DF2933FFE016969B6BFE67EA66CAD9F7B7B5AA551D967D7AF8E795EF96E974F7A380984CD6B0440D8228EBFF711C8E92B000C0782CE8E36D1C3DCF755F2C89B8F7C60A5FCD83F7EDAB535972E5F9537DEDC2F9FFBE2ABF2177FFD82';
wwv_flow_imp.g_varchar2_table(95) := 'FCD17FFD8A7A7C55FEE26F5E94CF3DF7AABCB1ED805CBE7CCD557B9665C90FFFC066F9D0B32B5C95AF75A10625DA9A1AED4700F2F95C795323B57684FE2050450208802AC2A569EF13C86B016030B3ADAD59229637FF9B343644E5A77F62B37CCCC57A00';
wwv_flow_imp.g_varchar2_table(96) := '838B65656DD9BC463EFECFB7885E715F560335A8A44728ECBAD1028029003B3A614D0F9FDFDEFC660B5F1CF0B84E0472FA4CD0D0777757AB5811EF1EE69A1AA3F2733FF3AC7CF8831B0D5E542ECBB22C79E2B1D5F26F7FF90725EA612EDAE3969626FD54';
wwv_flow_imp.g_varchar2_table(97) := 'FCA1477D1C625FBC22A910080E01044070628927E5107038080C0E748A3AE695D372CDEA6811F0CB3FFF91C27C7C3452BDFFD2FA76C83FF9E3CFCAAFFECA8F88EEB3660E96D951AB4900A836F35A04A8677E21A00984F151BD6F8B30D2C467DF11C83B08';
wwv_flow_imp.g_varchar2_table(98) := '80A6A646696DB19F4BF68AC3FA80FC336A3AE05FFDCB1F919E2ADC946768A85B7EE9E77F587EFA9F6E5653229657DC36DAD1D6D664CC778ABDB132991008000104400082880BE513C8E572C6CAEDAD4D9E1FEA9EEDC0879F5D25FFE1D77F4A3EF6839BA4';
wwv_flow_imp.g_varchar2_table(99) := 'A979FEC2A5B3B3557EF4879F94DFFFCD9F910F3DB37276579E7FDDDADA6CB4110160C413B2CC70BA8B000867DCF1FA0E817C3E7BE755F127A7B3C8E2B5EA9BAA370AFAC58F7F50FED36FFEACFCD047374977574761531C379733EA32CD4A388C8DF4CB0F';
wwv_flow_imp.g_varchar2_table(100) := 'FFE093F29BFFFE9FCB2FFCECB3D2DDD9525FA7CAE8BDB9D17C792202A00CA8540914010440A0C2893325137098076E53230025B7E9910A4B17F6C82FFDDC07E57FFCF92FC86FFFDA4FCB4FFDC4F7C9539BD7CAC6754B65C5B251D1EB1BC6467B65E5F251';
wwv_flow_imp.g_varchar2_table(101) := '7978C332797ACB5AF999FFED43F207BFFDB3F2893FFCB8FCCB8F3F2BCB16F77AC49BD2CD686B7318017018FD29BD476AF8954058ED46008435F2F87D8780793EBBD5C702E08E8362A97F2B97F6CB3FFB5F1E937FF76F3E26BFF5AB3F2E7FF8DB3F257FF5';
wwv_flow_imp.g_varchar2_table(102) := '27BF207FF6073F277FF05B3F25BFF9FFFD98FCBFFFFA63F24F7FF4515934D6A36ACCD4F6EF73BB93007058FFE15FCFB11C02EE082000DC71A2544809E86BED83EABA1554C7EEF8D5D6D6242611C03E00774085FE29BC001000E18D3D9EBB20E0872B005C';
wwv_flow_imp.g_varchar2_table(103) := 'B811CA226DAD8D6259F63227EF30FD134A68381D2A02088050851B67EF2750D80CFFFEA439EF5A5ACC0BC9E614E7AD87088C0E774BC4B4591102C043D1AA9F2961EE190110E6E8E3BB2301BD22DEB110053C49A0B1D1FCF596670D8027E38651B52360FE';
wwv_flow_imp.g_varchar2_table(104) := '1F523B3BE809029E24D0D414F5A45D18E54CA0B5A5C93C02C0ED809D2106BE44B81D4400843BFE786F20108944D41CB2A100599E26D0DCDCA0E217B1B531CF14802D1B32C241C0FE7F4738FCC74B08D812883644249FD3EB046C8B90E161027AF426C857';
wwv_flow_imp.g_varchar2_table(105) := '717818BD6F4C0BBBA10880B07F02F0DF96803E41D40FDB0264789A4041BCD95F0470C77604DE1D103C85900002208441C7E5D904EC8F10D94C4E2CD32AF2D9CDF0DA730452E9AC6432E6AD9E45ECE32FFC049C00EE2100F80C849880F9CB3FAF57893304';
wwv_flow_imp.g_varchar2_table(106) := 'E0DBCF472299916C96337CDF0610C3AB4E00015075C474E06902660D20C994D319A4A7BD0BB571E942EC72B60C2CCB21F8B635C90802017C104100F029083901CBE87F529D451A0B90E95902376E4D89790DA739F69E750CC32050210208800A81A49960';
wwv_flow_imp.g_varchar2_table(107) := '128827D2C1742C045EDDBA9D305EC561590880107C0C6C5C2459134000680A3C20604300016003C607C9B1584A26A712064B110006386485800002200441C6457B0296653E08C4E329FBCAE4789A402C9E34DBE7107B736572FD4C00DBA7092000A639F0';
wwv_flow_imp.g_varchar2_table(108) := '37B404CC0240AF240F2D1A9F3B3EA546007CEE02E643A0AA04100055C54BE35E2760596601904CB206C0EB31B4B3CF2976118BAF3F3B76C14EC7BB1902FC0F9821C1732809580E0781185300BEFD5C2412E6E91B2BC2D79F6F838BE11521C0FF808A60A4';
wwv_flow_imp.g_varchar2_table(109) := '11BF12B022E6BBFDE985647EF52DEC764FC5CC6B002CCB1CFBB0F30BAAFFF8758F0002E01E0B5E859040C441004CC5933231653E930C21365FB81C57B133196A310260C2435E080820004210645CB427E02400AEDF9814613B607B801ECE711A01883002';
wwv_flow_imp.g_varchar2_table(110) := 'E0E1E855CB34DA9D4D0001309B06AF4347C06918F8C2859BC26EF2FEFB58E455D426274D7B00289F1C1680AA12FC4220D0041000810E2FCE391188148681EDAF04B8757BD2C51DE59C7A21BFD604A6626949240D5337EAE06F392C00ADB5CDF4577D02F4';
wwv_flow_imp.g_varchar2_table(111) := '703F0104C0FD3C78173202FA206059F602209DD607924CC8A8F8DFDD6BD7A78CC2CD92E97FFEF7140F20503E010440F9ECA8190002A9544C4DF1DBDF312E974DCBE52B1301F0345C2E9C3D7753B239FB3B39EA5B3DA75293E182127A6F0130970002602E';
wwv_flow_imp.g_varchar2_table(112) := '11DE878640269D9064C2F9E07EE5EAEDD030098AA3E72FDE54B1354C01284713F171492B01A85EF20B81501240008432EC389D4EC56562FCA2E8337C271A57AF4F4832C5348013272FE55F5002C0E9E28D5C362393B72F4B261DF792E9D852250234FB20';
wwv_flow_imp.g_varchar2_table(113) := '0104C0834C48093881546A4AA626AF1887FE67233877E186A4D2F6D304B3CBF2DA1B04AE5CBDA50C71BE7E434F05681190662440F1E2376C041000618B78C8FDD5C3FE531357D599BFFB33FA13272F4A268300F0CB4727A74EFD2F5DBEE9DADC5C2E2BFA';
wwv_flow_imp.g_varchar2_table(114) := '33916624C03533FF15C4E262041000C5A890164802FA2C6FE2F625C9AB2FFC521CD4D79367B208805298D5B3ECC46452B26A78BF141B7239351D307E49D26A6AA8947A9485809F092000FC1C3D6C774D409FDD4D4D5E2BF9E0AF3BC86432924EDBAF28D7';
wwv_flow_imp.g_varchar2_table(115) := '65FCF8D067CAD99CF330B9DF7CBB359E5002A0F478E9E980A9892B92663AC06F2177B49702C50920008A732135400432996461B1572E9B2ECB2B7D60387F293857021C7EE78AFCEE9F7C477EF1FFFAA4FCF2AFFC9DFCEE7FFEB61C3F79AD2C365EAC74FA';
wwv_flow_imp.g_varchar2_table(116) := 'BD1B4AE895276C0A23014A0464D20EBB087AD1716C8240890410002502A3B8BF08E8B339BDC8ABD461FFFBBDCCCB0D7D4F80FB137DF9EED0B1CBF2EBBFFB39D9B5FBB05CBF7E53AE5EBB25BBF61C91DFFAFDE7E4E889ABBEF469AED1E72EDC946CAEFC29';
wwv_flow_imp.g_varchar2_table(117) := '1BFD59D15788E8CFCEDCB679EF4702D86C47000160478674DF13D067717AD8BFDC33FF190079753279E9F2B86402B00EE04BCFEF965CF6C1E1F1A9A9B8BCF4DA91791D386778D5FBF9FC855B6A0AA07C01A0EDD7A33E539357990ED030780496000220B0';
wwv_flow_imp.g_varchar2_table(118) := 'A10DB763FAE0AFCFE2722E86FD23114BA2D146B1FFC9CBB90B3724162F6F0AC1BEDDDAE6E839FF93A72EDA767AEEFC55B971D3FFD7C45FBAA22F01B47553DADA9A450CDB3FCB9D9F5C3653983AD29FA53B493CF9900026DB134000D8B321C7A704F4D0ED';
wwv_flow_imp.g_varchar2_table(119) := 'A49AC7D567714E2EB4B4B6CA96CDEB64D5CA25EA9860D9163F78E4AC2492EE2F1DB46DA88E19FA52463D9A6167C2F98BD7249EF0B7C899984AC9B5EBF6EB35AC4844D6AE5A228F6C5C27EDEDAD7628EEA6EBCF90BE72447FA6EE26F20202012180000848';
wwv_flow_imp.g_varchar2_table(120) := '2071639A805EF03755B8CEDFF940D6DAD22C9B1E5B2BA32343B278E1A07476B64D3752E46F2A9990F317C68BE4F82749CD6488D86B1CC9A4B3A24709C4C73FEFBC7B555229FB057CEDAD6DB2606C50562C1D92C71E592B2DCDCD8EDEEA35017A2A899100';
wwv_flow_imp.g_varchar2_table(121) := '47541E2C804926020800131DF27C45209D8ACBA4DEDE37E77CA6DEDCD42C4F3DF9B00C0FF6AA63A2A5CE065BA4A7BB53EC7EF499E0D9F7DD6F2E63D70EE9D525B0FFD039356F6F7F0F80EEEE0E696C6A12CBB20AB17FF6E947A4B1D134FD336DAF9E4AD2';
wwv_flow_imp.g_varchar2_table(122) := '23018880691EFC0D0601044030E2187A2FF4C13F367955722E36F96953C3FECF3EBD51FA7AEF1DF023EA80D0D7D765E478F2CC15998CD91F5C8C95C9AC3A013DC271E4D839D162CDAEB39E9E2EB1D4BF99FC1E25089EDEF2B012806D3349B6CF7A24404F';
wwv_flow_imp.g_varchar2_table(123) := '2DA5D931D09691D732B0C74C000160E643AE0F08E861FFC989CB9275B1E0AFADAD459EDCBC417AD58160AE6B7D45D266973978E43D89C59CA71666D7E175ED08E8F50B172FDF3076A80FF8730B0CF677CBE38FAE9566352534376FEE7B3D1230357145F4';
wwv_flow_imp.g_varchar2_table(124) := '676E6E1EEF21E037020800BF450C7BEF23904EC564D2E5F6BEADAD2D6AD87FA3F4CF3AF39FDD58477B8B1A0E6E9A9D74DFEBA9A99823E6A77300001000494441545CBB11BB2F8D37DE2170FAEC4DE3FC7F67479B7476145FF83734D0231F78EA116976B1';
wwv_flow_imp.g_varchar2_table(125) := '262097CD14EE249961B320EF04BFA825243A114000381122DFB304F417F0D4E435D15FC84E46EA83FF079E7A587A0DF3FC0D0D0DD2D5756F5A606E9B5935C270FAECB5B9C9BCF70081C2F0FF3B7A14E8C13D0E66CCEBEE6A979666FBF97E3D3AF0CC968D';
wwv_flow_imp.g_varchar2_table(126) := 'D2D9D93E53C5F6594F074C4D5C950CD301B68CC8F03E010480F76384854508E883BFDBEBFCDBD5B0FFD34F3EAC0EEE1D455ABA97645911E9EFEBBE9730E7553E97935367AE48DCE79703CE712B106FF3F9BC1C3A7A5E442B011B8F7A7ABB251A357FE5F5';
wwv_flow_imp.g_varchar2_table(127) := 'F576C9138FAE133D5564D3CCDDE46C362513B795E8C8B02EE42E140FBDC0146702E6FF0DCEF52901819A13280CFBAB79D87CDE79B7B7F6F6F6C2B07F6F8FF9E03FE3C4E0803A4844ECFE5BE4E5C0E1F764728A2FFC195E5E794EA5B272FA8CDEE4A8B802';
wwv_flow_imp.g_varchar2_table(128) := 'D0E24E1FDCDDD8DBDFD729CF6C51D3012ED604E891002D44D38C04B8414B198F11B0FBA6F3989998038169027AF195DEA2552FC69A4EB1FFABCFE23EF0D406E3E57D736B6BA1D0D0189D9B7CF7FD8D9BE381D82DEFAE43017971F1CA84C4E293B6DE44D5';
wwv_flow_imp.g_varchar2_table(129) := 'F44E6747BB6DFEDC0C3D5D50980EE8689B9BF5C0FB5C2E23B1C27480FDFE030F5422A1CA0468DE0D0104801B4A94F104017DF0D7675BB9ACF375FE7A1EF7D9A71E958E12BEF4B593CD4D8DD2D16EFFA5AFFB3E77C1BCD5AC6E8747ED08E873FEC3C7F450';
wwv_flow_imp.g_varchar2_table(130) := 'BCFDE7421FFC9B9A1A4A324A5F15F2C463EBC5CD8E81D96C5A4D075C922CD3012531A6707D092000EACB9FDE5D12D05FB0FA2C4B0FB93A55E9ECE8902D9BD64B9761673F531BDD8685807A92F9E4E960DC35CFC4C04F79793DFF7FE49CD1E4A1C11ED17B';
wwv_flow_imp.g_varchar2_table(131) := '3D180B15C9D4D3014F6DDE28ADADC5AF1E985D457F36A7D4D494FEACCE4EE775ED09D0A33B020800779C2855570279D15FAC994CD2D18AB6B656D19BFC7477B99BF32FD6609FDE10C8B28A6515D24E9DB9C4E5800512DEF8A3E7FF8FBFABE7FF8BDBA30F';
wwv_flow_imp.g_varchar2_table(132) := 'FC03FDF68B3B8BD7BA973A7D75C00625289DA710F467343E755DB428B9D702AF20E04D0208006FC605ABEE12D007FFAB927171CD755767877CE0E947A45D8980BBD5CB78D1A9DA695073C676554F9EBE287ACED92E9FF4DA1238F3FE2D999898B0EDB4A1';
wwv_flow_imp.g_varchar2_table(133) := 'B1417A7B9C0FDEB60DA88C9EEE4ED9F4B81E55726E27959C2A0856558DDFBA10A053B70410006E4951AE2E04E2B15B924CD87FB9CF18A50FDA4F6E5E279D2E166DCDD4B17BEE686F95FEDE2EB1FBC9A49372E0F005BB6CD26B4840CFFF6FDF755A4CC3EE';
wwv_flow_imp.g_varchar2_table(134) := '6D6DEDD2D4687FFDBF5B737B7B3A64F313EB5C4D07A492939288FBFBE6516EB950CEBF041000FE8D5DE02DD75FA2F129F3D6AE1A42873AE87FF8838F4AB73A73D7EFE7FB686A8C4A9F613F00BD0EE0F0B17372FD567CBE5D517F9E0452A98C6CDF795C0D';
wwv_flow_imp.g_varchar2_table(135) := 'B9DB5F123A34D827965599AF3A3D12A03794D222D1C9F4989A0AD09F61A772E4579600ADB9275099FF15EEFBA324045C11D067747ADEDFA9B09EF3D7976B3535DA6FE1EBD446B1FC05A303C592EFA69D3C755E2E5C721E99B85B8117552170EAEC4DB97E';
wwv_flow_imp.g_varchar2_table(136) := 'DD5E243634446578A8BFA27D7775B5CBA6C73788E3D501F9BCC426AF8BBE4CB0A206D018042A440001502190345349027949A8A17FA785547A9EFED18757AB617FE779D952ADEBEA6C9376C32584E95452F61F3A5F6AB394AF20819C3AC06EDF7D561D60';
wwv_flow_imp.g_varchar2_table(137) := 'EDB7FFD567ECFD7D95FF7CF4F7758AFEEC456C378D9A76541FFCB508987EC7DFEA13A087520820004AA145D99A1048A7E2E266E8F4F147D7CAE87065CFEE661CD443C68B168CCCBC7DE0399FCFC99163EFC9F59BB107F248A80D81543A2BBBDF3EA93AD3';
wwv_flow_imp.g_varchar2_table(138) := '2B01D45391DFD191418946AAF33537A246161E7B644D915EEF4FD29FE58C8B45ACF7D7E21D04AA4FA03AFF33AA6F373D0498405CCDFBEB03ACC9C587D62C93850B064D45E69DA7DB8FAA2164BB864E9EBEC034801D9C1AA49F3A7343AE5CBD6EDB5324A2';
wwv_flow_imp.g_varchar2_table(139) := '87FFFB6CF32B91B164F188AC58BEC8B1A944FC96E4D5888563410ACC8B00954B238000288D17A5AB4CA070B6E470BDBF3EAB5BBB668958EA5F35CDE956D3009D86698054524F03703540356360D7B61EFEDFB1E7AC640D3BEFF5F6764B6767AB5D131549';
wwv_flow_imp.g_varchar2_table(140) := 'D79FC18DEB57C8D8E880B1BD5472CAD5A896B111322150610208800A03A5B9F209E4D5B07A6CCAFE8C4EB7DCDADA2C0F6F5825910AADEAD66D9A1E0B46870CD979397AFC3C9B021908552B2B95CACA9E7DA754F3F6C3FF4B168DD4E473128D44E4D18DAB';
wwv_flow_imp.g_varchar2_table(141) := '44AF495106D9FEC65D8C6CD95626C305018A944A0001502A31CA578D4032715B720EFBFCAF5CB1483ADA5BAA66C3DC8607077BA5B9C9FE0A8333EF5D92F7CE73BDF75C6ED57EAF57FF5FBA6C2F161B1AA3323ADC5B6D33EEB6DFDADA2AAB572DBDFBBED8';
wwv_flow_imp.g_varchar2_table(142) := '0BBD2030E9624F8B627549834035082000AA4195364B26A087721331F381B4BDBD4D962E1A2DB9EDF954E8EDE990BE3EFB03493C3625BBF79E9D4F17D42D91402E97979D6F9F5562316D5BB3B7BB475A5AEC859B6DC57964AC5A3E262DCDE63E13B15BA2';
wwv_flow_imp.g_varchar2_table(143) := '85C03CBAA1AA0D01924B278000289D1935AA4020999C74FC62DCB06EB934353556A177FB26F53EF2A323F6571AE8698BD3672FCB0D3605B28758E19C442A23BBDF7E57347BBBA6C70A5337965D7655D2F514C0DAD58C0254052E8D56850002A02A5869B4';
wwv_flow_imp.g_varchar2_table(144) := '5402E9E494B14A6F4FB72C705868656C601E99C343BD6259F60793F7CE5D9633EF718BE079202EA9EAE9B337E5C2A52BB6755ADB5A44C7CCB6401533162D1A5123463DC61EF465AEC602649641802AE510889453893A10A824815C2E2BD9ACFD706E2462';
wwv_flow_imp.g_varchar2_table(145) := 'C9AA954BD441B83E1FD7D6D6261918E8B37539361593AD3B4E4A560D4DDB16F24046C420623C609E2B1332D99C6C7DEB94E4D567C6AEC2607FAF7476D46E9DC86C3B9A1A1B64C5B285B3931E789DCB658C9FF7072A9000812A11A8CF376A959CA1597F12';
wwv_flow_imp.g_varchar2_table(146) := '98DE24C57E35776767BB3AA3339F5549157F2CB144AF2817F52C457FF272F8E82979DFE38B01F301B80EFDFACDB8BCFAC6A1A25198491CA9D2E65033ED3B3D8F0EF74A7373B36DB1BC1200D39F79DB2264944880E2E511400094C78D5A152390974C3A6E';
wwv_flow_imp.g_varchar2_table(147) := '6CADBFAF47F49995B1509533C746FAD497BAFDFA832B576EC88E3DEF55D98AF9356F2FB1E6D76E2D6B6F7DEBA4249293B65D3637354B7F5F976D7E2D321AD428C0F0D0806D575A88A51D3EF3B695C98040050920002A0893A64A27905343B919E336A996';
wwv_flow_imp.g_varchar2_table(148) := 'FA42EF2EBDE10AD7686C6C940135B46CDF6C5E76EE3921E31349FB22E4CC8BC0642C25AFBF7954C4309231363628ADADF667DFF332C065653D62345A58AF62D9D69816BD419064B62ED63083AECA25800028971CF52A422097CD48269BB26D2BDAD020BD';
wwv_flow_imp.g_varchar2_table(149) := 'BD9DB6F9B5CC58BC6858F47A04BB3ECF9DBF2CDB777149A01D9FF9A6EFD97F414DB35C3636B374F1A89AA8B13FF01A2B573073508D423418B691D6C23797CB55B0479A8240E9041000A533A3460509E4D47CA8E98CAE4F1DFC5B0CF3A91534C5B1A9C181';
wwv_flow_imp.g_varchar2_table(150) := '1ED10BCCEC0AA6524979F3ADE3A26F52635786F4F208C4E26979F9F52392572346762D68A1D8D7DB61975DD3F4E6E646E9E868B3EF538D62143EFBF625C871498062E513400094CF8E9A152090337CA1EBE607FA7BA421EA8D8F69A31A8D58BA744C9B65';
wwv_flow_imp.g_varchar2_table(151) := 'FB3879FA9C1C38623E4BB5AD4C862D8143EF5C914387F59DFF8A17D15B43AF58A66FCA53FFB3FF190B3B4D024015CA3302A028F05B4F02DEF866AD2701FAAE2B01D3199D364CDF90C7B2BCF3A5AE37056A69B19F638EC7E3F2CAD6E3C2ECAE8E5E651E89';
wwv_flow_imp.g_varchar2_table(152) := '6446B66E7FD7B85154AF1A725F303658990E2BD44A47BBF94644F97CB6423D85B9197C9F0F0104C07CE85177DE047279FB7950CBB2A4B1C97EE5FDBC3B2FA38168242AAB572E31D63C7CF4B41C3D71D558864CF704CE9E1B97ED3B8F1A2B2C5F32A6468A';
wwv_flow_imp.g_varchar2_table(153) := 'A2C632B5CED43B039AFACC398C7E99EA9207814A1040005482226D944DC03402A08EFFD2D8E8AD2F75EDE8B22523D2D6663FBF3B7EEB963A63B51FAED66DF0704FE0ADDDA7256BB845B4BE47C4D0509FFB066B54B2B1A9C1D81302C088C7552685E64700';
wwv_flow_imp.g_varchar2_table(154) := '01303F7ED49E2781BC61044037DD10F59E0068686890458B46B479B68FBD074ECBB94BB76DF3C97047E0C2A509796BD731317D4E562C5FE878131E77BD55B65453A379F42AAF17C056B64B5A83404904100025E1A270A509E4F3F6B3E59615512300E6B3';
wwv_flow_imp.g_varchar2_table(155) := '28A9D3CFE28543C6EBCDAF5CB926DB767A7B63A03AA12BA9DB5DFBCEC9A54BD76CEBE8B3ECA58B476CF3EB99A1178DB6B4B4D89AA04700F4C3B600190E04C89E2F0104C07C09527F1E04F4C15F3F8A37A18EFF1289786701E06C2BBB3ADA64B961CFF79C';
wwv_flow_imp.g_varchar2_table(156) := '3ABBDBF6D651D10BD866D7E3B57B0257AE4DC91BDB8FA90AF69F91450B46451F685521CFFD461B22D2D2D2646B575E8D7EE5590760CB878CEA134000549F313DD810309CFC176AE84BBBF43A80C21B0FFED16B01F428859D69EF9FBF24DF7CF9B85D36E9';
wwv_flow_imp.g_varchar2_table(157) := '0E04DEDAF39E9C3A653F8AD2D2D2AC4498F9B24C872EAA9AAD8549D430855510005C2F52760CA8387F020880F933A4859012D0FBCE2F5A386CEBBDDEE5F0A5570FCAA5ABF67BD7DB560E79865E3FF19D97F719E7FE474706A4BBB3DDB3A45AD5D9BF69FC';
wwv_flow_imp.g_varchar2_table(158) := '4A7F3E94839EB51FC3824F000110FC18E3611509AC5EB9484D53D82F54BC70418D027CCF7C095B15CDF36DD3AF6F3B29172E9837545ABCD09B73FF33D00BD3570605905767FFFA31539EE7520850B61204100095A0481BA125D0DDD52E7D7D3DB6FEEB61';
wwv_flow_imp.g_varchar2_table(159) := 'DED7DE3C28A7DFBF655B868CFB099C387D435E7E6DBF3A39B69FFB5FB8604471F7C63D22EEB79E7710F00F81887F4CC55208789180252B972F321A363E7E5B9EFFD621631932A709E8FB287CF7D56372FDFACDE984A27F2DD197FEE9352245B3490C3C01';
wwv_flow_imp.g_varchar2_table(160) := '1CAC0C0104406538D24A88098C0CF7C8889A8FB64590CFCBD6ED07E4C8717607B4657427E3D889ABF2BA1A31B9F3B6E8535F5FB70CF47515CD23110210704F0001E09E152521509440341291552B96AA3CFB09DF742A295F7A7EAF2AC3AF1D017DC7BF17';
wwv_flow_imp.g_varchar2_table(161) := 'BF77489289985D11696C6C900D0F2DB7CD27230C04F0B1520410009522493BA12630D8DF294B168F1A191C38F4AEECDC7BCE5826CC99078E5C923D6FBF6344B064F102191CE8319621130210704720E2AE18A52000011301CBB264DDDAA5A22F0DB42B97';
wwv_flow_imp.g_varchar2_table(162) := '4927E5B9AFED969C9A12B02B13D6F4F189847CE9EBBB259349D92268696992E50EB763B6AD4C466008E048E50820002AC79296424EA0ADB545562C37DF29F0DD9367E5E5374E859CD483EEEFDE775E4E9EB6DFF447D77868CD72E9EC68D52F7940000215';
wwv_flow_imp.g_varchar2_table(163) := '208000A800449A80C00C8115CB47A4ABAB63E6ED03CFFAB2C02F7E7587C4939907F2C29AA0B7FCFDEA0B7B249FB3BF35744F4FB72CE3EC3FAC1F91597EF3B29204100095A4495BA127D0A417A9AD5B29A2A604C4E6E7CA952BF2E277F51EF736054296FC';
wwv_flow_imp.g_varchar2_table(164) := '5A61D39F4BB65E47A21159FFD00AB15F62695B950C0840C04000016080431604CA213032DC2B4B1699F6A8CFCB57BEB1432E5E618BE013A76FC837BEBD4B72869BE28C8D8CC8C8507739A1A04EC008E04E650920002ACB93D620A0CE542D7968CD628946';
wwv_flow_imp.g_varchar2_table(165) := '1B6C694C4D4EC85FFCED6B920FF182C0A9785A3EF5B9ED727BFCB62DA7C6A60659F7D01295CFF9BF82C02F042A4A000150519C3406816902ED6DADB26C1E28BFA50000100049444154996987C0BC1C3C7C425E7C29BC770B7CF1BB47E5C8D177A781D9FC';
wwv_flow_imp.g_varchar2_table(166) := '5DBB6A9974B6B3F0CF064FC89271B7D204100095264A7B10B84360CD8A85D2D969BF20509DFECB3F7C61AB9C3D17BEFB041C3D71550DFDEF5643FFF60BFFDADB3B65D9D2D13B34798200042A4D00015069A2B407813B045A5A1A65CDAAA522860581B1D8';
wwv_flow_imp.g_varchar2_table(167) := '6DF9EF9FD92EE94C56C2F2934866E4939F7D530DFD8F1B5CB664FD434BA5B1C17E1AC55099AC0012C0A5CA134000549E292D42E02E81B1D17E191D1DBEFBBED88B43878ECB0BDF3D26F6F7BE2B56CBBF695F7EE1901C3F71C6E8C082B161593036602C43';
wwv_flow_imp.g_varchar2_table(168) := '260420303F020880F9F1A336048C041A1BA2323AD46B2C93CFE7E4339F7F454E9CBA6E2C1784CC43C72ECBB7BEBB5BCD7E98E5CE607FAF440C23274160810FA510A06C35082000AA41953621308B404383F37FB34C262D9F52C3E2FA8638B3AA06EAA5DE';
wwv_flow_imp.g_varchar2_table(169) := 'FCE87F7C66AB4C4C4C38FA157146E6D806052000013301FE9B99F9900B81B209E4D5A0FE9163A764D79EA3AEDA3872ECB47CE79577542DF3D9B1ABC63C58E80B5FDD2BA7CFBCEFCAB27D078FC9A1A3A7249F0B260B5710287497002FAA430001501DAEB4';
wwv_flow_imp.g_varchar2_table(170) := '1A7202B96C56DEDE775C8EBE7346F410BF1B1CBADC67BEF886BCF36EF0A6028E1CBF22DFFA9EF3D0FF0CA79C3AF0BF73FC8C1C387C42D219B64D9EE1C233042A49000150499AB405014520AD86F3B7ED3A2867CE9E57EF4AFBCDA413F2992F6E938929FB';
wwv_flow_imp.g_varchar2_table(171) := 'BBE295D662FD4BC71369F9B3BF794912F144C9C6BC7BEA9CECDC7D4852E9E0F0281942E82B00A05A041000D5224BBBA124706B7C425E7DE36DB97CF946D9FE1F3A7C52BEF1ED43920BC02E81DA874F7F61975CB870B96C1E9714CBD7DFDC27E3136C9D5C';
wwv_flow_imp.g_varchar2_table(172) := '36442A42A00801044011282441A01C02376E8ECBF61D07E5F6EDA972AADF57E78B5F7943DEDC69BE54EEBE0A1E7DF3DD574FC8775FDEA3AC9BDF5CFEF8F8A46CDBBE5FAE5C0BDFA6490A5EA87F71BE7A041000D5634BCB2122F0FEF9CBF2FA9B7B2556C6';
wwv_flow_imp.g_varchar2_table(173) := '3077314C7A3DC05FFFDD77E4F03BE59F39176BB79669C74F5E934F7EF625C954680E3F164FCAB61DFBE5FCC52BB57483BE201058020880C08616C76A43202FC78EBF27BBDF3E22D9ACFDB6B6F76CB1A4B9A54B5ADBFBA4A9D9B04DB0AA30311193FFFEE9';
wwv_flow_imp.g_varchar2_table(174) := '57E5C265E7CBE654714FFDDEBA9D903FFCC437251E33CFFB4722D169162D9DAEECCF66B2F2D6CEC38AF959D78B2B5D354C218F12C0AC6A128854B371DA86409009A4D5C168FFA11372E4D849D1ABD61D7DB52C6969EB91F6CE41696DEB95B68E7EB1D401';
wwv_flow_imp.g_varchar2_table(175) := 'D054EFF4990BF2D92FED9089A9A4A998A7F2F4F5FE7FFC67DF91AB57AF19ED8A441AA4B37BACC0A2BD639A89B1C2DDCCBC1C3E7A520E1E3E25996C78B650BEEB3E2F20502102910AB5433310081581443229BBF71E91774F9E5367A2CEF3DB9615918ECE';
wwv_flow_imp.g_varchar2_table(176) := '21695367FE33A0F401501FF82CCB7CABDBADDB0EC9D75E3CA80E766E4618665AAFCF73369793CF7C71973A389F7434A0AD6340A20D4D85729665891E15E9E81A164BB12A243AFC3971F2BDC215027A132587A264FB94006657970002A0BA7C693D800426';
wwv_flow_imp.g_varchar2_table(177) := '26A764EBB60372E1C25557DE45A20DA20F6CC586FC9B9ADBA5A5B5C7A19DBC7CE9EB5B65FBAEB30EE5EA9BAD65D06B6F9E9417BFB3D3D1103D12A27D9F5B5033D2ACDC8A808B97AECBEBDBF6CBF86DAE1098CB92F710702210712A403E0420708FC0D5EB';
wwv_flow_imp.g_varchar2_table(178) := 'B7E4D537F6A8038EBB79F968B449F4307763539BD8FDB4B6F78A29BF502F9F97BFF9E477E5E051EF2E0A3C7AFC8AFCB7BFFB8EE4D52840C1669B3F0D0DCDF78D84CC2DA65974F52E9468B4716E56D1F7376FDE961DBB0ECAE5AB5C215014906F1331BCDA';
wwv_flow_imp.g_varchar2_table(179) := '0422D5EE80F6211014027AF5F9D6EDFB249572B733DDF4816C81441D0F6496B4ABE9818843B9DB1353F2DF3EF9929CBB78DB73486F8EC7E58F3FF1822493E60D7BAC4854DA3A0795FDE6690FCD4C0BA762A304AAF203BF139371D9B173BF5CB874F5813C';
wwv_flow_imp.g_varchar2_table(180) := '12200081E2041000C5B9900A81BB04F49EFEEF9C38AB0E308725E76AA5BF883E7075768F88E5723E5BAF86D7EB039CCA9F3B77593EFDF937657CC23B8B02F50D8CFEF8CFBF2BD76F389F81EBC58F7A04E02E5CC38B889A3A6957C2A8A97085805930E866';
wwv_flow_imp.g_varchar2_table(181) := 'F4A2CCED3B0ECA8993E7F45B1E3E2780F9D5278000A83E637AF031814C262B870E9D9043474E8A1602CEAE586A78BB5FCDF98FA8A2CE072D55E8EEAF9EFF6E69EBBDFBDEEEC5CEDDC7E42B2FA8918874692BE04BB3C6AEF7FBD353CA86CF7E7997E8DD0B';
wwv_flow_imp.g_varchar2_table(182) := 'EFCF79F05D734B97B4B4763F986148D182A8438980B68E3E55CA9D07070F9F907D078E4BCE612A4235C82F04424D000110EAF0E3BC89402A9D963DFB8ECA7197679485E1ED8EFEC2A57EA6764D79FA00A9A70E4C6574DED75ED82E5F7E7E9F2492EEA623';
wwv_flow_imp.g_varchar2_table(183) := '741DCBC5F1D3124B1775F5D07BFC7FF91BFBE5856FEF722CDFD0D8AAA639061DCBD915D00B25F5E2403D52625766263D9FCFCBC9D3E764F7DE6392CE98A72466EAF0EC3502D8530B0208805A50A60FDF1198988CC96B6FBC2DE7CEBBDB754E1FFCF599AA';
wwv_flow_imp.g_varchar2_table(184) := '3E80CFC759CBB20A970B46220DE666D441EEF35F7E5D3EF1D7AFC8C5CB13A2F7DC375710B12C4B32865DF9F2565EA2516701A0FBBA712B2EFFE5AF5E96CF7FE935C7457F9168A33AF80FC87C7FF4B44A7BD7B0E8F6DCB4F5FEB94BF2DAD6FD3239157753';
wwv_flow_imp.g_varchar2_table(185) := '9C3210081D010440E8428EC34E042E5FB921DB77EC17BDE8CEA9ACCED767B7DD3D0BC4CD99BB2EEFF4B0225169EF1A5207EC88535179F3AD43F2EF7EE333F2B92FEF966DBB4EC9E9F7AECBF8EDB8DCB815BBEF71733CA6DA134924EC77E6D3EB1BB44098';
wwv_flow_imp.g_varchar2_table(186) := '8AA5EEABABDBBA7A7D524E9EB9265B779C924F7D6EBBFCCAAF7E5ADEDA75C4D13EDD6947E7A012164DCE655D9468542309DDBD8BA4A1B1C5456991F1F109D10B37DDAC4F70D520856A42804E6A43C0F91BA63676D00B043C40202FE72F5E5543C7476462';
wwv_flow_imp.g_varchar2_table(187) := 'D2DD5963534BE7F4197BD4DD256B6E9DD407BA36359DE0A6BCB6F58B5FD92A7FF0A75F5307E64FC9CFFD1F7F29BFF0AFFEEABEC7CFFF9F7F25FFECE37F2AA2460EECDA4CABF9FC7FFBEF3F253FFB8B7F765F5DDDD62FFE9BBF96FFE7D73E2D7FF45FBF26';
wwv_flow_imp.g_varchar2_table(188) := '5F7B618712196E6E7864495B5B9F3A58B7DA755956BA6559D2D93D5A5868E9A681293502F0E65B07E5C2A52B6E8A530602A1218000084DA871D44C202FC7DF7D5FDEDA79509D25BB9B376E6EE95207FF413524DD606EBACC5CDDBE5E18584E75BD29CFEC';
wwv_flow_imp.g_varchar2_table(189) := '47A96DCCAEAB5F975A5F97D743F62D6D3DFA65C51F9615292CB46C76B9A8309D4ECB8E5D87E5F8C9F7952DE57AA4AAF25B030274512B0208805A91A61FCF12C8E532EAACFF981C3CFCAE4B1B2D75F01956F3DA7A519BF39CB9CB468B166BEF18707DA65B';
wwv_flow_imp.g_varchar2_table(190) := 'B4813A25EAE910BDD56FB5BBD77CF416C222CE71C8E5F27258C578DFC177847B08083F101004001F825013D0FBC8EFDC734CCEBE77D11507CB9A3EF8977B66EEAA935985AC4854DADA07441F5067257BFAA59E9FD7373C72B362BF128EE8BD05F46E8A6E';
wwv_flow_imp.g_varchar2_table(191) := 'DAD20B184F9EBA20FBF71F93642AEDA60A656A4C80EE6A470001503BD6F4E4310293533179F58DBD72FE82BBB9614B0D3B77768FD5FC8C3C126D50230E2335EFB79C706961A4E7E723918672AA975D478B80AE9E05A259B969E4CCFB9765EBB6BD128FDB';
wwv_flow_imp.g_varchar2_table(192) := '2F8A74D30E6520E06702113F1B8FED102897C0D56B37E5CDEDEE6F22138D364957CF98E8B3DB72FB9C4F3DCBB2D494C3B0E861752D44E6D35635EA5A85918A7E65E39058567DBE56746C3ABB465D8F96DC1A9F94975FDF23376EB9BBAF4335B8D1E65C02';
wwv_flow_imp.g_varchar2_table(193) := 'BCAF2581FAFC4FADA587F4058139042E5DBE263B761F727D7DB81E7EEFEA5D20D186E6392DD5F6AD6559859DF43ABA47647A3B5DABB606D8F4D6D0D8AA462886452FF8B3ACFADA146D682A88101D331B73EF4B4E2492B2EDAD7D72E9F2F5FBD279038130';
wwv_flow_imp.g_varchar2_table(194) := '1040008421CAF87897C0BBA7DE976D3B0E4A32E96EFE571FD43ABA46C4AAD359ED5DC367BDD0970876F52E946EF5D073ED7A257C43638BE8B370916A1E802D89441A0A67D8BA4FBD4F7F77DFA2C2C888B6493CF2A3D71EE869081D3B3726E9CFC29B6F1D';
wwv_flow_imp.g_varchar2_table(195) := '9053A7CF495EFD73538732D52140ABB5258000A82D6F7AAB13816C2E27FB0EBC2B070EBD2B7AAB5827332C2B22ADED7D327D839E6A1E549D2CB1CFD767BBFA52C1B6F6FEC2197857F758E160AC0F7E5AB4CC3C3AD5D4854ED36545CCBE34B7762961B1A8';
wwv_flow_imp.g_varchar2_table(196) := '709DFD4C7DFDACEB77F68C16D2B5E8D07D36B774566C831FA9C24F9B8A5F7BC7A0886589F34F5EF61E382E478E9E964CD6FDF6CACEED520202DE258000F06E6CB0AC4204F46AEFDD6F1F9693A7DF7377F08F440B73ED7A6199889B8387D4F5C7B22CD167';
wwv_flow_imp.g_varchar2_table(197) := 'E65A10E891003DFCADAFC19F79E8B3739DA6FD89461BC5EEC7B222D2DAD627BA1D5D7EA6BE7ED6EF753B3A4FF76559DEE722628916341D9DEED7251C3B7E46F61F3C2169C396C9C24F9508D06CAD09446ADD21FD41A09604E2F1981AF23F20E7CE5F75D5';
wwv_flow_imp.g_varchar2_table(198) := 'AD3E40EAB35D7D76EBAA828F0A599188E887C9E47CAEB43B0C9ADAF24A5EE1CA04350A1231889FD9B69E397B51DE7C6B9F240CDB26CF2ECF6B08F89540C4AF86633704CC04F272EDC62D79E9B5BD72E3C6B8B9E89DDCC6A656D107FFE90576771203F5E4';
wwv_flow_imp.g_varchar2_table(199) := '7CD69ECFE702E5F18C333AA63AB67A046326CDF47CFDFA6D797DDB7EB972F586A9187915244053B5278000A83D737AAC32819C3A8B3DF3DE79D9F6D67E492693AE7A6B6C6A5707FF31717B96E8AA510A798A801EDDE9EA59207A9AC48D61131353B273F7';
wwv_flow_imp.g_varchar2_table(200) := '213971F27DD16B48DCD4A10C04FC440001E0A76885CDD6BCA8595CF71F51BD82FBE6AD7179FDCDBDB267EF71D137B711C71F4B5ADA7AD4C17FC4B12405FC4FC0B222D2D935228D4D6DCA19E71191642A23070E9D28EC1971E3E62D29658424AF6FBCA43E';
wwv_flow_imp.g_varchar2_table(201) := 'C3AA237E1D0950A01E04DC7FBBD6C33AFA0C35814C560F473B7F83E62527B7C627D4D9DA1179F9B53D72FDC66DD7DCDA3AF44AFF7ED7E529E87F0256242A7A3A406F1FAC05811B8FF4C6516FBCB94FF6EE7F472626265515E7CF652A9D6131A122C5AF77';
wwv_flow_imp.g_varchar2_table(202) := '092000BC1B9BD05B9653F3D1172FDF9489C9844C4EA5D4B37AA8E75BE3537259CDCD9E3E734E0E1D39213B771D2C2CDA3A77FEB26B66914843E120D0D25A9DBBD5B93684827523A0AF8AE8E81A164B8D0AB831420BD2D3672FCAD6EDFB64DB8E7D72F8E8';
wwv_flow_imp.g_varchar2_table(203) := '09D1534D7A13A19BE331998C4D7F3E63F194A4526979FFFC3589C5D86AD80D5BCAD48740A43EDDD22B045C105043A8BBDE3E52D8AFFFD537DE96D7DE7C5B5E797D8FBCF2C61E35247B40DEDE7F5CDE39F1BE9CBB705D1209771BFBE85EF58230FDC53F3D';
wwv_flow_imp.g_varchar2_table(204) := '0CAC5378849580FE0CE8D1806883FB5D1EF501FEE2A59B72ECF8FB85A926BDB1D4ABEA33A93F9BAF6D7D5B5E7AED6DF9D64BBBE4F09177D53494FBCF65586380DFF5238000A81F7B7A7641209FCBA9B3A9B8249331492662924EC52597CD9434173BBB1B';
wwv_flow_imp.g_varchar2_table(205) := 'BD00AC436FA5DBD8323B99D7212650F84C740D492922E01EAE7CE1B398CBA625958C173EA329F5594DA71285F47BE578654F809C7A114000D48B3CFDD694806559A277F6EBEC1E133DFC5FD3CEE9CCF304A2859B3D2D9096B65EB12CBE163D1F300CAC08';
wwv_flow_imp.g_varchar2_table(206) := '013EE915C14823E51028ACC156C3FCE5D42DA58EFE72EFE81E153DE76B59855E4BA91E98B2D3AEDBFB6F5996589615187F4B75C4B2ACC2D6CF7AABE348B4B1D4EA25978F283FF53459000009B549444154A161A947C91503560177EA470001503FF6F4AC';
wwv_flow_imp.g_varchar2_table(207) := '8E35CE6BA9E781497DA1B7B4F54857EF42D1DBD8CEA3A5805455C00D9E589106110E48A2770EEC569F9996D66EC5C3CC4CE6F1A345861601F36882AA1098170104C0BCF051797E042C8956E14C4B0FF1EBE1FEDEFEA5EA8CAE5F2CAB7A5FE2E2B39F48C4';
wwv_flow_imp.g_varchar2_table(208) := 'FEBF7C43439344B508F0994FD530D7B222D2D631203D7D8BA559098148245AF16EA2EAB36F859E77C5B1D2600904ECBF0D4A6884A2102897803EDBD25FB6E5D6BF5B4F1DE4A3D12635873BBDA9CFF4707FE46E362FA60968DED3AFEEFF6B5956E14027EA';
wwv_flow_imp.g_varchar2_table(209) := 'F9FE9C70BFD362B25D09818EAE11D17753D4EF2BC348F16EE9544D214EC3FD09ABAFF791FA764FEF6127A0EF34D7DE35244DEACB30A2CE88D437A2383D2C7576A6CBEABDFBF5D9999EB3ED5643B6DD7D8B0A67FCE5ADE69650FC6801A02F816C6EE912BD';
wwv_flow_imp.g_varchar2_table(210) := 'FA5D732CA4758F4A434373281894E3A466A53F673DFD4B0AB74B6EEF18946986ADA24581FE4C8AA50EE68687654524AA3EE39A7767E14A94D6724C09541D9CA92F0104407DF9D3BB22D0D4D42E1D9D43A2875BFB06968BD3A3776059A16C67F798B4ABB3';
wwv_flow_imp.g_varchar2_table(211) := '33FD451C8D36A996F87543401F80F4C1ACAB674181A31604AC9170436EBA8C3E8837B776C934C331D1A2407F26DD7C6EBBD59442817753DB7463FC85401D092000EA089FAE210001088497009ED79B0002A0DE11A07F084000021080401D082000EA009D';
wwv_flow_imp.g_varchar2_table(212) := '2E21000108849D00FED79F0002A0FE31C00208400002108040CD0920006A8E9C0E21000108849D00FE7B810002C00B51C006084000021080408D0920006A0C9CEE20000108849D00FE7B830002C01B71C00A084000021080404D0920006A8A9BCE200001';
wwv_flow_imp.g_varchar2_table(213) := '08849D00FE7B850002C02B91C00E084000021080400D0920006A089BAE20000108849D00FE7B870002C03BB1C01208400002108040CD0820006A869A8E20000108849D00FE7B890002C04BD1C016084000021080408D0820006A049A6E20000108849D00';
wwv_flow_imp.g_varchar2_table(214) := 'FE7B8B0002C05BF1C01A084000021080404D0820006A82994E20000108849D00FE7B8D0002C06B11C11E084000021080400D0820006A00992E20000108849D00FE7B8F0002C07B31C12208400002108040D5092000AA8E980E20000108849D00FE7B9100';
wwv_flow_imp.g_varchar2_table(215) := '02C08B51C1260840000210804095092000AA0C98E621000108849D00FE7B930002C09B71C12A0840000210804055092000AA8A97C621000108849D00FE7B950002C0AB91C12E0840000210804015092000AA0897A621000108849D00FE7B970002C0BBB1';
wwv_flow_imp.g_varchar2_table(216) := 'C13208400002108040D5082000AA86968621000108849D00FE7B990002C0CBD1C1360840000210804095082000AA04966621000108849D00FE7B9B0002C0DBF1C13A0840000210804055082000AA82954621000108849D00FE7B9D0002C0EB11C23E0840';
wwv_flow_imp.g_varchar2_table(217) := '000210804015082000AA00952621000108849D00FE7B9F0002C0FB31C24208400002108040C50920002A8E940621000108849D00FEFB810002C00F51C24608400002108040850920002A0C94E620000108849D00FEFB830002C01F71C24A084000021080';
wwv_flow_imp.g_varchar2_table(218) := '40450920002A8A93C620000108849D00FEFB850002C02F91C24E08400002108040050920002A0893A620000108849D00FEFB870002C03FB1C25208400002108040C50820002A86928620000108849D00FEFB890002C04FD1C25608400002108040850820';
wwv_flow_imp.g_varchar2_table(219) := '002A04926620000108849D00FEFB8B0002C05FF1C25A08400002108040450820002A82914620000108849D00FEFB8D0002C06F11C35E08400002108040050820002A00912620000108849D00FEFB8F0002C07F31C362084000021080C0BC092000E68D90';
wwv_flow_imp.g_varchar2_table(220) := '0620000108849D00FEFB910002C08F51C366084000021080C03C092000E60990EA10800004C24E00FFFD490001E0CFB86135042000010840605E041000F3C2476508400002612780FF7E258000F06BE4B01B021080000420300F02088079C0A32A042000';
wwv_flow_imp.g_varchar2_table(221) := '81B013C07FFF124000F83776580E010840000210289B0002A06C745484000420107602F8EF670208003F470FDB210001084000026512400094098E6A10800004C24E00FFFD4D0001E0EFF8613D042000010840A02C020880B2B0510902108040D809E0BF';
wwv_flow_imp.g_varchar2_table(222) := 'DF092000FC1E41EC8700042000010894410001500634AA40000210083B01FCF73F010480FF63880710800004200081920920004A46460508400002612780FF41208000084214F101021080000420502201044089C0280E01084020EC04F03F18041000C1';
wwv_flow_imp.g_varchar2_table(223) := '88235E400002108000044A2280002809178521000108849D00FE07850002202891C40F084000021080400904100025C0A22804200081B013C0FFE01040000427967802010840000210704D0001E01A150521000108849D00FE078900022048D1C4170840';
wwv_flow_imp.g_varchar2_table(224) := '00021080804B02080097A0280601084020EC04F03F58041000C18A27DE400002108000045C114000B8C2442108400002612780FF41238000085A44F107021080000420E0820002C005248A40000210083B01FC0F1E010440F0628A471080000420000147';
wwv_flow_imp.g_varchar2_table(225) := '02080047441480000420107602F81F440208802046159F200001084000020E0410000E80C886000420107602F81F4C02088060C615AF2000010840000246020800231E3221000108849D00FE0795000220A891C52F08400002108080810002C000872C08';
wwv_flow_imp.g_varchar2_table(226) := '400002612780FFC1258000086E6CF10C021080000420604B0001608B860C08400002612780FF41268000087274F10D021080000420604300016003866408400002612780FFC126800008767CF10E02108000042050940002A028161221000108849D00FE';
wwv_flow_imp.g_varchar2_table(227) := '079D000220E811C63F084000021080401102088022504882000420107602F81F7C020880E0C7180F210001084000020F1040003C80840408400002612780FF61208000084394F11102108000042030870002600E10DE42000210083B01FC0F0701044038';
wwv_flow_imp.g_varchar2_table(228) := 'E28C9710800004200081FB082000EEC3C11B08400002612780FF61218000084BA4F113021080000420308B000260160C5E42000210083B01FC0F0F01044078628DA710800004200081BB0410007751F00202108040D809E07F98082000C2146D7C850004';
wwv_flow_imp.g_varchar2_table(229) := '20000108DC218000B803822708400002612780FFE12280000857BCF116021080000420502080002860E00F04200081B013C0FFB0114000842DE2F80B010840000210500410000A02BF10800004C24E00FFC347000110BE98E3310420000108404010007C';
wwv_flow_imp.g_varchar2_table(230) := '0820000108849E0000C248000110C6A8E3330420000108849E000220F41F0100400002612780FFE12480000867DCF11A0210800004424E000110F20F00EE430002612780FF61258000086BE4F11B0210800004424D000110EAF0E33C0420107602F81F5E';
wwv_flow_imp.g_varchar2_table(231) := '020880F0C61ECF210001084020C4041000210E3EAE430002612780FF612680000873F4F11D0210800004424B000110DAD0E3380420107602F81F6E02FF130000FFFF7A949175000000064944415403004692CA96DEF309A40000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(7530708514442718)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260712121926Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121926Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(7532013903442719)
,p_name=>'Administration Rights'
,p_static_id=>'administration-rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'plsql_function_body', 'return true;')).to_clob
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>'SH256:K94FzTYWdjDQ6WIg6w48Or20nhyD_tWnqCuRh9rK4CU'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20260712121926Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121926Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/appointments_appointment_time
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(7954027395691697)
,p_lov_name=>'APPOINTMENTS.APPOINTMENT_TIME'
,p_static_id=>'appointments-appointment-time'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'APPOINTMENTS'
,p_return_column_name=>'APPOINTMENT_ID'
,p_display_column_name=>'APPOINTMENT_TIME'
,p_default_sort_column_name=>'APPOINTMENT_TIME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:a7GKWmIkIq-k9ZXPKfcO6DzpNGhnsRJH1DXR0cCO4P4'
,p_created_on=>wwv_flow_imp.dz('20260713070901Z')
,p_updated_on=>wwv_flow_imp.dz('20260713070901Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/boolean
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(7540544652442785)
,p_lov_name=>'BOOLEAN'
,p_static_id=>'boolean'
,p_lov_query=>'.'||wwv_flow_imp.id(7540544652442785)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:CnCBOq-zabcz-aPWKwU8C5KDeZy6YuyjvpJoTrTywfI'
,p_created_on=>wwv_flow_imp.dz('20260712121926Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121926Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(7541231295442796)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'FALSE'
,p_static_id=>'false'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(7540877812442793)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'TRUE'
,p_static_id=>'true'
);
end;
/
prompt --application/shared_components/user_interface/lovs/doctors_full_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(7955442721691706)
,p_lov_name=>'DOCTORS.FULL_NAME'
,p_static_id=>'doctors-full-name'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'DOCTORS'
,p_return_column_name=>'DOCTOR_ID'
,p_display_column_name=>'FULL_NAME'
,p_default_sort_column_name=>'FULL_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:4H_cNBbjebt1UeD06ZKvN4AErT0Vjkrya69khbB3JA4'
,p_created_on=>wwv_flow_imp.dz('20260713070901Z')
,p_updated_on=>wwv_flow_imp.dz('20260713070901Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/medicine_categories_category_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(7735295580727749)
,p_lov_name=>'MEDICINE_CATEGORIES.CATEGORY_NAME'
,p_static_id=>'medicine-categories-category-name'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'MEDICINE_CATEGORIES'
,p_return_column_name=>'CATEGORY_ID'
,p_display_column_name=>'CATEGORY_NAME'
,p_default_sort_column_name=>'CATEGORY_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:gQfH9qbHeBOn5Dko3UmjL05j3-a-GzpDRvUa_b1D5G8'
,p_created_on=>wwv_flow_imp.dz('20260712130656Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130656Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/patients_civil_id
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(7954785417691705)
,p_lov_name=>'PATIENTS.CIVIL_ID'
,p_static_id=>'patients-civil-id'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'PATIENTS'
,p_return_column_name=>'PATIENT_ID'
,p_display_column_name=>'CIVIL_ID'
,p_default_sort_column_name=>'CIVIL_ID'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:qQ8HclmYsb9xAXu9I4H6JkDWHsU21ZKGk9_Y_KaerJc'
,p_created_on=>wwv_flow_imp.dz('20260713070901Z')
,p_updated_on=>wwv_flow_imp.dz('20260713070901Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/lovs/rooms_room_no
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8411372016716116)
,p_lov_name=>'ROOMS.ROOM_NO'
,p_static_id=>'rooms-room-no'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'ROOMS'
,p_return_column_name=>'ROOM_ID'
,p_display_column_name=>'ROOM_NO'
,p_default_sort_column_name=>'ROOM_NO'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:TU3uzxf7qjmR_y8rqi3XzC3GxF734WUkVleBCpvy-iU'
,p_created_on=>wwv_flow_imp.dz('20260715140142Z')
,p_updated_on=>wwv_flow_imp.dz('20260715140143Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(7532324329442722)
,p_group_name=>'Administration'
,p_static_id=>'administration'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(7527290120442603)
,p_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_created_on=>wwv_flow_imp.dz('20260712121925Z')
,p_updated_on=>wwv_flow_imp.dz('20260716134322Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8425994916716389)
,p_parent_id=>wwv_flow_imp.id(8424674108716381)
,p_short_name=>'Admission Form'
,p_static_id=>'admission-form'
,p_link=>'f?p=&APP_ID.:32:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>32
,p_created_on=>wwv_flow_imp.dz('20260715140145Z')
,p_updated_on=>wwv_flow_imp.dz('20260715140145Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8424674108716381)
,p_short_name=>'Admission Management'
,p_static_id=>'admission-management'
,p_link=>'f?p=&APP_ID.:31:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>31
,p_created_on=>wwv_flow_imp.dz('20260715140145Z')
,p_updated_on=>wwv_flow_imp.dz('20260715140145Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8476027483223830)
,p_parent_id=>wwv_flow_imp.id(7527455476442606)
,p_short_name=>'Admission Report'
,p_static_id=>'admission-report'
,p_link=>'f?p=&APP_ID.:34:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>34
,p_created_on=>wwv_flow_imp.dz('20260716113951Z')
,p_updated_on=>wwv_flow_imp.dz('20260716113951Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7782582425822338)
,p_parent_id=>wwv_flow_imp.id(7527455476442606)
,p_short_name=>'Appointment Report'
,p_static_id=>'appointment-report'
,p_link=>'f?p=&APP_ID.:24:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>24
,p_created_on=>wwv_flow_imp.dz('20260712132242Z')
,p_updated_on=>wwv_flow_imp.dz('20260712132242Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7590024650551909)
,p_parent_id=>wwv_flow_imp.id(7527455476442606)
,p_short_name=>'Appointment Statuses'
,p_static_id=>'appointment-statuses'
,p_link=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>12
,p_created_on=>wwv_flow_imp.dz('20260712123737Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123737Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7591230458551911)
,p_parent_id=>wwv_flow_imp.id(7590024650551909)
,p_short_name=>'AppointmentStatusesForm'
,p_static_id=>'appointmentstatusesform'
,p_link=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13
,p_created_on=>wwv_flow_imp.dz('20260712123738Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123738Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8353850797360237)
,p_parent_id=>wwv_flow_imp.id(7782582425822338)
,p_short_name=>'Clinical Visit Workspace'
,p_static_id=>'clinical-visit-workspace'
,p_link=>'f?p=&APP_ID.:30:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>30
,p_created_on=>wwv_flow_imp.dz('20260715100418Z')
,p_updated_on=>wwv_flow_imp.dz('20260715100418Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7555488134482168)
,p_parent_id=>wwv_flow_imp.id(7527455476442606)
,p_short_name=>'Departments'
,p_static_id=>'departments'
,p_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4
,p_created_on=>wwv_flow_imp.dz('20260712122600Z')
,p_updated_on=>wwv_flow_imp.dz('20260712122600Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7556737819482173)
,p_parent_id=>wwv_flow_imp.id(7555488134482168)
,p_short_name=>'Departments'
,p_static_id=>'departments-2'
,p_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>5
,p_created_on=>wwv_flow_imp.dz('20260712122600Z')
,p_updated_on=>wwv_flow_imp.dz('20260712122600Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7730549954696492)
,p_parent_id=>wwv_flow_imp.id(7527455476442606)
,p_short_name=>'Doctor Management'
,p_static_id=>'doctor-management'
,p_link=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>18
,p_created_on=>wwv_flow_imp.dz('20260712130143Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130143Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7567996125532461)
,p_parent_id=>wwv_flow_imp.id(7527455476442606)
,p_short_name=>'Doctor Specialties'
,p_static_id=>'doctor-specialties'
,p_link=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>8
,p_created_on=>wwv_flow_imp.dz('20260712123423Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123423Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7731814791696498)
,p_parent_id=>wwv_flow_imp.id(7730549954696492)
,p_short_name=>'DoctorManagementForm'
,p_static_id=>'doctormanagementform'
,p_link=>'f?p=&APP_ID.:19:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>19
,p_created_on=>wwv_flow_imp.dz('20260712130143Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130143Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7569211680532465)
,p_parent_id=>wwv_flow_imp.id(7567996125532461)
,p_short_name=>'DoctorSpecialtiesForm'
,p_static_id=>'doctorspecialtiesform'
,p_link=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>9
,p_created_on=>wwv_flow_imp.dz('20260712123423Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123423Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7527455476442606)
,p_short_name=>'Home'
,p_static_id=>'home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
,p_created_on=>wwv_flow_imp.dz('20260712121925Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121925Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7579484941546160)
,p_parent_id=>wwv_flow_imp.id(7527455476442606)
,p_short_name=>'Medicine Categories'
,p_static_id=>'medicine-categories'
,p_link=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10
,p_created_on=>wwv_flow_imp.dz('20260712123640Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123640Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7747803547727932)
,p_parent_id=>wwv_flow_imp.id(7527455476442606)
,p_short_name=>'Medicine Management'
,p_static_id=>'medicine-management'
,p_link=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>20
,p_created_on=>wwv_flow_imp.dz('20260712130658Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130658Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7763747301769711)
,p_parent_id=>wwv_flow_imp.id(7527455476442606)
,p_short_name=>'Medicine Stock Report'
,p_static_id=>'medicine-stock-report'
,p_link=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>22
,p_created_on=>wwv_flow_imp.dz('20260712131355Z')
,p_updated_on=>wwv_flow_imp.dz('20260712131355Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7580762531546161)
,p_parent_id=>wwv_flow_imp.id(7579484941546160)
,p_short_name=>'MedicineCategoriesForm'
,p_static_id=>'medicinecategoriesform'
,p_link=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>11
,p_created_on=>wwv_flow_imp.dz('20260712123640Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123640Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7749119235727948)
,p_parent_id=>wwv_flow_imp.id(7747803547727932)
,p_short_name=>'MedicineManagementForm'
,p_static_id=>'medicinemanagementform'
,p_link=>'f?p=&APP_ID.:21:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>21
,p_created_on=>wwv_flow_imp.dz('20260712130658Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130658Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7626697500567194)
,p_parent_id=>wwv_flow_imp.id(7527455476442606)
,p_short_name=>'Patient Management'
,p_static_id=>'patient-management'
,p_link=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>16
,p_created_on=>wwv_flow_imp.dz('20260712124010Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124010Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7931839813491921)
,p_short_name=>'Patient Profile'
,p_static_id=>'patient-profile'
,p_link=>'f?p=&APP_ID.:26:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>26
,p_created_on=>wwv_flow_imp.dz('20260713063543Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063543Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8457790982840620)
,p_parent_id=>wwv_flow_imp.id(7527455476442606)
,p_short_name=>'Patient Visit Report'
,p_static_id=>'patient-visit-report'
,p_link=>'f?p=&APP_ID.:33:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>33
,p_created_on=>wwv_flow_imp.dz('20260716092802Z')
,p_updated_on=>wwv_flow_imp.dz('20260716092802Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7627910955567196)
,p_parent_id=>wwv_flow_imp.id(7626697500567194)
,p_short_name=>'PatientManagementForm'
,p_static_id=>'patientmanagementform'
,p_link=>'f?p=&APP_ID.:17:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>17
,p_created_on=>wwv_flow_imp.dz('20260712124010Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124010Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7968635310938586)
,p_parent_id=>wwv_flow_imp.id(7527455476442606)
,p_short_name=>'Prescription Management'
,p_static_id=>'prescription-management'
,p_link=>'f?p=&APP_ID.:28:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>28
,p_created_on=>wwv_flow_imp.dz('20260713083026Z')
,p_updated_on=>wwv_flow_imp.dz('20260713083026Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7603893093556316)
,p_parent_id=>wwv_flow_imp.id(7527455476442606)
,p_short_name=>'Rooms'
,p_static_id=>'rooms'
,p_link=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>14
,p_created_on=>wwv_flow_imp.dz('20260712123822Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123822Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7605135469556317)
,p_parent_id=>wwv_flow_imp.id(7603893093556316)
,p_short_name=>'RoomsForm'
,p_static_id=>'roomsform'
,p_link=>'f?p=&APP_ID.:15:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>15
,p_created_on=>wwv_flow_imp.dz('20260712123822Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123822Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8177180445547409)
,p_parent_id=>wwv_flow_imp.id(7527455476442606)
,p_short_name=>'Visit and Prescription'
,p_static_id=>'visit-and-prescription'
,p_link=>'f?p=&APP_ID.:29:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>29
,p_created_on=>wwv_flow_imp.dz('20260714134249Z')
,p_updated_on=>wwv_flow_imp.dz('20260714134249Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7952926639691677)
,p_parent_id=>wwv_flow_imp.id(7527455476442606)
,p_short_name=>'Visit Form'
,p_static_id=>'visit-form'
,p_link=>'f?p=&APP_ID.:27:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>27
,p_created_on=>wwv_flow_imp.dz('20260713070901Z')
,p_updated_on=>wwv_flow_imp.dz('20260713070901Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(7528134024442618)
,p_theme_id=>42
,p_static_id=>'universal-theme'
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'26.1'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_is_locked=>false
,p_current_theme_style_id=>2243014446517417
,p_default_page_template=>4073832297226169690
,p_default_dialog_template=>2101883943284197310
,p_error_template=>2102634289808461002
,p_printer_friendly_template=>4073832297226169690
,p_login_template=>2102634289808461002
,p_default_button_template=>4073839297780169708
,p_default_region_template=>4073835273271169698
,p_default_chart_template=>4073835273271169698
,p_default_form_template=>4073835273271169698
,p_default_reportr_template=>4073835273271169698
,p_default_wizard_template=>4073835273271169698
,p_default_menur_template=>2532939663579242476
,p_default_listr_template=>4073835273271169698
,p_default_irr_template=>2102002977963900996
,p_default_report_template=>2540130677583398057
,p_default_label_template=>1610598304472262251
,p_default_menu_template=>4073839682315169711
,p_default_list_template=>4073837480889169704
,p_default_top_nav_list_temp=>2528231041045349458
,p_default_side_nav_list_temp=>2469215554099805162
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2127905476394690047
,p_default_dialogr_template=>4502917002193490937
,p_default_option_label=>1610598304472262251
,p_default_required_label=>1610598484065263269
,p_default_navbar_list_template=>2849019392706229583
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/26.1/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
,p_reference_id=>wwv_imp_util.get_subscription_id(4073840274158169736,2000,'universal-theme',8842.261)
,p_version_scn=>'SH256:RQZ7_KKNFF7leXIrwskeQw4WaazlZwly2sNGWk8hwQo'
,p_version_scn_master=>'SH256:WOPVC8vP1TPWUxczh2dJ4mCZcNGSTzA1cn8DjR2oQjY'
,p_created_on=>wwv_flow_imp.dz('20260712121925Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121925Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(7526664429442590)
,p_build_option_name=>'Commented Out'
,p_static_id=>'commented-out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>'SH256:1lQI3DW9n-0ZEGoDXUirkaB0JWCIATVWpJZCTCkODmI'
,p_created_on=>wwv_flow_imp.dz('20260712121924Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121924Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(7526947438442598)
,p_name=>'Oracle APEX Accounts'
,p_static_id=>'oracle-apex-accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>'SH256:MwlwV9vQNyvTGV3nRFfTrp5n7mJ1Ugme2lUrlsOYuxw'
,p_created_on=>wwv_flow_imp.dz('20260712121925Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121925Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_reload_on_submit=>null
,p_warn_on_unsaved_changes=>null
,p_autocomplete_on_off=>'OFF'
,p_protection_level=>'D'
,p_page_component_map=>'14'
,p_created_on=>wwv_flow_imp.dz('20260712121925Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260712121925Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_last_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Al Noor Hospital Management System'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_created_on=>wwv_flow_imp.dz('20260712121926Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260716123930Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_last_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8123975797313801)
,p_plug_name=>'Admissions by Room Type'
,p_static_id=>'admissions-by-room-type'
,p_title=>'Admissions by Room Type'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>70
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT r.room_type AS label,',
'       COUNT(*) AS value',
'FROM admissions a',
'JOIN rooms r',
'  ON r.room_id = a.room_id',
'GROUP BY r.room_type',
'ORDER BY r.room_type'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260714062115Z')
,p_updated_on=>wwv_flow_imp.dz('20260716123718Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(8124057984313802)
,p_region_id=>wwv_flow_imp.id(8123975797313801)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_created_on=>wwv_flow_imp.dz('20260714062115Z')
,p_updated_on=>wwv_flow_imp.dz('20260716123718Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(8124147586313803)
,p_chart_id=>wwv_flow_imp.id(8124057984313802)
,p_static_id=>'new'
,p_seq=>10
,p_name=>'Admissions'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT r.room_type AS LABEL,',
'       COUNT(*) AS VALUE',
'FROM admissions a',
'JOIN rooms r',
'ON r.room_id = a.room_id',
'GROUP BY r.room_type',
'ORDER BY r.room_type;'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_created_on=>wwv_flow_imp.dz('20260714062115Z')
,p_updated_on=>wwv_flow_imp.dz('20260716123718Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(8124284106313804)
,p_chart_id=>wwv_flow_imp.id(8124057984313802)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20260714062115Z')
,p_updated_on=>wwv_flow_imp.dz('20260714062115Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(8124310607313805)
,p_chart_id=>wwv_flow_imp.id(8124057984313802)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20260714062115Z')
,p_updated_on=>wwv_flow_imp.dz('20260714062115Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7945033030549136)
,p_plug_name=>'Appointments by Department'
,p_static_id=>'appointments-by-department'
,p_title=>'Appointments by Department'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT dep.department_name AS label,',
'       COUNT(*) AS value',
'FROM appointments a',
'JOIN doctors d',
'  ON d.doctor_id = a.doctor_id',
'JOIN departments dep',
'  ON dep.department_id = d.department_id',
'GROUP BY dep.department_name',
'ORDER BY dep.department_name'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260714055950Z')
,p_updated_on=>wwv_flow_imp.dz('20260714072752Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(7945120044549137)
,p_region_id=>wwv_flow_imp.id(7945033030549136)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_created_on=>wwv_flow_imp.dz('20260714055950Z')
,p_updated_on=>wwv_flow_imp.dz('20260714072752Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(7945223510549138)
,p_chart_id=>wwv_flow_imp.id(7945120044549137)
,p_static_id=>'new'
,p_seq=>10
,p_name=>'Appointments'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT dep.department_name AS LABEL,',
'       COUNT(*) AS VALUE',
'FROM appointments a',
'JOIN doctors d',
'  ON d.doctor_id = a.doctor_id',
'JOIN departments dep',
'  ON dep.department_id = d.department_id',
'GROUP BY dep.department_name',
'ORDER BY dep.department_name'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_created_on=>wwv_flow_imp.dz('20260714055950Z')
,p_updated_on=>wwv_flow_imp.dz('20260714072752Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(7945386686549139)
,p_chart_id=>wwv_flow_imp.id(7945120044549137)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20260714055950Z')
,p_updated_on=>wwv_flow_imp.dz('20260714055950Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(7945445466549140)
,p_chart_id=>wwv_flow_imp.id(7945120044549137)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20260714055950Z')
,p_updated_on=>wwv_flow_imp.dz('20260714055950Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7539908184442773)
,p_plug_name=>'Al Noor Hospital Management System'
,p_static_id=>'hospital-management-system'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2675494171183407654
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712121926Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052011Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8124997013313811)
,p_plug_name=>'KPI Cards'
,p_static_id=>'kpi-cards'
,p_title=>'KPI Cards'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2074200852440250129
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Total Patients'' AS CARD_TITLE,',
'       COUNT(*) AS CARD_VALUE,',
'       ''fa-users'' AS CARD_ICON',
'FROM patients',
'',
'UNION ALL',
'',
'SELECT ''Today''''s Appointments'',',
'       COUNT(*),',
'       ''fa-calendar''',
'FROM appointments',
'WHERE TRUNC(appointment_date) = TRUNC(SYSDATE)',
'',
'UNION ALL',
'',
'SELECT ''Active Doctors'',',
'       COUNT(*),',
'       ''fa-user-md''',
'FROM doctors',
'WHERE status = ''Active''',
'',
'UNION ALL',
'',
'SELECT ''Current Admissions'',',
'       COUNT(*),',
'       ''fa-bed''',
'FROM admissions',
'WHERE status = ''Admitted''',
'',
'UNION ALL',
'',
'SELECT ''Low Stock Medicines'',',
'       COUNT(*),',
'       ''fa-exclamation-triangle''',
'FROM medicines',
'WHERE current_stock < reorder_level;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_created_on=>wwv_flow_imp.dz('20260714065621Z')
,p_updated_on=>wwv_flow_imp.dz('20260714072718Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(8125167984313813)
,p_region_id=>wwv_flow_imp.id(8124997013313811)
,p_layout_type=>'GRID'
,p_grid_column_count=>5
,p_title_adv_formatting=>false
,p_title_column_name=>'CARD_TITLE'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CARD_VALUE'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_updated_on=>wwv_flow_imp.dz('20260714072718Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7946006172549146)
,p_plug_name=>'Medicine Stock Status'
,p_static_id=>'medicine-stock-status'
,p_title=>'Medicine Stock Status'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>60
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CASE',
'           WHEN current_stock < reorder_level',
'           THEN ''Low Stock''',
'           ELSE ''Normal''',
'       END AS label,',
'       COUNT(*) AS value',
'FROM medicines',
'GROUP BY CASE',
'             WHEN current_stock < reorder_level',
'             THEN ''Low Stock''',
'             ELSE ''Normal''',
'         END'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260714062115Z')
,p_updated_on=>wwv_flow_imp.dz('20260716123930Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(7946189713549147)
,p_region_id=>wwv_flow_imp.id(7946006172549146)
,p_chart_type=>'donut'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_created_on=>wwv_flow_imp.dz('20260714062115Z')
,p_updated_on=>wwv_flow_imp.dz('20260716123930Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(7946242873549148)
,p_chart_id=>wwv_flow_imp.id(7946189713549147)
,p_static_id=>'new_1'
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CASE',
'         WHEN current_stock < reorder_level THEN ''Low Stock''',
'         ELSE ''Normal''',
'       END AS LABEL,',
'       COUNT(*) AS VALUE',
'FROM medicines',
'GROUP BY CASE',
'           WHEN current_stock < reorder_level THEN ''Low Stock''',
'           ELSE ''Normal''',
'         END;'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>false
,p_created_on=>wwv_flow_imp.dz('20260714062115Z')
,p_updated_on=>wwv_flow_imp.dz('20260716123930Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8124468105313806)
,p_plug_name=>'Monthly Patient Visits'
,p_static_id=>'monthly-patient-visits'
,p_title=>'Monthly Patient Visits'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>80
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(visit_date, ''MON-YYYY'') AS label,',
'       COUNT(*) AS value,',
'       TRUNC(visit_date, ''MM'') AS sort_date',
'FROM patient_visits',
'GROUP BY TO_CHAR(visit_date, ''MON-YYYY''),',
'         TRUNC(visit_date, ''MM'')',
'ORDER BY sort_date'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260714062115Z')
,p_updated_on=>wwv_flow_imp.dz('20260716123718Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(8124560213313807)
,p_region_id=>wwv_flow_imp.id(8124468105313806)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_created_on=>wwv_flow_imp.dz('20260714062115Z')
,p_updated_on=>wwv_flow_imp.dz('20260716123718Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(8124641337313808)
,p_chart_id=>wwv_flow_imp.id(8124560213313807)
,p_static_id=>'new'
,p_seq=>10
,p_name=>'Visits'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(visit_date,''MON-YYYY'') AS LABEL,',
'       COUNT(*) AS VALUE,',
'       TRUNC(visit_date,''MM'') AS SORT_DATE',
'FROM patient_visits',
'GROUP BY TO_CHAR(visit_date,''MON-YYYY''),',
'         TRUNC(visit_date,''MM'')',
'ORDER BY SORT_DATE;'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_created_on=>wwv_flow_imp.dz('20260714062115Z')
,p_updated_on=>wwv_flow_imp.dz('20260716123718Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(8124725819313809)
,p_chart_id=>wwv_flow_imp.id(8124560213313807)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20260714062115Z')
,p_updated_on=>wwv_flow_imp.dz('20260714062115Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(8124812776313810)
,p_chart_id=>wwv_flow_imp.id(8124560213313807)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20260714062115Z')
,p_updated_on=>wwv_flow_imp.dz('20260714062115Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7945501721549141)
,p_plug_name=>'Patients by Gender'
,p_static_id=>'patients-by-gender'
,p_title=>'Patients by Gender'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>50
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT gender AS label,',
'       COUNT(*) AS value',
'FROM patients',
'GROUP BY gender',
'ORDER BY gender'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260714062115Z')
,p_updated_on=>wwv_flow_imp.dz('20260714065621Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(7945624692549142)
,p_region_id=>wwv_flow_imp.id(7945501721549141)
,p_chart_type=>'donut'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_created_on=>wwv_flow_imp.dz('20260714062115Z')
,p_updated_on=>wwv_flow_imp.dz('20260714062115Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(7945707928549143)
,p_chart_id=>wwv_flow_imp.id(7945624692549142)
,p_static_id=>'new_1'
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT gender AS LABEL,',
'       COUNT(*) AS VALUE',
'FROM patients',
'GROUP BY gender',
'ORDER BY gender;'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>false
,p_created_on=>wwv_flow_imp.dz('20260714062115Z')
,p_updated_on=>wwv_flow_imp.dz('20260714062115Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Departments'
,p_alias=>'DEPARTMENTS1'
,p_step_title=>'Departments'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260712122558Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260712133034Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_last_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7555538459482169)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7527290120442603)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260712122600Z')
,p_updated_on=>wwv_flow_imp.dz('20260712122600Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7551894104482133)
,p_plug_name=>'Departments'
,p_static_id=>'departments'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'DEPARTMENTS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260712122600Z')
,p_updated_on=>wwv_flow_imp.dz('20260712133034Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(7551979421482133)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:RP:P5_DEPARTMENT_ID:\#DEPARTMENT_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>7551979421482133
,p_created_on=>wwv_flow_imp.dz('20260712122600Z')
,p_updated_on=>wwv_flow_imp.dz('20260712133034Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7553177524482150)
,p_db_column_name=>'DEPARTMENT_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Department ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260712122600Z')
,p_updated_on=>wwv_flow_imp.dz('20260712122600Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7553526720482161)
,p_db_column_name=>'DEPARTMENT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Department Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712122600Z')
,p_updated_on=>wwv_flow_imp.dz('20260712122600Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7553939187482164)
,p_db_column_name=>'FLOOR_NO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Floor No'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712122600Z')
,p_updated_on=>wwv_flow_imp.dz('20260712122600Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7554302455482165)
,p_db_column_name=>'STATUS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712122600Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123110Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(7784227255869620)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DEPARTMENT_ID:DEPARTMENT_NAME:FLOOR_NO:STATUS'
,p_created_on=>wwv_flow_imp.dz('20260712133034Z')
,p_updated_on=>wwv_flow_imp.dz('20260712133034Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7554776024482167)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7551894104482133)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:5::'
,p_created_on=>wwv_flow_imp.dz('20260712122600Z')
,p_updated_on=>wwv_flow_imp.dz('20260712122600Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Departments'
,p_alias=>'DEPARTMENTS'
,p_step_title=>'Departments'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260712122558Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260712123241Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_last_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7556167157482173)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7527290120442603)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260712122600Z')
,p_updated_on=>wwv_flow_imp.dz('20260712122600Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7545078538481941)
,p_plug_name=>'Departments'
,p_static_id=>'departments'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'DEPARTMENTS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260712122558Z')
,p_updated_on=>wwv_flow_imp.dz('20260712122558Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7548223873481953)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7545078538481941)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20260712122558Z')
,p_updated_on=>wwv_flow_imp.dz('20260712122558Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7549548809481956)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(7545078538481941)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P5_DEPARTMENT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260712122558Z')
,p_updated_on=>wwv_flow_imp.dz('20260712122558Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7548751304481955)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7545078538481941)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P5_DEPARTMENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260712122558Z')
,p_updated_on=>wwv_flow_imp.dz('20260712122558Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7549193104481956)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(7545078538481941)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P5_DEPARTMENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260712122558Z')
,p_updated_on=>wwv_flow_imp.dz('20260712122558Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(7549941735481956)
,p_branch_action=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20260712122558Z')
,p_updated_on=>wwv_flow_imp.dz('20260712122558Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7545423117481942)
,p_name=>'P5_DEPARTMENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7545078538481941)
,p_item_source_plug_id=>wwv_flow_imp.id(7545078538481941)
,p_source=>'DEPARTMENT_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712122558Z')
,p_updated_on=>wwv_flow_imp.dz('20260712122558Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7545897411481950)
,p_name=>'P5_DEPARTMENT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7545078538481941)
,p_item_source_plug_id=>wwv_flow_imp.id(7545078538481941)
,p_prompt=>'Department Name'
,p_source=>'DEPARTMENT_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712122558Z')
,p_updated_on=>wwv_flow_imp.dz('20260712122558Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7546284911481951)
,p_name=>'P5_FLOOR_NO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7545078538481941)
,p_item_source_plug_id=>wwv_flow_imp.id(7545078538481941)
,p_prompt=>'Floor No'
,p_source=>'FLOOR_NO'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712122558Z')
,p_updated_on=>wwv_flow_imp.dz('20260712122558Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7546667700481951)
,p_name=>'P5_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7545078538481941)
,p_item_source_plug_id=>wwv_flow_imp.id(7545078538481941)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Active;Active,Inactive;Inactive'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712122558Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123241Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7550352566481957)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(7545078538481941)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Departments'
,p_static_id=>'initialize-form-departments'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>7550352566481957
,p_created_on=>wwv_flow_imp.dz('20260712122558Z')
,p_updated_on=>wwv_flow_imp.dz('20260712122558Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7550787809481959)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(7545078538481941)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Departments'
,p_static_id=>'process-form-departments'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7550787809481959
,p_created_on=>wwv_flow_imp.dz('20260712122558Z')
,p_updated_on=>wwv_flow_imp.dz('20260712122558Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'Doctor Specialties'
,p_alias=>'DOCTOR-SPECIALTIES'
,p_step_title=>'Doctor Specialties'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260712123421Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260713052243Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_last_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7568047004532461)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7527290120442603)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260712123423Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123423Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7564789692532439)
,p_plug_name=>'Doctor Specialties'
,p_static_id=>'doctor-specialties'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'DOCTOR_SPECIALTIES'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260712123423Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052243Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(7564805587532439)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:RP:P9_SPECIALTY_ID:\#SPECIALTY_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>7564805587532439
,p_created_on=>wwv_flow_imp.dz('20260712123423Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052243Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7566008900532452)
,p_db_column_name=>'SPECIALTY_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Specialty ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260712123423Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123423Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7566414318532457)
,p_db_column_name=>'SPECIALTY_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Specialty Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712123423Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123423Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7566836931532458)
,p_db_column_name=>'STATUS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712123423Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123423Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(7923048582053848)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SPECIALTY_ID:SPECIALTY_NAME:STATUS'
,p_created_on=>wwv_flow_imp.dz('20260713052243Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052243Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7567260022532460)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7564789692532439)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:9::'
,p_created_on=>wwv_flow_imp.dz('20260712123423Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123423Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>'DoctorSpecialtiesForm'
,p_alias=>'DOCTORSPECIALTIESFORM'
,p_step_title=>'DoctorSpecialtiesForm'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260712123421Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260712123423Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_last_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7568673745532465)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7527290120442603)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260712123423Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123423Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7558671150532282)
,p_plug_name=>'DoctorSpecialtiesForm'
,p_static_id=>'doctorspecialtiesform'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'DOCTOR_SPECIALTIES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260712123421Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123421Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7561174909532293)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7558671150532282)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20260712123421Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123421Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7562466671532294)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(7558671150532282)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P9_SPECIALTY_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260712123421Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123421Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7561625464532293)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7558671150532282)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P9_SPECIALTY_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260712123421Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123421Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7562061953532294)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(7558671150532282)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P9_SPECIALTY_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260712123421Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123421Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(7562896241532294)
,p_branch_action=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20260712123421Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123421Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7559034024532288)
,p_name=>'P9_SPECIALTY_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7558671150532282)
,p_item_source_plug_id=>wwv_flow_imp.id(7558671150532282)
,p_source=>'SPECIALTY_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712123421Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123421Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7559483751532291)
,p_name=>'P9_SPECIALTY_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7558671150532282)
,p_item_source_plug_id=>wwv_flow_imp.id(7558671150532282)
,p_prompt=>'Specialty Name'
,p_source=>'SPECIALTY_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712123421Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123421Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7559809907532291)
,p_name=>'P9_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7558671150532282)
,p_item_source_plug_id=>wwv_flow_imp.id(7558671150532282)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712123421Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123421Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7563296381532295)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(7558671150532282)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form DoctorSpecialtiesForm'
,p_static_id=>'initialize-form-doctorspecialtiesform'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>7563296381532295
,p_created_on=>wwv_flow_imp.dz('20260712123421Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123421Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7563663334532298)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(7558671150532282)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form DoctorSpecialtiesForm'
,p_static_id=>'process-form-doctorspecialtiesform'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7563663334532298
,p_created_on=>wwv_flow_imp.dz('20260712123421Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123421Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Medicine Categories'
,p_alias=>'MEDICINE-CATEGORIES'
,p_step_title=>'Medicine Categories'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260712123639Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260713052243Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_last_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7579595412546160)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7527290120442603)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260712123640Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123640Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7576268232546148)
,p_plug_name=>'Medicine Categories'
,p_static_id=>'medicine-categories'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'MEDICINE_CATEGORIES'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260712123640Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052243Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(7576371102546148)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:RP:P11_CATEGORY_ID:\#CATEGORY_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>7576371102546148
,p_created_on=>wwv_flow_imp.dz('20260712123640Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052243Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7577597688546152)
,p_db_column_name=>'CATEGORY_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Category ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260712123640Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123640Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7577939797546156)
,p_db_column_name=>'CATEGORY_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Category Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712123640Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123640Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7578367693546157)
,p_db_column_name=>'STATUS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712123640Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123640Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(7923595646053925)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CATEGORY_ID:CATEGORY_NAME:STATUS'
,p_created_on=>wwv_flow_imp.dz('20260713052243Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052243Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7578789941546159)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7576268232546148)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:11::'
,p_created_on=>wwv_flow_imp.dz('20260712123640Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123640Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_imp_page.create_page(
 p_id=>11
,p_name=>'MedicineCategoriesForm'
,p_alias=>'MEDICINECATEGORIESFORM'
,p_step_title=>'MedicineCategoriesForm'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260712123638Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260712123640Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_last_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7580143506546161)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7527290120442603)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260712123640Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123640Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7570263943546015)
,p_plug_name=>'MedicineCategoriesForm'
,p_static_id=>'medicinecategoriesform'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'MEDICINE_CATEGORIES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260712123639Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123639Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7572663512546017)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7570263943546015)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20260712123639Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123639Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7573937718546018)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(7570263943546015)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P11_CATEGORY_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260712123639Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123639Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7573138101546017)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7570263943546015)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P11_CATEGORY_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260712123639Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123639Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7573588993546018)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(7570263943546015)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P11_CATEGORY_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260712123639Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123639Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(7574330366546018)
,p_branch_action=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20260712123639Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123639Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7570579550546016)
,p_name=>'P11_CATEGORY_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7570263943546015)
,p_item_source_plug_id=>wwv_flow_imp.id(7570263943546015)
,p_source=>'CATEGORY_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712123639Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123639Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7570932219546016)
,p_name=>'P11_CATEGORY_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7570263943546015)
,p_item_source_plug_id=>wwv_flow_imp.id(7570263943546015)
,p_prompt=>'Category Name'
,p_source=>'CATEGORY_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712123639Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123639Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7571349990546016)
,p_name=>'P11_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7570263943546015)
,p_item_source_plug_id=>wwv_flow_imp.id(7570263943546015)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712123639Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123639Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7574724562546018)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(7570263943546015)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form MedicineCategoriesForm'
,p_static_id=>'initialize-form-medicinecategoriesform'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>7574724562546018
,p_created_on=>wwv_flow_imp.dz('20260712123639Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123639Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7575150093546019)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(7570263943546015)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form MedicineCategoriesForm'
,p_static_id=>'process-form-medicinecategoriesform'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7575150093546019
,p_created_on=>wwv_flow_imp.dz('20260712123639Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123639Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>'Appointment Statuses'
,p_alias=>'APPOINTMENT-STATUSES'
,p_step_title=>'Appointment Statuses'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260712123736Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260713052244Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_last_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7587248375551897)
,p_plug_name=>'Appointment Statuses'
,p_static_id=>'appointment-statuses'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'APPOINTMENT_STATUSES'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260712123737Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052244Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(7587328907551897)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:RP:P13_STATUS_ID:\#STATUS_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>7587328907551897
,p_created_on=>wwv_flow_imp.dz('20260712123737Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052244Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7588540723551902)
,p_db_column_name=>'STATUS_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Status ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260712123737Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123737Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7588919810551906)
,p_db_column_name=>'STATUS_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Status Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712123737Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123737Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(7924185611053986)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STATUS_ID:STATUS_NAME'
,p_created_on=>wwv_flow_imp.dz('20260713052244Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052244Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7590139857551909)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7527290120442603)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260712123737Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123737Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7589322141551908)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7587248375551897)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:13::'
,p_created_on=>wwv_flow_imp.dz('20260712123737Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123737Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_imp_page.create_page(
 p_id=>13
,p_name=>'AppointmentStatusesForm'
,p_alias=>'APPOINTMENTSTATUSESFORM'
,p_step_title=>'AppointmentStatusesForm'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260712123736Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260712123738Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_last_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7581835568551756)
,p_plug_name=>'AppointmentStatusesForm'
,p_static_id=>'appointmentstatusesform'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'APPOINTMENT_STATUSES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260712123736Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123736Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7590752244551911)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7527290120442603)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260712123737Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123737Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7583650854551758)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7581835568551756)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20260712123736Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123736Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7584929798551759)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(7581835568551756)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P13_STATUS_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260712123736Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123736Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7584199488551758)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7581835568551756)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P13_STATUS_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260712123736Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123736Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7584549874551759)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(7581835568551756)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P13_STATUS_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260712123736Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123736Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(7585329113551759)
,p_branch_action=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20260712123736Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123736Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7582234649551757)
,p_name=>'P13_STATUS_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7581835568551756)
,p_item_source_plug_id=>wwv_flow_imp.id(7581835568551756)
,p_source=>'STATUS_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712123736Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123736Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7582606319551757)
,p_name=>'P13_STATUS_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7581835568551756)
,p_item_source_plug_id=>wwv_flow_imp.id(7581835568551756)
,p_prompt=>'Status Name'
,p_source=>'STATUS_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712123736Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123736Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7585725383551759)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(7581835568551756)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form AppointmentStatusesForm'
,p_static_id=>'initialize-form-appointmentstatusesform'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>7585725383551759
,p_created_on=>wwv_flow_imp.dz('20260712123736Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123736Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7586194205551760)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(7581835568551756)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form AppointmentStatusesForm'
,p_static_id=>'process-form-appointmentstatusesform'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7586194205551760
,p_created_on=>wwv_flow_imp.dz('20260712123736Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123736Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_imp_page.create_page(
 p_id=>14
,p_name=>'Rooms'
,p_alias=>'ROOMS'
,p_step_title=>'Rooms'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260712123820Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260713052245Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_last_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7603952971556316)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7527290120442603)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260712123822Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123822Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7599902438556298)
,p_plug_name=>'Rooms'
,p_static_id=>'rooms'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'ROOMS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260712123821Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052245Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(7600093241556298)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:15:&APP_SESSION.::&DEBUG.:RP:P15_ROOM_ID:\#ROOM_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>7600093241556298
,p_created_on=>wwv_flow_imp.dz('20260712123821Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052245Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7602478921556310)
,p_db_column_name=>'DAILY_RATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Daily Rate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712123821Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123821Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7601272540556303)
,p_db_column_name=>'ROOM_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Room ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260712123821Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123821Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7601688629556306)
,p_db_column_name=>'ROOM_NO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Room No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712123821Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123821Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7602045689556308)
,p_db_column_name=>'ROOM_TYPE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Room Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712123821Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123821Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7602802666556312)
,p_db_column_name=>'STATUS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712123822Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123822Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(7924636552054042)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ROOM_ID:ROOM_NO:ROOM_TYPE:DAILY_RATE:STATUS'
,p_created_on=>wwv_flow_imp.dz('20260713052245Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052245Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7603181503556313)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7599902438556298)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&APP_SESSION.::&DEBUG.:15::'
,p_created_on=>wwv_flow_imp.dz('20260712123822Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123822Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_imp_page.create_page(
 p_id=>15
,p_name=>'RoomsForm'
,p_alias=>'ROOMSFORM'
,p_step_title=>'RoomsForm'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260712123820Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260712123822Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_last_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7604535049556317)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7527290120442603)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260712123822Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123822Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7592440651556151)
,p_plug_name=>'RoomsForm'
,p_static_id=>'roomsform'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'ROOMS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260712123820Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123820Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7596386823556162)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7592440651556151)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20260712123820Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123820Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7597647892556163)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(7592440651556151)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P15_ROOM_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260712123820Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123820Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7596888847556163)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7592440651556151)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P15_ROOM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260712123820Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123820Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7597275480556163)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(7592440651556151)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P15_ROOM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260712123820Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123820Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(7598056522556163)
,p_branch_action=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20260712123820Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123820Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7594070023556155)
,p_name=>'P15_DAILY_RATE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7592440651556151)
,p_item_source_plug_id=>wwv_flow_imp.id(7592440651556151)
,p_prompt=>'Daily Rate'
,p_source=>'DAILY_RATE'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712123820Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123820Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7592858177556154)
,p_name=>'P15_ROOM_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7592440651556151)
,p_item_source_plug_id=>wwv_flow_imp.id(7592440651556151)
,p_source=>'ROOM_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712123820Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123820Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7593227474556154)
,p_name=>'P15_ROOM_NO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7592440651556151)
,p_item_source_plug_id=>wwv_flow_imp.id(7592440651556151)
,p_prompt=>'Room No'
,p_source=>'ROOM_NO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712123820Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123820Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7593662665556155)
,p_name=>'P15_ROOM_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7592440651556151)
,p_item_source_plug_id=>wwv_flow_imp.id(7592440651556151)
,p_prompt=>'Room Type'
,p_source=>'ROOM_TYPE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712123820Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123820Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7594453938556161)
,p_name=>'P15_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(7592440651556151)
,p_item_source_plug_id=>wwv_flow_imp.id(7592440651556151)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712123820Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123820Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7598451925556164)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(7592440651556151)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form RoomsForm'
,p_static_id=>'initialize-form-roomsform'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>7598451925556164
,p_created_on=>wwv_flow_imp.dz('20260712123820Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123820Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7598819612556164)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(7592440651556151)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form RoomsForm'
,p_static_id=>'process-form-roomsform'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7598819612556164
,p_created_on=>wwv_flow_imp.dz('20260712123820Z')
,p_updated_on=>wwv_flow_imp.dz('20260712123820Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_imp_page.create_page(
 p_id=>16
,p_name=>'Patient Management'
,p_alias=>'PATIENT-MANAGEMENT'
,p_step_title=>'Patient Management'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260712124009Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260713065405Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_last_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7626766361567194)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7527290120442603)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260712124010Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124010Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7619894158567167)
,p_plug_name=>'Patient Management'
,p_static_id=>'patient-management'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT patient_id,',
'       civil_id,',
'       full_name,',
'       gender,',
'       date_of_birth,',
'       TRUNC(MONTHS_BETWEEN(SYSDATE, date_of_birth) / 12) AS age,',
'       mobile_no,',
'       email,',
'       blood_group,',
'       address,',
'       created_at',
'FROM patients'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260712124010Z')
,p_updated_on=>wwv_flow_imp.dz('20260713065405Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(7619955871567167)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:17:&APP_SESSION.::&DEBUG.:RP:P17_PATIENT_ID:\#PATIENT_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>7619955871567167
,p_created_on=>wwv_flow_imp.dz('20260712124010Z')
,p_updated_on=>wwv_flow_imp.dz('20260713065405Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7624306943567187)
,p_db_column_name=>'ADDRESS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712124010Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124010Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6746403542399809)
,p_db_column_name=>'AGE'
,p_display_order=>22
,p_column_identifier=>'M'
,p_column_label=>'Age'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712125008Z')
,p_updated_on=>wwv_flow_imp.dz('20260712125008Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7623925861567186)
,p_db_column_name=>'BLOOD_GROUP'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Blood Group'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712124010Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124010Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7621585921567175)
,p_db_column_name=>'CIVIL_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Civil ID'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712124010Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124010Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7625589589567192)
,p_db_column_name=>'CREATED_AT'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Created At'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712124010Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124010Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7622762529567181)
,p_db_column_name=>'DATE_OF_BIRTH'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Date of Birth'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712124010Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124010Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7623537377567184)
,p_db_column_name=>'EMAIL'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712124010Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124010Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7621973352567177)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Full Name'
,p_column_link=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:26:P26_PATIENT_ID:#PATIENT_ID#'
,p_column_linktext=>'#FULL_NAME#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712124010Z')
,p_updated_on=>wwv_flow_imp.dz('20260713065405Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7622386987567179)
,p_db_column_name=>'GENDER'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Gender'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712124010Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124010Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7623156259567182)
,p_db_column_name=>'MOBILE_NO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Mobile No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712124010Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124010Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7621131927567172)
,p_db_column_name=>'PATIENT_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Patient ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260712124010Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124010Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(7925194583054108)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PATIENT_ID:CIVIL_ID:FULL_NAME:GENDER:DATE_OF_BIRTH:MOBILE_NO:EMAIL:BLOOD_GROUP:ADDRESS:CREATED_AT:AGE'
,p_created_on=>wwv_flow_imp.dz('20260713052245Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052245Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7625967247567194)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7619894158567167)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:17:&APP_SESSION.::&DEBUG.:17::'
,p_created_on=>wwv_flow_imp.dz('20260712124010Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124010Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_imp_page.create_page(
 p_id=>17
,p_name=>'PatientManagementForm'
,p_alias=>'PATIENTMANAGEMENTFORM'
,p_step_title=>'PatientManagementForm'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260712124009Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260714075222Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_last_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7627354627567195)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7527290120442603)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260712124010Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124010Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7607086530567023)
,p_plug_name=>'PatientManagementForm'
,p_static_id=>'patientmanagementform'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PATIENTS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260712124009Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124009Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7616254857567035)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7607086530567023)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20260712124009Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124009Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7617558387567036)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(7607086530567023)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P17_PATIENT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260712124009Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124009Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7616736530567036)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7607086530567023)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P17_PATIENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260712124009Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124009Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7617153600567036)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(7607086530567023)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P17_PATIENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260712124009Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124009Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(7617931455567036)
,p_branch_action=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20260712124009Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124009Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7610639150567026)
,p_name=>'P17_ADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(7607086530567023)
,p_item_source_plug_id=>wwv_flow_imp.id(7607086530567023)
,p_prompt=>'Address'
,p_source=>'ADDRESS'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>300
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712124009Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124009Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7610220372567026)
,p_name=>'P17_BLOOD_GROUP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(7607086530567023)
,p_item_source_plug_id=>wwv_flow_imp.id(7607086530567023)
,p_prompt=>'Blood Group'
,p_source=>'BLOOD_GROUP'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:A+;A+,A-;A-,B+;B+,B-;B-,O+;O+,O-;O-,AB+;AB+,AB-;AB-'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712124009Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124350Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7607809856567024)
,p_name=>'P17_CIVIL_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7607086530567023)
,p_item_source_plug_id=>wwv_flow_imp.id(7607086530567023)
,p_prompt=>'Civil Id'
,p_source=>'CIVIL_ID'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712124009Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124009Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7611861427567027)
,p_name=>'P17_CREATED_AT'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(7607086530567023)
,p_item_source_plug_id=>wwv_flow_imp.id(7607086530567023)
,p_prompt=>'Created At'
,p_source=>'CREATED_AT'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712124009Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124350Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7609059320567025)
,p_name=>'P17_DATE_OF_BIRTH'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(7607086530567023)
,p_item_source_plug_id=>wwv_flow_imp.id(7607086530567023)
,p_prompt=>'Date Of Birth'
,p_source=>'DATE_OF_BIRTH'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712124009Z')
,p_updated_on=>wwv_flow_imp.dz('20260714075222Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7609854908567026)
,p_name=>'P17_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(7607086530567023)
,p_item_source_plug_id=>wwv_flow_imp.id(7607086530567023)
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>150
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712124009Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124009Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7611053242567026)
,p_name=>'P17_EMERGENCY_CONTACT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(7607086530567023)
,p_item_source_plug_id=>wwv_flow_imp.id(7607086530567023)
,p_prompt=>'Emergency Contact Name'
,p_source=>'EMERGENCY_CONTACT_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>150
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712124009Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124009Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7611414188567027)
,p_name=>'P17_EMERGENCY_CONTACT_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(7607086530567023)
,p_item_source_plug_id=>wwv_flow_imp.id(7607086530567023)
,p_prompt=>'Emergency Contact No'
,p_source=>'EMERGENCY_CONTACT_NO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712124009Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124009Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7608248000567024)
,p_name=>'P17_FULL_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7607086530567023)
,p_item_source_plug_id=>wwv_flow_imp.id(7607086530567023)
,p_prompt=>'Full Name'
,p_source=>'FULL_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>150
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712124009Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124009Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7608695646567025)
,p_name=>'P17_GENDER'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7607086530567023)
,p_item_source_plug_id=>wwv_flow_imp.id(7607086530567023)
,p_prompt=>'Gender'
,p_source=>'GENDER'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Male;Male,Female;Female'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712124009Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124350Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7609459811567025)
,p_name=>'P17_MOBILE_NO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(7607086530567023)
,p_item_source_plug_id=>wwv_flow_imp.id(7607086530567023)
,p_prompt=>'Mobile No'
,p_source=>'MOBILE_NO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712124009Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124009Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7607416643567024)
,p_name=>'P17_PATIENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7607086530567023)
,p_item_source_plug_id=>wwv_flow_imp.id(7607086530567023)
,p_source=>'PATIENT_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712124009Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124009Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8125237376313814)
,p_validation_name=>'Civil ID'
,p_static_id=>'civil-id'
,p_validation_sequence=>120
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM patients',
'WHERE civil_id = :PXX_CIVIL_ID',
'  AND patient_id <> NVL(:PXX_PATIENT_ID, -1)'))
,p_validation2=>'SQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Civil ID already exists.'
,p_associated_item=>wwv_flow_imp.id(7607809856567024)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260714073951Z')
,p_updated_on=>wwv_flow_imp.dz('20260714073951Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8125471783313816)
,p_validation_name=>'Date of birth'
,p_static_id=>'date-of-birth'
,p_validation_sequence=>130
,p_validation=>':PXX_DATE_OF_BIRTH <= TRUNC(SYSDATE)'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Date of birth cannot be in the future.'
,p_associated_item=>wwv_flow_imp.id(7609059320567025)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260714075045Z')
,p_updated_on=>wwv_flow_imp.dz('20260714075045Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(7612257344567029)
,p_validation_name=>'P17_CREATED_AT must be timestamp'
,p_static_id=>'p17-created-at-must-be-timestamp'
,p_validation_sequence=>110
,p_validation=>'P17_CREATED_AT'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(7611861427567027)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260712124009Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124009Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7618379830567037)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(7607086530567023)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form PatientManagementForm'
,p_static_id=>'initialize-form-patientmanagementform'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>7618379830567037
,p_created_on=>wwv_flow_imp.dz('20260712124009Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124009Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7618798623567037)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(7607086530567023)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form PatientManagementForm'
,p_static_id=>'process-form-patientmanagementform'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7618798623567037
,p_created_on=>wwv_flow_imp.dz('20260712124009Z')
,p_updated_on=>wwv_flow_imp.dz('20260712124009Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_imp_page.create_page(
 p_id=>18
,p_name=>'Doctor Management'
,p_alias=>'DOCTOR-MANAGEMENT'
,p_step_title=>'Doctor Management'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260712130141Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260713052246Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_last_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7730645264696493)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7527290120442603)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260712130143Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130143Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7725314499696452)
,p_plug_name=>'Doctor Management'
,p_static_id=>'doctor-management'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT d.doctor_id,',
'       d.full_name,',
'       dep.department_name,',
'       sp.specialty_name,',
'       d.mobile_no,',
'       d.email,',
'       d.consultation_fee,',
'       d.status',
'FROM doctors d',
'JOIN departments dep',
'  ON dep.department_id = d.department_id',
'JOIN doctor_specialties sp',
'  ON sp.specialty_id = d.specialty_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260712130143Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052246Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(7725438813696452)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:19:&APP_SESSION.::&DEBUG.:RP:P19_DOCTOR_ID:\#DOCTOR_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>7725438813696452
,p_created_on=>wwv_flow_imp.dz('20260712130143Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052246Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7729032078696487)
,p_db_column_name=>'CONSULTATION_FEE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Consultation Fee'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712130143Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130143Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7727494398696480)
,p_db_column_name=>'DEPARTMENT_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Department Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712130143Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130143Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7726659465696467)
,p_db_column_name=>'DOCTOR_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Doctor Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260712130143Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130143Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7728656631696485)
,p_db_column_name=>'EMAIL'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712130143Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130143Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7727052940696477)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Full Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712130143Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130143Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7728294063696484)
,p_db_column_name=>'MOBILE_NO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Mobile No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712130143Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130143Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7727898459696481)
,p_db_column_name=>'SPECIALTY_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Specialty Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712130143Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130143Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7729453305696489)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712130143Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130143Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(7925760605054222)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOCTOR_ID:FULL_NAME:DEPARTMENT_NAME:SPECIALTY_NAME:MOBILE_NO:EMAIL:CONSULTATION_FEE:STATUS'
,p_created_on=>wwv_flow_imp.dz('20260713052246Z')
,p_updated_on=>wwv_flow_imp.dz('20260713052246Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7729878014696491)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7725314499696452)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:19:&APP_SESSION.::&DEBUG.:19::'
,p_created_on=>wwv_flow_imp.dz('20260712130143Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130143Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_imp_page.create_page(
 p_id=>19
,p_name=>'DoctorManagementForm'
,p_alias=>'DOCTORMANAGEMENTFORM'
,p_step_title=>'DoctorManagementForm'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260712130140Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260714094558Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_last_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7731225398696497)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7527290120442603)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260712130143Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130143Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7715775870696247)
,p_plug_name=>'DoctorManagementForm'
,p_static_id=>'doctormanagementform'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'DOCTORS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260712130141Z')
,p_updated_on=>wwv_flow_imp.dz('20260714045910Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7721728738696268)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7715775870696247)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20260712130141Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130141Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7723062306696271)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(7715775870696247)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P19_DOCTOR_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260712130141Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130141Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7722251238696270)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7715775870696247)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P19_DOCTOR_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260712130141Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130141Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7722669605696270)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(7715775870696247)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P19_DOCTOR_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260712130141Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130141Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(7723486624696271)
,p_branch_action=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20260712130141Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130141Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7718543846696262)
,p_name=>'P19_CONSULTATION_FEE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(7715775870696247)
,p_item_source_plug_id=>wwv_flow_imp.id(7715775870696247)
,p_prompt=>'Consultation Fee'
,p_source=>'CONSULTATION_FEE'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>150
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712130141Z')
,p_updated_on=>wwv_flow_imp.dz('20260714091501Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7943871770549124)
,p_name=>'P19_DEPARTMENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7715775870696247)
,p_item_source_plug_id=>wwv_flow_imp.id(7715775870696247)
,p_prompt=>'Department Id'
,p_source=>'DEPARTMENT_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT department_name AS display_value,',
'       department_id AS return_value',
'FROM departments',
'WHERE status = ''Active''',
'ORDER BY department_name'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714045910Z')
,p_updated_on=>wwv_flow_imp.dz('20260714051056Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7716110120696257)
,p_name=>'P19_DOCTOR_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7715775870696247)
,p_item_source_plug_id=>wwv_flow_imp.id(7715775870696247)
,p_source=>'DOCTOR_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712130141Z')
,p_updated_on=>wwv_flow_imp.dz('20260714094558Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7718133397696261)
,p_name=>'P19_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(7715775870696247)
,p_item_source_plug_id=>wwv_flow_imp.id(7715775870696247)
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>150
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712130141Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130141Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7716536235696260)
,p_name=>'P19_FULL_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7715775870696247)
,p_item_source_plug_id=>wwv_flow_imp.id(7715775870696247)
,p_prompt=>'Full Name'
,p_source=>'FULL_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>150
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712130141Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130141Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7717725200696261)
,p_name=>'P19_MOBILE_NO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(7715775870696247)
,p_item_source_plug_id=>wwv_flow_imp.id(7715775870696247)
,p_prompt=>'Mobile No'
,p_source=>'MOBILE_NO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712130141Z')
,p_updated_on=>wwv_flow_imp.dz('20260714091500Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7943910160549125)
,p_name=>'P19_SPECIALTY_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7715775870696247)
,p_item_source_plug_id=>wwv_flow_imp.id(7715775870696247)
,p_prompt=>'Specialty Id'
,p_source=>'SPECIALTY_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT specialty_name AS display_value,',
'       specialty_id AS return_value',
'FROM doctor_specialties',
'WHERE status = ''Active''',
'ORDER BY specialty_name'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714045910Z')
,p_updated_on=>wwv_flow_imp.dz('20260714051056Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7718956808696265)
,p_name=>'P19_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(7715775870696247)
,p_item_source_plug_id=>wwv_flow_imp.id(7715775870696247)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Active;Active,Inactive;Inactive'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712130141Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130429Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7723856320696272)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(7715775870696247)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form DoctorManagementForm'
,p_static_id=>'initialize-form-doctormanagementform'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>7723856320696272
,p_created_on=>wwv_flow_imp.dz('20260712130141Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130141Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7724278326696274)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(7715775870696247)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form DoctorManagementForm'
,p_static_id=>'process-form-doctormanagementform'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7724278326696274
,p_created_on=>wwv_flow_imp.dz('20260712130141Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130141Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_imp_page.create_page(
 p_id=>20
,p_name=>'Medicine Management'
,p_alias=>'MEDICINE-MANAGEMENT'
,p_step_title=>'Medicine Management'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260712130656Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260714103841Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_last_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7747903038727932)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7527290120442603)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260712130658Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130658Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7743162186727901)
,p_plug_name=>'Medicine Management'
,p_static_id=>'medicine-management'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT m.medicine_id,',
'       m.medicine_name,',
'       c.category_name,',
'       m.unit,',
'       m.current_stock,',
'       m.reorder_level,',
'       CASE',
'           WHEN m.current_stock < m.reorder_level',
'           THEN ''Low Stock''',
'           ELSE ''Normal''',
'       END AS stock_status,',
'       m.status',
'FROM medicines m',
'JOIN medicine_categories c',
'  ON c.category_id = m.category_id',
'ORDER BY m.medicine_name'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260712130657Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103841Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(7743221384727901)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:21:&APP_SESSION.::&DEBUG.:RP:P21_MEDICINE_ID:\#MEDICINE_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>7743221384727901
,p_created_on=>wwv_flow_imp.dz('20260712130657Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103841Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8125645134313818)
,p_db_column_name=>'CATEGORY_NAME'
,p_display_order=>17
,p_column_identifier=>'H'
,p_column_label=>'Category Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714102621Z')
,p_updated_on=>wwv_flow_imp.dz('20260714102621Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7746044571727925)
,p_db_column_name=>'CURRENT_STOCK'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Current Stock'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712130657Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130657Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7744408549727914)
,p_db_column_name=>'MEDICINE_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Medicine ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260712130657Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130657Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7744879725727919)
,p_db_column_name=>'MEDICINE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Medicine Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712130657Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130657Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7746494854727926)
,p_db_column_name=>'REORDER_LEVEL'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Reorder Level'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712130657Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130657Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7746897218727928)
,p_db_column_name=>'STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712130658Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130658Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8125721617313819)
,p_db_column_name=>'STOCK_STATUS'
,p_display_order=>27
,p_column_identifier=>'I'
,p_column_label=>'Stock Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714102621Z')
,p_updated_on=>wwv_flow_imp.dz('20260714102621Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7745619142727923)
,p_db_column_name=>'UNIT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Unit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712130657Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130657Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(7926266801054300)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MEDICINE_NAME:UNIT:CURRENT_STOCK:REORDER_LEVEL:STATUS'
,p_created_on=>wwv_flow_imp.dz('20260713052247Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103841Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(8161915432485616)
,p_report_id=>wwv_flow_imp.id(7926266801054300)
,p_static_id=>'ir-condition'
,p_name=>'Low Stock'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'STOCK_STATUS'
,p_operator=>'='
,p_expr=>'Low Stock'
,p_condition_sql=>' (case when ("STOCK_STATUS" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''Low Stock''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#e15f79'
,p_created_on=>wwv_flow_imp.dz('20260714103841Z')
,p_updated_on=>wwv_flow_imp.dz('20260714103841Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7747136488727930)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7743162186727901)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&APP_SESSION.::&DEBUG.:21::'
,p_created_on=>wwv_flow_imp.dz('20260712130658Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130658Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_imp_page.create_page(
 p_id=>21
,p_name=>'MedicineManagementForm'
,p_alias=>'MEDICINEMANAGEMENTFORM'
,p_step_title=>'MedicineManagementForm'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260712130655Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260714095344Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_last_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7748575374727948)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7527290120442603)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260712130658Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130658Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7734030746727737)
,p_plug_name=>'MedicineManagementForm'
,p_static_id=>'medicinemanagementform'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'MEDICINES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260712130656Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130656Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7739578046727768)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7734030746727737)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20260712130656Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130656Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7740820112727769)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(7734030746727737)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P21_MEDICINE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260712130656Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130656Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7740042935727768)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7734030746727737)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P21_MEDICINE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260712130656Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130656Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7740407988727769)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(7734030746727737)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P21_MEDICINE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260712130656Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130656Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(7741255979727769)
,p_branch_action=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20260712130656Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130656Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7735168657727749)
,p_name=>'P21_CATEGORY_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7734030746727737)
,p_item_source_plug_id=>wwv_flow_imp.id(7734030746727737)
,p_prompt=>'Category Id'
,p_source=>'CATEGORY_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT category_name AS display_value,',
'       category_id AS return_value',
'FROM medicine_categories',
'WHERE status = ''Active''',
'ORDER BY category_name'))
,p_lov_display_null=>'YES'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712130656Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130907Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7736236504727765)
,p_name=>'P21_CURRENT_STOCK'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(7734030746727737)
,p_item_source_plug_id=>wwv_flow_imp.id(7734030746727737)
,p_prompt=>'Current Stock'
,p_source=>'CURRENT_STOCK'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712130656Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130656Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7734399720727743)
,p_name=>'P21_MEDICINE_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7734030746727737)
,p_item_source_plug_id=>wwv_flow_imp.id(7734030746727737)
,p_source=>'MEDICINE_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712130656Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130656Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7734746966727748)
,p_name=>'P21_MEDICINE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7734030746727737)
,p_item_source_plug_id=>wwv_flow_imp.id(7734030746727737)
,p_prompt=>'Medicine Name'
,p_source=>'MEDICINE_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>150
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712130656Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130656Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7736612293727766)
,p_name=>'P21_REORDER_LEVEL'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(7734030746727737)
,p_item_source_plug_id=>wwv_flow_imp.id(7734030746727737)
,p_prompt=>'Reorder Level'
,p_source=>'REORDER_LEVEL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712130656Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130656Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7737003258727766)
,p_name=>'P21_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(7734030746727737)
,p_item_source_plug_id=>wwv_flow_imp.id(7734030746727737)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Active;Active,Inactive;Inactive'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712130656Z')
,p_updated_on=>wwv_flow_imp.dz('20260714095344Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7735898065727765)
,p_name=>'P21_UNIT'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7734030746727737)
,p_item_source_plug_id=>wwv_flow_imp.id(7734030746727737)
,p_prompt=>'Unit'
,p_source=>'UNIT'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712130656Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130656Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7741646550727770)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(7734030746727737)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form MedicineManagementForm'
,p_static_id=>'initialize-form-medicinemanagementform'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>7741646550727770
,p_created_on=>wwv_flow_imp.dz('20260712130656Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130656Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7742014116727771)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(7734030746727737)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form MedicineManagementForm'
,p_static_id=>'process-form-medicinemanagementform'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7742014116727771
,p_created_on=>wwv_flow_imp.dz('20260712130656Z')
,p_updated_on=>wwv_flow_imp.dz('20260712130656Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_imp_page.create_page(
 p_id=>22
,p_name=>'Medicine Stock Report'
,p_alias=>'MEDICINE-STOCK-REPORT'
,p_step_title=>'Medicine Stock Report'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260712131353Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260716122951Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_last_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7763843108769711)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7527290120442603)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260712131355Z')
,p_updated_on=>wwv_flow_imp.dz('20260712131355Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7758980150769690)
,p_plug_name=>'Medicine Stock Report'
,p_static_id=>'medicine-stock-report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT m.medicine_name,',
'       c.category_name,',
'       m.current_stock,',
'       m.reorder_level,',
'       CASE',
'           WHEN m.current_stock <= m.reorder_level',
'           THEN ''Low Stock''',
'           ELSE ''Normal''',
'       END AS stock_status,',
'       CASE',
'           WHEN m.current_stock <= m.reorder_level',
'           THEN ''danger''',
'           ELSE ''success''',
'       END AS stock_state',
'FROM medicines m',
'JOIN medicine_categories c',
'  ON c.category_id = m.category_id',
'ORDER BY m.medicine_name'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260712131355Z')
,p_updated_on=>wwv_flow_imp.dz('20260716122951Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(7759097042769690)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>7759097042769690
,p_created_on=>wwv_flow_imp.dz('20260712131355Z')
,p_updated_on=>wwv_flow_imp.dz('20260716122951Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7761040949769702)
,p_db_column_name=>'CATEGORY_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Category Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712131355Z')
,p_updated_on=>wwv_flow_imp.dz('20260716113142Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7761879563769705)
,p_db_column_name=>'CURRENT_STOCK'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Current Stock'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712131355Z')
,p_updated_on=>wwv_flow_imp.dz('20260716113223Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7760622207769700)
,p_db_column_name=>'MEDICINE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Medicine Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712131355Z')
,p_updated_on=>wwv_flow_imp.dz('20260712131355Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7762286479769707)
,p_db_column_name=>'REORDER_LEVEL'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Reorder Level'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712131355Z')
,p_updated_on=>wwv_flow_imp.dz('20260716113223Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8433020343009236)
,p_db_column_name=>'STOCK_STATE'
,p_display_order=>36
,p_column_identifier=>'L'
,p_column_label=>'Stock State'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716122951Z')
,p_updated_on=>wwv_flow_imp.dz('20260716122951Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8126082198313822)
,p_db_column_name=>'STOCK_STATUS'
,p_display_order=>26
,p_column_identifier=>'J'
,p_column_label=>'Stock Status'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'TMPL_THEME_42$BADGE'
,p_heading_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'LABEL', 'STOCK_STATUS',
  'LABEL_DISPLAY', 'N',
  'STATE', 'STOCK_STATE',
  'VALUE', 'STOCK_STATUS')).to_clob
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714104050Z')
,p_updated_on=>wwv_flow_imp.dz('20260716122951Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(7765237296797767)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MEDICINE_NAME:CATEGORY_NAME:CURRENT_STOCK:REORDER_LEVEL:STOCK_STATUS'
,p_created_on=>wwv_flow_imp.dz('20260712131836Z')
,p_updated_on=>wwv_flow_imp.dz('20260716122951Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/pages/page_00024
begin
wwv_flow_imp_page.create_page(
 p_id=>24
,p_name=>'Appointment Report'
,p_alias=>'APPOINTMENT-REPORT'
,p_step_title=>'Appointment Report'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260712132240Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260716084920Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_last_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7776526180822311)
,p_plug_name=>'Appointment Report'
,p_static_id=>'appointment-report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.appointment_id,',
'       p.full_name AS patient_name,',
'       d.full_name AS doctor_name,',
'       dep.department_name,',
'       a.appointment_date,',
'       a.appointment_time,',
'       s.status_name,',
'       a.reason_for_visit,',
'       sp.specialty_name,',
'       a.created_at',
'FROM appointments a',
'JOIN patients p',
'  ON p.patient_id = a.patient_id',
'JOIN doctors d',
'  ON d.doctor_id = a.doctor_id',
'JOIN departments dep',
'  ON dep.department_id = d.department_id',
'JOIN doctor_specialties sp',
'  ON sp.specialty_id = d.specialty_id',
'JOIN appointment_statuses s',
'  ON s.status_id = a.status_id',
'WHERE (:P24_FROM_DATE IS NULL',
'       OR a.appointment_date >= :P24_FROM_DATE)',
'  AND (:P24_TO_DATE IS NULL',
'       OR a.appointment_date <= :P24_TO_DATE)',
'  AND (:P24_DEPARTMENT IS NULL',
'       OR dep.department_id = :P24_DEPARTMENT)',
'  AND (:P24_DOCTOR IS NULL',
'       OR d.doctor_id = :P24_DOCTOR)',
'  AND (:P24_STATUS IS NULL',
'       OR s.status_id = :P24_STATUS)',
'ORDER BY a.appointment_date DESC,',
'         a.appointment_time DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P24_FROM_DATE,P24_TO_DATE,P24_DEPARTMENT,P24_DOCTOR,P24_STATUS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260712132241Z')
,p_updated_on=>wwv_flow_imp.dz('20260716075910Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(7776673746822311)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:25:&APP_SESSION.::&DEBUG.:RP:P25_APPOINTMENT_ID:\#APPOINTMENT_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>7776673746822311
,p_created_on=>wwv_flow_imp.dz('20260712132241Z')
,p_updated_on=>wwv_flow_imp.dz('20260715101008Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7779449371822325)
,p_db_column_name=>'APPOINTMENT_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Appointment Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712132241Z')
,p_updated_on=>wwv_flow_imp.dz('20260712132241Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7777831968822316)
,p_db_column_name=>'APPOINTMENT_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Appointment Id'
,p_column_link=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:30:P30_APPOINTMENT_ID:#APPOINTMENT_ID#'
,p_column_linktext=>'#APPOINTMENT_ID#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712132241Z')
,p_updated_on=>wwv_flow_imp.dz('20260715101008Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7779835327822327)
,p_db_column_name=>'APPOINTMENT_TIME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Appointment Time'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712132241Z')
,p_updated_on=>wwv_flow_imp.dz('20260712132241Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8126299263313824)
,p_db_column_name=>'CREATED_AT'
,p_display_order=>28
,p_column_identifier=>'J'
,p_column_label=>'Created At'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714124521Z')
,p_updated_on=>wwv_flow_imp.dz('20260714124918Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7779087634822323)
,p_db_column_name=>'DEPARTMENT_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Department Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712132241Z')
,p_updated_on=>wwv_flow_imp.dz('20260712132241Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7778651181822322)
,p_db_column_name=>'DOCTOR_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Doctor Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712132241Z')
,p_updated_on=>wwv_flow_imp.dz('20260712132241Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7778215709822320)
,p_db_column_name=>'PATIENT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Patient Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712132241Z')
,p_updated_on=>wwv_flow_imp.dz('20260712132241Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7780606702822331)
,p_db_column_name=>'REASON_FOR_VISIT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Reason For Visit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712132241Z')
,p_updated_on=>wwv_flow_imp.dz('20260712132241Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8126169228313823)
,p_db_column_name=>'SPECIALTY_NAME'
,p_display_order=>18
,p_column_identifier=>'I'
,p_column_label=>'Specialty Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714124521Z')
,p_updated_on=>wwv_flow_imp.dz('20260714124521Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7780245755822329)
,p_db_column_name=>'STATUS_NAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Status Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260712132241Z')
,p_updated_on=>wwv_flow_imp.dz('20260712132241Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(7784780681872754)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPOINTMENT_ID:PATIENT_NAME:DOCTOR_NAME:DEPARTMENT_NAME:APPOINTMENT_DATE:APPOINTMENT_TIME:STATUS_NAME:REASON_FOR_VISIT'
,p_created_on=>wwv_flow_imp.dz('20260712133106Z')
,p_updated_on=>wwv_flow_imp.dz('20260712133106Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7782629620822338)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7527290120442603)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260712132242Z')
,p_updated_on=>wwv_flow_imp.dz('20260712132242Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8430672168009212)
,p_button_sequence=>70
,p_button_name=>'APPLY_FILTERS'
,p_static_id=>'apply-filters'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Apply Filters'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716075910Z')
,p_updated_on=>wwv_flow_imp.dz('20260716084225Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8431175267009217)
,p_button_sequence=>80
,p_button_name=>'CLEAR_FILTERS'
,p_static_id=>'clear-filters'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Clear Filters'
,p_button_redirect_url=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:24::'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-margin-left-md'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716075910Z')
,p_updated_on=>wwv_flow_imp.dz('20260716084225Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7781041972822333)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7776526180822311)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&APP_SESSION.::&DEBUG.:25::'
,p_created_on=>wwv_flow_imp.dz('20260712132241Z')
,p_updated_on=>wwv_flow_imp.dz('20260712132241Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8430396786009209)
,p_name=>'P24_DEPARTMENT'
,p_item_sequence=>40
,p_prompt=>'Department'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT department_name AS display_value,',
'       department_id   AS return_value',
'FROM departments',
'ORDER BY department_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'All Departments'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716075314Z')
,p_updated_on=>wwv_flow_imp.dz('20260716084920Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8430427823009210)
,p_name=>'P24_DOCTOR'
,p_item_sequence=>50
,p_prompt=>'Doctor'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT full_name AS display_value,',
'       doctor_id AS return_value',
'FROM doctors',
'ORDER BY full_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'All Doctors'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716075314Z')
,p_updated_on=>wwv_flow_imp.dz('20260716084920Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8430035723009206)
,p_name=>'P24_FROM_DATE'
,p_item_sequence=>20
,p_prompt=>'From Date'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716075314Z')
,p_updated_on=>wwv_flow_imp.dz('20260716084919Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8430584481009211)
,p_name=>'P24_STATUS'
,p_item_sequence=>60
,p_prompt=>'Status'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT status_name AS display_value,',
'       status_id   AS return_value',
'FROM appointment_statuses',
'ORDER BY status_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'All Statuses'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716075314Z')
,p_updated_on=>wwv_flow_imp.dz('20260716084920Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8430186558009207)
,p_name=>'P24_TO_DATE'
,p_item_sequence=>30
,p_prompt=>'To Date'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716075314Z')
,p_updated_on=>wwv_flow_imp.dz('20260716084919Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8430951007009215)
,p_name=>'Apply Filters'
,p_static_id=>'apply-filters'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8430672168009212)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20260716075910Z')
,p_updated_on=>wwv_flow_imp.dz('20260716075910Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8431011653009216)
,p_event_id=>wwv_flow_imp.id(8430951007009215)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7776526180822311)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716075910Z')
,p_updated_on=>wwv_flow_imp.dz('20260716075910Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7781494203822333)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(7776526180822311)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260712132241Z')
,p_updated_on=>wwv_flow_imp.dz('20260712132241Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7781871789822335)
,p_event_id=>wwv_flow_imp.id(7781494203822333)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7776526180822311)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712132241Z')
,p_updated_on=>wwv_flow_imp.dz('20260712132241Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/pages/page_00026
begin
wwv_flow_imp_page.create_page(
 p_id=>26
,p_name=>'Patient Profile'
,p_alias=>'PATIENT-PROFILE'
,p_step_title=>'Patient Profile'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260713063543Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715051423Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_last_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6750054477399845)
,p_plug_name=>'Admission History'
,p_static_id=>'admission-history'
,p_title=>'Admission History'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>50
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.admission_id,',
'       a.admission_date,',
'       a.discharge_date,',
'       r.room_no,',
'       r.room_type,',
'       a.status',
'FROM admissions a',
'JOIN rooms r',
'  ON r.room_id = a.room_id',
'WHERE a.patient_id = :P26_PATIENT_ID',
'ORDER BY a.admission_date DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P26_PATIENT_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Admission History'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260713064525Z')
,p_updated_on=>wwv_flow_imp.dz('20260714131558Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(6750194927399846)
,p_no_data_found_message=>'No admission history available.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>6750194927399846
,p_created_on=>wwv_flow_imp.dz('20260713064525Z')
,p_updated_on=>wwv_flow_imp.dz('20260714131558Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6750309471399848)
,p_db_column_name=>'ADMISSION_DATE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Admission Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713064525Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064525Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6750228694399847)
,p_db_column_name=>'ADMISSION_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Admission Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713064525Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064525Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6750496987399849)
,p_db_column_name=>'DISCHARGE_DATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Discharge Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713064525Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064525Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6750593403399850)
,p_db_column_name=>'ROOM_NO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Room No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713064525Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064525Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7941536270549101)
,p_db_column_name=>'ROOM_TYPE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Room Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713064525Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064525Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7941628663549102)
,p_db_column_name=>'STATUS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713064525Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064525Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(7950305709550613)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ADMISSION_ID:ADMISSION_DATE:DISCHARGE_DATE:ROOM_NO:ROOM_TYPE:STATUS'
,p_created_on=>wwv_flow_imp.dz('20260713064530Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064530Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6748411199399829)
,p_plug_name=>'Appointment History'
,p_static_id=>'appointment-history'
,p_title=>'Appointment History'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.appointment_id,',
'       a.appointment_date,',
'       a.appointment_time,',
'       d.full_name AS doctor_name,',
'       s.status_name,',
'       a.reason_for_visit',
'FROM appointments a',
'JOIN doctors d',
'  ON d.doctor_id = a.doctor_id',
'JOIN appointment_statuses s',
'  ON s.status_id = a.status_id',
'WHERE a.patient_id = :P26_PATIENT_ID',
'ORDER BY a.appointment_date DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P26_PATIENT_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Appointment History'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260713064326Z')
,p_updated_on=>wwv_flow_imp.dz('20260714131642Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(6748558363399830)
,p_no_data_found_message=>'No appointment history available.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>6748558363399830
,p_created_on=>wwv_flow_imp.dz('20260713064326Z')
,p_updated_on=>wwv_flow_imp.dz('20260714131642Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6748706655399832)
,p_db_column_name=>'APPOINTMENT_DATE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Appointment Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713064326Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064326Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6748600781399831)
,p_db_column_name=>'APPOINTMENT_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Appointment Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713064326Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064326Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6748817818399833)
,p_db_column_name=>'APPOINTMENT_TIME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Appointment Time'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713064326Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064326Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6748964367399834)
,p_db_column_name=>'DOCTOR_NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Doctor Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713064326Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064326Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6749196916399836)
,p_db_column_name=>'REASON_FOR_VISIT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Reason For Visit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713064326Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064326Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6749008675399835)
,p_db_column_name=>'STATUS_NAME'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Status Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713064326Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064326Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(7949496537550601)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPOINTMENT_ID:APPOINTMENT_DATE:APPOINTMENT_TIME:DOCTOR_NAME:STATUS_NAME:REASON_FOR_VISIT'
,p_created_on=>wwv_flow_imp.dz('20260713064530Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064530Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7931251265491900)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7527290120442603)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260713063543Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063543Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(6747456012399819)
,p_name=>'Patient Information'
,p_static_id=>'new'
,p_title=>'Patient Information'
,p_template=>4073835273271169698
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT patient_id,',
'       civil_id,',
'       full_name,',
'       gender,',
'       date_of_birth,',
'       TRUNC(MONTHS_BETWEEN(SYSDATE, date_of_birth) / 12) AS age,',
'       mobile_no,',
'       blood_group,',
'       address',
'FROM patients',
'WHERE patient_id = :P26_PATIENT_ID'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P26_PATIENT_ID'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713064035Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064326Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6748379442399828)
,p_query_column_id=>9
,p_column_alias=>'ADDRESS'
,p_column_display_sequence=>90
,p_column_heading=>'Address'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713064035Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6748070581399825)
,p_query_column_id=>6
,p_column_alias=>'AGE'
,p_column_display_sequence=>60
,p_column_heading=>'Age'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713064035Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6748215576399827)
,p_query_column_id=>8
,p_column_alias=>'BLOOD_GROUP'
,p_column_display_sequence=>80
,p_column_heading=>'Blood Group'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713064035Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6747672922399821)
,p_query_column_id=>2
,p_column_alias=>'CIVIL_ID'
,p_column_display_sequence=>20
,p_column_heading=>'Civil Id'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713064035Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6747973464399824)
,p_query_column_id=>5
,p_column_alias=>'DATE_OF_BIRTH'
,p_column_display_sequence=>50
,p_column_heading=>'Date Of Birth'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713064035Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6747710263399822)
,p_query_column_id=>3
,p_column_alias=>'FULL_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Full Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713064035Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6747881263399823)
,p_query_column_id=>4
,p_column_alias=>'GENDER'
,p_column_display_sequence=>40
,p_column_heading=>'Gender'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713064035Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6748143278399826)
,p_query_column_id=>7
,p_column_alias=>'MOBILE_NO'
,p_column_display_sequence=>70
,p_column_heading=>'Mobile No'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713064035Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6747593728399820)
,p_query_column_id=>1
,p_column_alias=>'PATIENT_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Patient Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260713064035Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6749293419399837)
,p_plug_name=>'Visit History'
,p_static_id=>'visit-history'
,p_title=>'Visit History'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT v.visit_id,',
'       v.visit_date,',
'       d.full_name AS doctor_name,',
'       v.symptoms,',
'       v.diagnosis,',
'       v.follow_up_date',
'FROM patient_visits v',
'JOIN doctors d',
'  ON d.doctor_id = v.doctor_id',
'WHERE v.patient_id = :P26_PATIENT_ID',
'ORDER BY v.visit_date DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P26_PATIENT_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Visit History'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260713064415Z')
,p_updated_on=>wwv_flow_imp.dz('20260715051423Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(6749396944399838)
,p_no_data_found_message=>'No visit history available.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>6749396944399838
,p_created_on=>wwv_flow_imp.dz('20260713064415Z')
,p_updated_on=>wwv_flow_imp.dz('20260715051423Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6749801817399843)
,p_db_column_name=>'DIAGNOSIS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Diagnosis'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713064415Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064415Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6749616159399841)
,p_db_column_name=>'DOCTOR_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Doctor Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713064415Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064415Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6749961195399844)
,p_db_column_name=>'FOLLOW_UP_DATE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Follow Up Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713064415Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064415Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6749722739399842)
,p_db_column_name=>'SYMPTOMS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Symptoms'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713064415Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064415Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6749560952399840)
,p_db_column_name=>'VISIT_DATE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Visit Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713064415Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064415Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6749400282399839)
,p_db_column_name=>'VISIT_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Visit Id'
,p_column_link=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:29:P29_VISIT_ID:#VISIT_ID#'
,p_column_linktext=>'#VISIT_ID#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260713064415Z')
,p_updated_on=>wwv_flow_imp.dz('20260715051423Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(7949800732550609)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'VISIT_ID:VISIT_DATE:DOCTOR_NAME:SYMPTOMS:DIAGNOSIS:FOLLOW_UP_DATE'
,p_created_on=>wwv_flow_imp.dz('20260713064530Z')
,p_updated_on=>wwv_flow_imp.dz('20260713064530Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8126302019313825)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7931251265491900)
,p_button_name=>'Back'
,p_static_id=>'back'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Back To Patients'
,p_button_position=>'UP'
,p_button_redirect_url=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260714130839Z')
,p_updated_on=>wwv_flow_imp.dz('20260714131033Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6747310918399818)
,p_name=>'P26_PATIENT_ID'
,p_item_sequence=>10
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713063839Z')
,p_updated_on=>wwv_flow_imp.dz('20260713063839Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/pages/page_00027
begin
wwv_flow_imp_page.create_page(
 p_id=>27
,p_name=>'Patient Visits'
,p_alias=>'VISIT-FORM'
,p_step_title=>'Patient Visits'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260713070900Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260716133344Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_last_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7952461885691673)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7527290120442603)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260713070901Z')
,p_updated_on=>wwv_flow_imp.dz('20260713070901Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7953147006691689)
,p_plug_name=>'Visit Form'
,p_static_id=>'visit-form'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PATIENT_VISITS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260713070901Z')
,p_updated_on=>wwv_flow_imp.dz('20260713070901Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7960783352691710)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7953147006691689)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20260713070901Z')
,p_updated_on=>wwv_flow_imp.dz('20260713070901Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7962010413691714)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(7953147006691689)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P27_VISIT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260713070901Z')
,p_updated_on=>wwv_flow_imp.dz('20260713070901Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7961254197691713)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7953147006691689)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P27_VISIT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260713070901Z')
,p_updated_on=>wwv_flow_imp.dz('20260713070901Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7961688811691714)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(7953147006691689)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P27_VISIT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260713070901Z')
,p_updated_on=>wwv_flow_imp.dz('20260713070901Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(7962435084691714)
,p_branch_action=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20260713070901Z')
,p_updated_on=>wwv_flow_imp.dz('20260713070901Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7953927329691696)
,p_name=>'P27_APPOINTMENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7953147006691689)
,p_item_source_plug_id=>wwv_flow_imp.id(7953147006691689)
,p_prompt=>'Appointment Id'
,p_source=>'APPOINTMENT_ID'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT p.full_name || '' - '' ||',
'       TO_CHAR(a.appointment_date, ''DD-MON-YYYY'') AS display_value,',
'       a.appointment_id AS return_value',
'FROM appointments a',
'JOIN patients p',
'  ON p.patient_id = a.patient_id',
'ORDER BY a.appointment_date DESC'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Appointment -'
,p_cSize=>30
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713070901Z')
,p_updated_on=>wwv_flow_imp.dz('20260713071402Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7956818547691707)
,p_name=>'P27_DIAGNOSIS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(7953147006691689)
,p_item_source_plug_id=>wwv_flow_imp.id(7953147006691689)
,p_prompt=>'Diagnosis'
,p_source=>'DIAGNOSIS'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713070901Z')
,p_updated_on=>wwv_flow_imp.dz('20260713070901Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7955314316691706)
,p_name=>'P27_DOCTOR_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7953147006691689)
,p_item_source_plug_id=>wwv_flow_imp.id(7953147006691689)
,p_source=>'DOCTOR_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713070901Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063301Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7942115686549107)
,p_name=>'P27_DOCTOR_NAME'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(7953147006691689)
,p_prompt=>'Doctor Name'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713072750Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070540Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7957628290691708)
,p_name=>'P27_FOLLOW_UP_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(7953147006691689)
,p_item_source_plug_id=>wwv_flow_imp.id(7953147006691689)
,p_prompt=>'Follow Up Date'
,p_source=>'FOLLOW_UP_DATE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713070901Z')
,p_updated_on=>wwv_flow_imp.dz('20260713070901Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7957249110691708)
,p_name=>'P27_NOTES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(7953147006691689)
,p_item_source_plug_id=>wwv_flow_imp.id(7953147006691689)
,p_prompt=>'Notes'
,p_source=>'NOTES'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>2000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713070901Z')
,p_updated_on=>wwv_flow_imp.dz('20260713070901Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7954619185691705)
,p_name=>'P27_PATIENT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7953147006691689)
,p_item_source_plug_id=>wwv_flow_imp.id(7953147006691689)
,p_source=>'PATIENT_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713070901Z')
,p_updated_on=>wwv_flow_imp.dz('20260715063301Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7942092897549106)
,p_name=>'P27_PATIENT_NAME'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(7953147006691689)
,p_prompt=>'Patient Name'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713072750Z')
,p_updated_on=>wwv_flow_imp.dz('20260715070540Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7956488206691707)
,p_name=>'P27_SYMPTOMS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(7953147006691689)
,p_item_source_plug_id=>wwv_flow_imp.id(7953147006691689)
,p_prompt=>'Symptoms'
,p_source=>'SYMPTOMS'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713070901Z')
,p_updated_on=>wwv_flow_imp.dz('20260713070901Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7956024053691706)
,p_name=>'P27_VISIT_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(7953147006691689)
,p_item_source_plug_id=>wwv_flow_imp.id(7953147006691689)
,p_prompt=>'Visit Date'
,p_source=>'VISIT_DATE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713070901Z')
,p_updated_on=>wwv_flow_imp.dz('20260713070901Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7953522255691690)
,p_name=>'P27_VISIT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7953147006691689)
,p_item_source_plug_id=>wwv_flow_imp.id(7953147006691689)
,p_source=>'VISIT_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713070901Z')
,p_updated_on=>wwv_flow_imp.dz('20260713070901Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7941724694549103)
,p_name=>'Get Appointment Details'
,p_static_id=>'get-appointment-details'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_APPOINTMENT_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20260713071800Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065649Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7941911529549105)
,p_event_id=>wwv_flow_imp.id(7941724694549103)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'Doctor id'
,p_static_id=>'native-set-value'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P27_DOCTOR_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'escape_special_characters', 'Y',
  'items_to_submit', 'P27_APPOINTMENT_ID',
  'sql_query', wwv_flow_string.join(wwv_flow_t_varchar2(
    'SELECT doctor_id',
    'FROM appointments',
    'WHERE appointment_id = :P27_APPOINTMENT_ID')),
  'suppress_change_event', 'N',
  'type', 'SQL_STATEMENT')).to_clob
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260713071855Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065649Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7942216709549108)
,p_event_id=>wwv_flow_imp.id(7941724694549103)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_name=>'Patient name'
,p_static_id=>'native-set-value_1'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P27_PATIENT_NAME'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'escape_special_characters', 'Y',
  'items_to_submit', 'P27_APPOINTMENT_ID',
  'sql_query', wwv_flow_string.join(wwv_flow_t_varchar2(
    'SELECT p.full_name',
    'FROM appointments a',
    'JOIN patients p',
    '  ON p.patient_id = a.patient_id',
    'WHERE a.appointment_id = :P27_APPOINTMENT_ID')),
  'suppress_change_event', 'N',
  'type', 'SQL_STATEMENT')).to_clob
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260713072915Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065649Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7942381549549109)
,p_event_id=>wwv_flow_imp.id(7941724694549103)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_name=>'Doctor name'
,p_static_id=>'native-set-value_2'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P27_DOCTOR_NAME'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'escape_special_characters', 'Y',
  'items_to_submit', 'P27_APPOINTMENT_ID',
  'sql_query', wwv_flow_string.join(wwv_flow_t_varchar2(
    'SELECT d.full_name',
    'FROM appointments a',
    'JOIN doctors d',
    '  ON d.doctor_id = a.doctor_id',
    'WHERE a.appointment_id = :P27_APPOINTMENT_ID')),
  'suppress_change_event', 'N',
  'type', 'SQL_STATEMENT')).to_clob
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260713073017Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065649Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7941877846549104)
,p_event_id=>wwv_flow_imp.id(7941724694549103)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'Patient id'
,p_static_id=>'set-value'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P27_PATIENT_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'escape_special_characters', 'Y',
  'items_to_submit', 'P27_APPOINTMENT_ID',
  'sql_query', wwv_flow_string.join(wwv_flow_t_varchar2(
    'SELECT patient_id',
    'FROM appointments',
    'WHERE appointment_id = :P27_APPOINTMENT_ID')),
  'suppress_change_event', 'N',
  'type', 'SQL_STATEMENT')).to_clob
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260713071800Z')
,p_updated_on=>wwv_flow_imp.dz('20260715065649Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7962869664691717)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(7953147006691689)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Visit Form'
,p_static_id=>'initialize-form-visit-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>7962869664691717
,p_created_on=>wwv_flow_imp.dz('20260713070901Z')
,p_updated_on=>wwv_flow_imp.dz('20260713070901Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7963238407691719)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(7953147006691689)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Visit Form'
,p_static_id=>'process-form-visit-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7963238407691719
,p_created_on=>wwv_flow_imp.dz('20260713070901Z')
,p_updated_on=>wwv_flow_imp.dz('20260713070901Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/pages/page_00028
begin
wwv_flow_imp_page.create_page(
 p_id=>28
,p_name=>'Prescription Management'
,p_alias=>'PRESCRIPTION-MANAGEMENT'
,p_step_title=>'Prescription Management'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_created_on=>wwv_flow_imp.dz('20260713083026Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260713105631Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_last_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7968041105938583)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7527290120442603)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260713083026Z')
,p_updated_on=>wwv_flow_imp.dz('20260713083026Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7968822393938604)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260713083026Z')
,p_updated_on=>wwv_flow_imp.dz('20260713083026Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7978889709939003)
,p_plug_name=>'Prescription Items'
,p_static_id=>'prescription-items'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PRESCRIPTION_ITEMS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(7969640022938610)
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_created_on=>wwv_flow_imp.dz('20260713083030Z')
,p_updated_on=>wwv_flow_imp.dz('20260713105450Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7980663289939009)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_updated_on=>wwv_flow_imp.dz('20260713083030Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7980109211939008)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_updated_on=>wwv_flow_imp.dz('20260713083030Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7984656551939018)
,p_name=>'DOSAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOSAGE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Dosage'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260713083030Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7986636000939022)
,p_name=>'DURATION_DAYS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DURATION_DAYS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Duration Days'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260713083030Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7985612891939020)
,p_name=>'FREQUENCY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FREQUENCY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Frequency'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260713083030Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7987688718939024)
,p_name=>'INSTRUCTIONS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INSTRUCTIONS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Instructions'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>500
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260713083030Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7983655743939016)
,p_name=>'MEDICINE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MEDICINE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Medicine Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT medicine_name || '' - Stock: '' || current_stock AS display_value,',
'       medicine_id AS return_value',
'FROM medicines',
'WHERE status = ''Active''',
'ORDER BY medicine_name'))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'- Select Medicine -'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260713102530Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7982642492939013)
,p_name=>'PRESCRIPTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRESCRIPTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(7972460442938781)
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260713083030Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7981612383939011)
,p_name=>'PRESCRIPTION_ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRESCRIPTION_ITEM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260713083030Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(7978967831939003)
,p_internal_uid=>7978967831939003
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_updated_on=>wwv_flow_imp.dz('20260713083030Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(7979690345939006)
,p_interactive_grid_id=>wwv_flow_imp.id(7978967831939003)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260713083030Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(7979765183939007)
,p_report_id=>wwv_flow_imp.id(7979690345939006)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7981121886939011)
,p_view_id=>wwv_flow_imp.id(7979765183939007)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(7980663289939009)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7982133038939013)
,p_view_id=>wwv_flow_imp.id(7979765183939007)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(7981612383939011)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7983174795939015)
,p_view_id=>wwv_flow_imp.id(7979765183939007)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(7982642492939013)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7984126754939017)
,p_view_id=>wwv_flow_imp.id(7979765183939007)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(7983655743939016)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7985126697939020)
,p_view_id=>wwv_flow_imp.id(7979765183939007)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(7984656551939018)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7986121182939022)
,p_view_id=>wwv_flow_imp.id(7979765183939007)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(7985612891939020)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7987166451939024)
,p_view_id=>wwv_flow_imp.id(7979765183939007)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(7986636000939022)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7988123875939026)
,p_view_id=>wwv_flow_imp.id(7979765183939007)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(7987688718939024)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7969640022938610)
,p_plug_name=>'Prescription Management'
,p_static_id=>'prescription-management'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PRESCRIPTIONS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_created_on=>wwv_flow_imp.dz('20260713083028Z')
,p_updated_on=>wwv_flow_imp.dz('20260713103047Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7971423566938775)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_updated_on=>wwv_flow_imp.dz('20260713083028Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7970947081938770)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_updated_on=>wwv_flow_imp.dz('20260713083028Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7975463817938789)
,p_name=>'DOCTOR_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTOR_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Doctor Id'
,p_display_sequence=>60
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260713103047Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7977455450938794)
,p_name=>'NOTES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOTES'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Notes'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260713083028Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7974438894938787)
,p_name=>'PATIENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PATIENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Patient Id'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260713103047Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7976419878938791)
,p_name=>'PRESCRIPTION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRESCRIPTION_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Prescription Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260713083028Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7972460442938781)
,p_name=>'PRESCRIPTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRESCRIPTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260713083028Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7973449906938785)
,p_name=>'VISIT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VISIT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Visit Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT p.full_name || '' - Visit: '' ||',
'       TO_CHAR(v.visit_date, ''DD-MON-YYYY'') AS display_value,',
'       v.visit_id AS return_value',
'FROM patient_visits v',
'JOIN patients p',
'  ON p.patient_id = v.patient_id',
'ORDER BY v.visit_date DESC'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260713103047Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(7969748948938755)
,p_internal_uid=>7969748948938755
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_updated_on=>wwv_flow_imp.dz('20260713083028Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(7970419163938765)
,p_interactive_grid_id=>wwv_flow_imp.id(7969748948938755)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260713083028Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(7970519364938767)
,p_report_id=>wwv_flow_imp.id(7970419163938765)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7971932617938779)
,p_view_id=>wwv_flow_imp.id(7970519364938767)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(7971423566938775)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7972956546938783)
,p_view_id=>wwv_flow_imp.id(7970519364938767)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(7972460442938781)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7973942300938786)
,p_view_id=>wwv_flow_imp.id(7970519364938767)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(7973449906938785)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7974935954938789)
,p_view_id=>wwv_flow_imp.id(7970519364938767)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(7974438894938787)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7975955703938791)
,p_view_id=>wwv_flow_imp.id(7970519364938767)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(7975463817938789)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7976949235938793)
,p_view_id=>wwv_flow_imp.id(7970519364938767)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(7976419878938791)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7977935244938796)
,p_view_id=>wwv_flow_imp.id(7970519364938767)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(7977455450938794)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7969278533938607)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7968822393938604)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'EDIT'
,p_created_on=>wwv_flow_imp.dz('20260713083026Z')
,p_updated_on=>wwv_flow_imp.dz('20260713083026Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7942416958549110)
,p_name=>'Get Visit Details'
,p_static_id=>'get-visit-details'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P28_VISIT_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20260713103047Z')
,p_updated_on=>wwv_flow_imp.dz('20260713105631Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7942527027549111)
,p_event_id=>wwv_flow_imp.id(7942416958549110)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-set-value'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P28_PATIENT_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'escape_special_characters', 'Y',
  'items_to_submit', 'P28_VISIT_ID',
  'sql_query', wwv_flow_string.join(wwv_flow_t_varchar2(
    'SELECT patient_id',
    'FROM patient_visits',
    'WHERE visit_id = :VISIT_ID')),
  'suppress_change_event', 'N',
  'type', 'SQL_STATEMENT')).to_clob
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260713103047Z')
,p_updated_on=>wwv_flow_imp.dz('20260713105450Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7942698962549112)
,p_event_id=>wwv_flow_imp.id(7942416958549110)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-set-value_1'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'DOCTOR_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'escape_special_characters', 'Y',
  'items_to_submit', 'VISIT_ID',
  'sql_query', wwv_flow_string.join(wwv_flow_t_varchar2(
    'SELECT doctor_id',
    'FROM patient_visits',
    'WHERE visit_id = :VISIT_ID')),
  'suppress_change_event', 'N',
  'type', 'SQL_STATEMENT')).to_clob
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260713103047Z')
,p_updated_on=>wwv_flow_imp.dz('20260713105631Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7988613085939027)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(7978889709939003)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Prescription Items - Save Interactive Grid Data'
,p_static_id=>'prescription-items-save-interactive-grid-data'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(7969278533938607)
,p_internal_uid=>7988613085939027
,p_created_on=>wwv_flow_imp.dz('20260713083030Z')
,p_updated_on=>wwv_flow_imp.dz('20260713083030Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7978493891938800)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(7969640022938610)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Prescription Management - Save Interactive Grid Data'
,p_static_id=>'prescription-management-save-interactive-grid-data'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(7969278533938607)
,p_internal_uid=>7978493891938800
,p_created_on=>wwv_flow_imp.dz('20260713083028Z')
,p_updated_on=>wwv_flow_imp.dz('20260713083028Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/pages/page_00029
begin
wwv_flow_imp_page.create_page(
 p_id=>29
,p_name=>'Visit and Prescription'
,p_alias=>'VISIT-AND-PRESCRIPTION'
,p_step_title=>'Visit and Prescription'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260714134248Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260716091843Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_last_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8176573472547403)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7527290120442603)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260714134249Z')
,p_updated_on=>wwv_flow_imp.dz('20260714134249Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8318561926254301)
,p_plug_name=>'Prescription'
,p_static_id=>'prescription'
,p_title=>'Prescription'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PRESCRIPTIONS'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260715053139Z')
,p_updated_on=>wwv_flow_imp.dz('20260715055226Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8320039574254316)
,p_plug_name=>'Prescription Items'
,p_static_id=>'prescription-items'
,p_title=>'Prescription Items'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT prescription_item_id,',
'       prescription_id,',
'       medicine_id,',
'       dosage,',
'       frequency,',
'       duration_days,',
'       instructions',
'FROM prescription_items',
'WHERE prescription_id = :P29_PRESCRIPTION_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P29_PRESCRIPTION_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P29_PRESCRIPTION_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Prescription Items'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_created_on=>wwv_flow_imp.dz('20260715074215Z')
,p_updated_on=>wwv_flow_imp.dz('20260715093948Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8322803075254344)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_updated_on=>wwv_flow_imp.dz('20260715074215Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8322968488254345)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_updated_on=>wwv_flow_imp.dz('20260715074216Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8322407460254340)
,p_name=>'DOSAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOSAGE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Dosage'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260715074215Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8322638422254342)
,p_name=>'DURATION_DAYS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DURATION_DAYS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Duration Days'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260715074215Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8322518825254341)
,p_name=>'FREQUENCY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FREQUENCY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Frequency'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Once Daily;Once Daily,Twice Daily;Twice Daily,Three Times Dail;Three Times Dail,Every 8 Hours;Every 8 Hours,As Needed;As Needed'
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260715091214Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8322767042254343)
,p_name=>'INSTRUCTIONS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INSTRUCTIONS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Instructions'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>500
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260715074215Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8322382038254339)
,p_name=>'MEDICINE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MEDICINE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Medicine Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT medicine_name AS display_value,',
'       medicine_id AS return_value',
'FROM medicines',
'WHERE status = ''Active''',
'ORDER BY medicine_name'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_null_text=>'- Select Medicine -'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260715074215Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8322209486254338)
,p_name=>'PRESCRIPTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRESCRIPTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Prescription Id'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P29_PRESCRIPTION_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260715074215Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8322196708254337)
,p_name=>'PRESCRIPTION_ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRESCRIPTION_ITEM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Prescription Item Id'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260715074215Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(8320198544254317)
,p_internal_uid=>8320198544254317
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_updated_on=>wwv_flow_imp.dz('20260715074215Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(8342616433998034)
,p_interactive_grid_id=>wwv_flow_imp.id(8320198544254317)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260715074215Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(8342738269998037)
,p_report_id=>wwv_flow_imp.id(8342616433998034)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8343286884998044)
,p_view_id=>wwv_flow_imp.id(8342738269998037)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(8322196708254337)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8344134882998049)
,p_view_id=>wwv_flow_imp.id(8342738269998037)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(8322209486254338)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8345059929998051)
,p_view_id=>wwv_flow_imp.id(8342738269998037)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(8322382038254339)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8345992102998053)
,p_view_id=>wwv_flow_imp.id(8342738269998037)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(8322407460254340)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8346833011998056)
,p_view_id=>wwv_flow_imp.id(8342738269998037)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(8322518825254341)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8347775176998058)
,p_view_id=>wwv_flow_imp.id(8342738269998037)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(8322638422254342)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8348672912998061)
,p_view_id=>wwv_flow_imp.id(8342738269998037)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(8322767042254343)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8349524649998063)
,p_view_id=>wwv_flow_imp.id(8342738269998037)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(8322803075254344)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(8126529535313827)
,p_name=>'Visit Information'
,p_static_id=>'visit-information'
,p_template=>4073835273271169698
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    v.visit_id,',
'    p.full_name AS patient_name,',
'    d.full_name AS doctor_name,',
'    v.visit_date,',
'    v.symptoms,',
'    v.diagnosis,',
'    v.notes,',
'    v.follow_up_date',
'FROM patient_visits v',
'JOIN patients p',
'    ON p.patient_id = v.patient_id',
'JOIN doctors d',
'    ON d.doctor_id = v.doctor_id',
'WHERE v.visit_id = :P29_VISIT_ID;'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P29_VISIT_ID'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'Y'
,p_prn_format=>'PDF'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260714135037Z')
,p_updated_on=>wwv_flow_imp.dz('20260715052029Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8128472579313846)
,p_query_column_id=>6
,p_column_alias=>'DIAGNOSIS'
,p_column_display_sequence=>60
,p_column_heading=>'Diagnosis'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260714135038Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8128196107313843)
,p_query_column_id=>3
,p_column_alias=>'DOCTOR_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Doctor Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260714135038Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8128620627313848)
,p_query_column_id=>8
,p_column_alias=>'FOLLOW_UP_DATE'
,p_column_display_sequence=>80
,p_column_heading=>'Follow Up Date'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260714135038Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8128521689313847)
,p_query_column_id=>7
,p_column_alias=>'NOTES'
,p_column_display_sequence=>70
,p_column_heading=>'Notes'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260714135038Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8128001780313842)
,p_query_column_id=>2
,p_column_alias=>'PATIENT_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Patient Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260714135038Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8128318563313845)
,p_query_column_id=>5
,p_column_alias=>'SYMPTOMS'
,p_column_display_sequence=>50
,p_column_heading=>'Symptoms'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260714135038Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8128208123313844)
,p_query_column_id=>4
,p_column_alias=>'VISIT_DATE'
,p_column_display_sequence=>40
,p_column_heading=>'Visit Date'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260714135038Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8127907439313841)
,p_query_column_id=>1
,p_column_alias=>'VISIT_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Visit Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260714135038Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8319599118254311)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(8318561926254301)
,p_button_name=>'CREATE_PRESCRIPTION'
,p_static_id=>'create-prescription'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Create Prescription'
,p_button_condition=>'P29_PRESCRIPTION_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_column_css_classes=>'margin-top-sm'
,p_grid_new_row=>'Y'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260715055159Z')
,p_updated_on=>wwv_flow_imp.dz('20260715060859Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8319736608254313)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(8318561926254301)
,p_button_name=>'SAVE_PRESCRIPTION'
,p_static_id=>'save-prescription'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Save Prescription'
,p_button_condition=>'P29_PRESCRIPTION_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'margin-top-sm'
,p_grid_column_css_classes=>'margin-top-sm'
,p_grid_new_row=>'Y'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260715055403Z')
,p_updated_on=>wwv_flow_imp.dz('20260715060859Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8319056467254306)
,p_name=>'P29_DOCTOR_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(8318561926254301)
,p_item_source_plug_id=>wwv_flow_imp.id(8318561926254301)
,p_source=>'DOCTOR_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715053139Z')
,p_updated_on=>wwv_flow_imp.dz('20260715055957Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8319278347254308)
,p_name=>'P29_NOTES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(8318561926254301)
,p_item_source_plug_id=>wwv_flow_imp.id(8318561926254301)
,p_prompt=>'Notes'
,p_source=>'NOTES'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>1000
,p_cHeight=>5
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715053139Z')
,p_updated_on=>wwv_flow_imp.dz('20260715055957Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8318945734254305)
,p_name=>'P29_PATIENT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(8318561926254301)
,p_item_source_plug_id=>wwv_flow_imp.id(8318561926254301)
,p_source=>'PATIENT_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715053139Z')
,p_updated_on=>wwv_flow_imp.dz('20260715055957Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8319172002254307)
,p_name=>'P29_PRESCRIPTION_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(8318561926254301)
,p_item_source_plug_id=>wwv_flow_imp.id(8318561926254301)
,p_prompt=>'Prescription Date'
,p_source=>'PRESCRIPTION_DATE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715053139Z')
,p_updated_on=>wwv_flow_imp.dz('20260715055957Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8318755721254303)
,p_name=>'P29_PRESCRIPTION_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8318561926254301)
,p_item_source_plug_id=>wwv_flow_imp.id(8318561926254301)
,p_source=>'PRESCRIPTION_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715053139Z')
,p_updated_on=>wwv_flow_imp.dz('20260715055957Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8126421154313826)
,p_name=>'P29_VISIT_ID'
,p_item_sequence=>50
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260714135038Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074215Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8318812870254304)
,p_name=>'P29_VISIT_ID_1'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8318561926254301)
,p_item_source_plug_id=>wwv_flow_imp.id(8318561926254301)
,p_source=>'VISIT_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715053139Z')
,p_updated_on=>wwv_flow_imp.dz('20260715055957Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8319371613254309)
,p_process_sequence=>5
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Find Existing Prescription'
,p_static_id=>'find-existing-prescription'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT prescription_id',
'      INTO :P29_PRESCRIPTION_ID',
'      FROM prescriptions',
'     WHERE visit_id = :P29_VISIT_ID;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        :P29_PRESCRIPTION_ID := NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>8319371613254309
,p_created_on=>wwv_flow_imp.dz('20260715054102Z')
,p_updated_on=>wwv_flow_imp.dz('20260715054102Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8318671689254302)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(8318561926254301)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Visit and Prescription'
,p_static_id=>'initialize-form-visit-and-prescription'
,p_internal_uid=>8318671689254302
,p_created_on=>wwv_flow_imp.dz('20260715053139Z')
,p_updated_on=>wwv_flow_imp.dz('20260715053139Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8323091734254346)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(8320039574254316)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Prescription Items - Save Interactive Grid Data'
,p_static_id=>'prescription-items-save-interactive-grid-data'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8323091734254346
,p_created_on=>wwv_flow_imp.dz('20260715074215Z')
,p_updated_on=>wwv_flow_imp.dz('20260715074215Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8319975617254315)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(8318561926254301)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process Prescription'
,p_static_id=>'process-prescription'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8319975617254315
,p_created_on=>wwv_flow_imp.dz('20260715060708Z')
,p_updated_on=>wwv_flow_imp.dz('20260715062003Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8319447424254310)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Prescription Defaults'
,p_static_id=>'set-prescription-defaults'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P29_PRESCRIPTION_ID IS NULL',
'       AND :P29_VISIT_ID IS NOT NULL THEN',
'',
'        BEGIN',
'            SELECT patient_id,',
'                   doctor_id',
'              INTO :P29_PATIENT_ID,',
'                   :P29_DOCTOR_ID',
'              FROM patient_visits',
'             WHERE visit_id = :P29_VISIT_ID;',
'',
'            :P29_VISIT_ID_1 := :P29_VISIT_ID;',
'',
'            IF :P29_PRESCRIPTION_DATE IS NULL THEN',
'                :P29_PRESCRIPTION_DATE := TRUNC(SYSDATE);',
'            END IF;',
'',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'                :P29_PATIENT_ID := NULL;',
'                :P29_DOCTOR_ID := NULL;',
'                :P29_VISIT_ID_1 := NULL;',
'        END;',
'',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P29_VISIT_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>8319447424254310
,p_created_on=>wwv_flow_imp.dz('20260715054102Z')
,p_updated_on=>wwv_flow_imp.dz('20260716091843Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/pages/page_00030
begin
wwv_flow_imp_page.create_page(
 p_id=>30
,p_name=>'Clinical Visit Workspace'
,p_alias=>'CLINICAL-VISIT-WORKSPACE'
,p_step_title=>'Clinical Visit Workspace'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260715100418Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715135013Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_last_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(8357543636383337)
,p_name=>'Appointment Summary'
,p_static_id=>'appointment-summary'
,p_template=>4073835273271169698
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.appointment_date,',
'       a.appointment_time,',
'       s.status_name,',
'       a.reason_for_visit',
'FROM appointments a',
'JOIN appointment_statuses s',
'ON s.status_id = a.status_id',
'WHERE a.appointment_id = :P30_APPOINTMENT_ID'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P30_APPOINTMENT_ID'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'Y'
,p_prn_format=>'PDF'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715105958Z')
,p_updated_on=>wwv_flow_imp.dz('20260715105958Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8367929668692601)
,p_query_column_id=>1
,p_column_alias=>'APPOINTMENT_DATE'
,p_column_display_sequence=>10
,p_column_heading=>'Appointment Date'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260715105958Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8368005479692602)
,p_query_column_id=>2
,p_column_alias=>'APPOINTMENT_TIME'
,p_column_display_sequence=>20
,p_column_heading=>'Appointment Time'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260715105958Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8368216738692604)
,p_query_column_id=>4
,p_column_alias=>'REASON_FOR_VISIT'
,p_column_display_sequence=>40
,p_column_heading=>'Reason For Visit'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260715105958Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8368110680692603)
,p_query_column_id=>3
,p_column_alias=>'STATUS_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Status Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260715105958Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8353297916360214)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7527290120442603)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715100418Z')
,p_updated_on=>wwv_flow_imp.dz('20260715100418Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8323199570254347)
,p_plug_name=>'Clinical Visit Workspace'
,p_static_id=>'clinical-visit-workspace'
,p_title=>'Clinical Visit Workspace'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715100839Z')
,p_updated_on=>wwv_flow_imp.dz('20260715131116Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(8368348343692605)
,p_name=>'Doctor Summary'
,p_static_id=>'doctor-summary'
,p_template=>4073835273271169698
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT d.full_name,',
'       dep.department_name,',
'       sp.specialty_name',
'FROM doctors d',
'JOIN departments dep',
'ON dep.department_id = d.department_id',
'JOIN doctor_specialties sp',
'ON sp.specialty_id = d.specialty_id',
'WHERE d.doctor_id = :P30_DOCTOR_ID'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P30_DOCTOR_ID'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'Y'
,p_prn_format=>'PDF'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715110117Z')
,p_updated_on=>wwv_flow_imp.dz('20260715110117Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8369852669692620)
,p_query_column_id=>2
,p_column_alias=>'DEPARTMENT_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Department Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260715110117Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8369779537692619)
,p_query_column_id=>1
,p_column_alias=>'FULL_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Full Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260715110117Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8369907014692621)
,p_query_column_id=>3
,p_column_alias=>'SPECIALTY_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Specialty Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260715110117Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(8355174585383313)
,p_name=>'Patient Summary'
,p_static_id=>'patient-summary'
,p_title=>'Patient Summary'
,p_template=>4073835273271169698
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT p.full_name AS patient_name,',
'       p.civil_id,',
'       TRUNC(MONTHS_BETWEEN(SYSDATE, p.date_of_birth) / 12) AS age,',
'       p.gender,',
'       p.blood_group,',
'       p.mobile_no',
'FROM patients p',
'WHERE p.patient_id = :P30_PATIENT_ID'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P30_PATIENT_ID'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'Y'
,p_prn_format=>'PDF'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Patient Summary'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715103846Z')
,p_updated_on=>wwv_flow_imp.dz('20260715103847Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8356747988383329)
,p_query_column_id=>3
,p_column_alias=>'AGE'
,p_column_display_sequence=>30
,p_column_heading=>'Age'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260715103847Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8356912864383331)
,p_query_column_id=>5
,p_column_alias=>'BLOOD_GROUP'
,p_column_display_sequence=>50
,p_column_heading=>'Blood Group'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260715103847Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8356665034383328)
,p_query_column_id=>2
,p_column_alias=>'CIVIL_ID'
,p_column_display_sequence=>20
,p_column_heading=>'Civil Id'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260715103847Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8356894824383330)
,p_query_column_id=>4
,p_column_alias=>'GENDER'
,p_column_display_sequence=>40
,p_column_heading=>'Gender'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260715103847Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8357090406383332)
,p_query_column_id=>6
,p_column_alias=>'MOBILE_NO'
,p_column_display_sequence=>60
,p_column_heading=>'Mobile No'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260715103847Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8356573085383327)
,p_query_column_id=>1
,p_column_alias=>'PATIENT_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Patient Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260715103846Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8371747719692639)
,p_plug_name=>'Prescription'
,p_static_id=>'prescription'
,p_title=>'Prescription'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>60
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PRESCRIPTIONS'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P30_VISIT_ID'
,p_created_on=>wwv_flow_imp.dz('20260715115453Z')
,p_updated_on=>wwv_flow_imp.dz('20260715120729Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8387155924106704)
,p_plug_name=>'Prescription Items'
,p_static_id=>'prescription-items'
,p_title=>'Prescription Items'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>70
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT prescription_item_id,',
'       prescription_id,',
'       medicine_id,',
'       dosage,',
'       frequency,',
'       duration_days,',
'       instructions',
'FROM prescription_items',
'WHERE prescription_id = :P30_PRESCRIPTION_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P30_PRESCRIPTION_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P30_PRESCRIPTION_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Prescription Items'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_created_on=>wwv_flow_imp.dz('20260715123704Z')
,p_updated_on=>wwv_flow_imp.dz('20260715135013Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8389952091106732)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_updated_on=>wwv_flow_imp.dz('20260715123704Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8390013254106733)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_updated_on=>wwv_flow_imp.dz('20260715123704Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8389500607106728)
,p_name=>'DOSAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOSAGE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Dosage'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260715123704Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8389781744106730)
,p_name=>'DURATION_DAYS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DURATION_DAYS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Duration Days'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260715123704Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8389664632106729)
,p_name=>'FREQUENCY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FREQUENCY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Frequency'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Once Daily;Once Daily,Twice Daily;Twice Daily,Three Times Dail;Three Times Dail,Every 8 Hours;Every 8 Hours,As Needed;As Needed'
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260715135013Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8389818423106731)
,p_name=>'INSTRUCTIONS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INSTRUCTIONS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Instructions'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>500
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260715135013Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8389425930106727)
,p_name=>'MEDICINE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MEDICINE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Medicine Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT medicine_name AS display_value,',
'       medicine_id AS return_value',
'FROM medicines',
'WHERE status = ''Active''',
'ORDER BY medicine_name'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260715123704Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8389301235106726)
,p_name=>'PRESCRIPTION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRESCRIPTION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Prescription Id'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P30_PRESCRIPTION_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260715123704Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8389283863106725)
,p_name=>'PRESCRIPTION_ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRESCRIPTION_ITEM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_heading=>'Prescription Item Id'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260715124435Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(8387235230106705)
,p_internal_uid=>8387235230106705
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_updated_on=>wwv_flow_imp.dz('20260715123704Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(8395750612274868)
,p_interactive_grid_id=>wwv_flow_imp.id(8387235230106705)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260715123704Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(8395857106274870)
,p_report_id=>wwv_flow_imp.id(8395750612274868)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8396388665274874)
,p_view_id=>wwv_flow_imp.id(8395857106274870)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(8389283863106725)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8397299044274877)
,p_view_id=>wwv_flow_imp.id(8395857106274870)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(8389301235106726)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8398182512274879)
,p_view_id=>wwv_flow_imp.id(8395857106274870)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(8389425930106727)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8399024570274881)
,p_view_id=>wwv_flow_imp.id(8395857106274870)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(8389500607106728)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8399901975274883)
,p_view_id=>wwv_flow_imp.id(8395857106274870)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(8389664632106729)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8400811730274885)
,p_view_id=>wwv_flow_imp.id(8395857106274870)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(8389781744106730)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8401772031274887)
,p_view_id=>wwv_flow_imp.id(8395857106274870)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(8389818423106731)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8402665637274889)
,p_view_id=>wwv_flow_imp.id(8395857106274870)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(8389952091106732)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(8390287557106735)
,p_name=>'Previous Visits'
,p_static_id=>'previous-visits'
,p_title=>'Previous Visits'
,p_template=>4073835273271169698
,p_display_sequence=>80
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT v.visit_id,',
'       v.visit_date,',
'       d.full_name AS doctor_name,',
'       v.symptoms,',
'       v.diagnosis,',
'       v.notes,',
'       v.follow_up_date',
'FROM patient_visits v',
'JOIN doctors d',
'  ON d.doctor_id = v.doctor_id',
'WHERE v.patient_id = :P30_PATIENT_ID',
'  AND v.visit_id <> :P30_VISIT_ID',
'ORDER BY v.visit_date DESC,',
'         v.visit_id DESC'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P30_PATIENT_ID,P30_VISIT_ID'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No previous visits available for this patient.'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715125803Z')
,p_updated_on=>wwv_flow_imp.dz('20260715130421Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8390780977106740)
,p_query_column_id=>5
,p_column_alias=>'DIAGNOSIS'
,p_column_display_sequence=>50
,p_column_heading=>'Diagnosis'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260715125803Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8390507965106738)
,p_query_column_id=>3
,p_column_alias=>'DOCTOR_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Doctor Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260715125803Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8390953375106742)
,p_query_column_id=>7
,p_column_alias=>'FOLLOW_UP_DATE'
,p_column_display_sequence=>70
,p_column_heading=>'Follow Up Date'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260715125803Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8390891487106741)
,p_query_column_id=>6
,p_column_alias=>'NOTES'
,p_column_display_sequence=>60
,p_column_heading=>'Notes'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260715125803Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8390638820106739)
,p_query_column_id=>4
,p_column_alias=>'SYMPTOMS'
,p_column_display_sequence=>40
,p_column_heading=>'Symptoms'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260715125803Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8390431673106737)
,p_query_column_id=>2
,p_column_alias=>'VISIT_DATE'
,p_column_display_sequence=>20
,p_column_heading=>'Visit Date'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260715125803Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8390316346106736)
,p_query_column_id=>1
,p_column_alias=>'VISIT_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Visit Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260715125803Z')
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8370039234692622)
,p_plug_name=>'Visit Details'
,p_static_id=>'visit-details'
,p_title=>'Visit Details'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>50
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PATIENT_VISITS'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260715111922Z')
,p_updated_on=>wwv_flow_imp.dz('20260715111922Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8386951367106702)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8371747719692639)
,p_button_name=>'CREATE_PRESCRIPTION'
,p_static_id=>'create-prescription'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Create Prescription'
,p_button_position=>'CREATE'
,p_button_condition=>'P30_PRESCRIPTION_ID_1'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260715121213Z')
,p_updated_on=>wwv_flow_imp.dz('20260715121213Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8371318604692635)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8370039234692622)
,p_button_name=>'SAVE_VISIT'
,p_static_id=>'new'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Save Visit'
,p_button_position=>'CREATE'
,p_button_condition=>'P30_VISIT_ID_1'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260715112511Z')
,p_updated_on=>wwv_flow_imp.dz('20260715112850Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8371407577692636)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8370039234692622)
,p_button_name=>'CREATE_VISIT'
,p_static_id=>'new-1'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Create Visit'
,p_button_position=>'CREATE'
,p_button_condition=>'P30_VISIT_ID_1'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260715112511Z')
,p_updated_on=>wwv_flow_imp.dz('20260715112748Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8386898333106701)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8371747719692639)
,p_button_name=>'SAVE_PRESCRIPTION'
,p_static_id=>'save-prescription'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Save Prescription'
,p_button_position=>'CREATE'
,p_button_condition=>'P30_PRESCRIPTION_ID_1'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260715121213Z')
,p_updated_on=>wwv_flow_imp.dz('20260715121213Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8323223515254348)
,p_name=>'P30_APPOINTMENT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8323199570254347)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715100839Z')
,p_updated_on=>wwv_flow_imp.dz('20260715100839Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8370378551692625)
,p_name=>'P30_APPOINTMENT_ID_1'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8370039234692622)
,p_item_source_plug_id=>wwv_flow_imp.id(8370039234692622)
,p_source=>'APPOINTMENT_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715111922Z')
,p_updated_on=>wwv_flow_imp.dz('20260715111922Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8370821958692630)
,p_name=>'P30_DIAGNOSIS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8370039234692622)
,p_item_source_plug_id=>wwv_flow_imp.id(8370039234692622)
,p_prompt=>'Diagnosis'
,p_source=>'DIAGNOSIS'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>1000
,p_cHeight=>5
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715111922Z')
,p_updated_on=>wwv_flow_imp.dz('20260715111922Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8323469827254350)
,p_name=>'P30_DOCTOR_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8323199570254347)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715100839Z')
,p_updated_on=>wwv_flow_imp.dz('20260715100839Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8370578178692627)
,p_name=>'P30_DOCTOR_ID_1'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8370039234692622)
,p_item_source_plug_id=>wwv_flow_imp.id(8370039234692622)
,p_source=>'DOCTOR_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715111922Z')
,p_updated_on=>wwv_flow_imp.dz('20260715111922Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8372261898692644)
,p_name=>'P30_DOCTOR_ID_2'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(8371747719692639)
,p_item_source_plug_id=>wwv_flow_imp.id(8371747719692639)
,p_source=>'DOCTOR_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715115453Z')
,p_updated_on=>wwv_flow_imp.dz('20260715121213Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8371059601692632)
,p_name=>'P30_FOLLOW_UP_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8370039234692622)
,p_item_source_plug_id=>wwv_flow_imp.id(8370039234692622)
,p_prompt=>'Follow Up Date'
,p_source=>'FOLLOW_UP_DATE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715111922Z')
,p_updated_on=>wwv_flow_imp.dz('20260715111922Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8370937264692631)
,p_name=>'P30_NOTES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8370039234692622)
,p_item_source_plug_id=>wwv_flow_imp.id(8370039234692622)
,p_prompt=>'Notes'
,p_source=>'NOTES'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715111922Z')
,p_updated_on=>wwv_flow_imp.dz('20260715111922Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8372409057692646)
,p_name=>'P30_NOTES_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(8371747719692639)
,p_item_source_plug_id=>wwv_flow_imp.id(8371747719692639)
,p_prompt=>'Notes'
,p_source=>'NOTES'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>1000
,p_cHeight=>5
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715115453Z')
,p_updated_on=>wwv_flow_imp.dz('20260715121213Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8323367226254349)
,p_name=>'P30_PATIENT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8323199570254347)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715100839Z')
,p_updated_on=>wwv_flow_imp.dz('20260715100839Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8370481351692626)
,p_name=>'P30_PATIENT_ID_1'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8370039234692622)
,p_item_source_plug_id=>wwv_flow_imp.id(8370039234692622)
,p_source=>'PATIENT_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715111922Z')
,p_updated_on=>wwv_flow_imp.dz('20260715111922Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8372154997692643)
,p_name=>'P30_PATIENT_ID_2'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8371747719692639)
,p_item_source_plug_id=>wwv_flow_imp.id(8371747719692639)
,p_source=>'PATIENT_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715115453Z')
,p_updated_on=>wwv_flow_imp.dz('20260715121213Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8372319006692645)
,p_name=>'P30_PRESCRIPTION_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(8371747719692639)
,p_item_source_plug_id=>wwv_flow_imp.id(8371747719692639)
,p_prompt=>'Prescription Date'
,p_source=>'PRESCRIPTION_DATE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715115453Z')
,p_updated_on=>wwv_flow_imp.dz('20260715121213Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8354037708383302)
,p_name=>'P30_PRESCRIPTION_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(8323199570254347)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715100839Z')
,p_updated_on=>wwv_flow_imp.dz('20260715100839Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8371981706692641)
,p_name=>'P30_PRESCRIPTION_ID_1'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8371747719692639)
,p_item_source_plug_id=>wwv_flow_imp.id(8371747719692639)
,p_source=>'PRESCRIPTION_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715115453Z')
,p_updated_on=>wwv_flow_imp.dz('20260715121213Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8370763544692629)
,p_name=>'P30_SYMPTOMS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8370039234692622)
,p_item_source_plug_id=>wwv_flow_imp.id(8370039234692622)
,p_prompt=>'Symptoms'
,p_source=>'SYMPTOMS'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>1000
,p_cHeight=>5
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715111922Z')
,p_updated_on=>wwv_flow_imp.dz('20260715111922Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8370634180692628)
,p_name=>'P30_VISIT_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8370039234692622)
,p_item_source_plug_id=>wwv_flow_imp.id(8370039234692622)
,p_prompt=>'Visit Date'
,p_source=>'VISIT_DATE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715111922Z')
,p_updated_on=>wwv_flow_imp.dz('20260715111922Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8353901932383301)
,p_name=>'P30_VISIT_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8323199570254347)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715100839Z')
,p_updated_on=>wwv_flow_imp.dz('20260715100839Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8370201725692624)
,p_name=>'P30_VISIT_ID_1'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8370039234692622)
,p_item_source_plug_id=>wwv_flow_imp.id(8370039234692622)
,p_source=>'VISIT_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715111922Z')
,p_updated_on=>wwv_flow_imp.dz('20260715111922Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8372013333692642)
,p_name=>'P30_VISIT_ID_2'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8371747719692639)
,p_item_source_plug_id=>wwv_flow_imp.id(8371747719692639)
,p_source=>'VISIT_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715115453Z')
,p_updated_on=>wwv_flow_imp.dz('20260715121213Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8354134218383303)
,p_name=>'Get Appointment Details'
,p_static_id=>'get-appointment-details'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_APPOINTMENT_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20260715102648Z')
,p_updated_on=>wwv_flow_imp.dz('20260715103846Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8354909251383311)
,p_event_id=>wwv_flow_imp.id(8354134218383303)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_name=>'Doctor ID'
,p_static_id=>'doctor-id'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_DOCTOR_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'escape_special_characters', 'Y',
  'items_to_submit', 'P30_APPOINTMENT_ID',
  'sql_query', wwv_flow_string.join(wwv_flow_t_varchar2(
    'SELECT doctor_id',
    'FROM appointments',
    'WHERE appointment_id = :P30_APPOINTMENT_ID')),
  'suppress_change_event', 'N',
  'type', 'SQL_STATEMENT')).to_clob
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260715102648Z')
,p_updated_on=>wwv_flow_imp.dz('20260715103846Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8357355808383335)
,p_event_id=>wwv_flow_imp.id(8354134218383303)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8355174585383313)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715103846Z')
,p_updated_on=>wwv_flow_imp.dz('20260715103846Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8354236763383304)
,p_event_id=>wwv_flow_imp.id(8354134218383303)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'Patient ID'
,p_static_id=>'native-set-value'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_PATIENT_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'escape_special_characters', 'Y',
  'items_to_submit', 'P30_APPOINTMENT_ID',
  'sql_query', wwv_flow_string.join(wwv_flow_t_varchar2(
    'SELECT patient_id',
    'FROM appointments',
    'WHERE appointment_id = :P30_APPOINTMENT_ID')),
  'suppress_change_event', 'N',
  'type', 'SQL_STATEMENT')).to_clob
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260715102648Z')
,p_updated_on=>wwv_flow_imp.dz('20260715103242Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8355011555383312)
,p_event_id=>wwv_flow_imp.id(8354134218383303)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_name=>'Visit ID'
,p_static_id=>'visit-id'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_VISIT_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'escape_special_characters', 'Y',
  'items_to_submit', 'P30_APPOINTMENT_ID',
  'sql_query', wwv_flow_string.join(wwv_flow_t_varchar2(
    'SELECT visit_id',
    'FROM patient_visits',
    'WHERE appointment_id = :P30_APPOINTMENT_ID')),
  'suppress_change_event', 'N',
  'type', 'SQL_STATEMENT')).to_clob
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260715102648Z')
,p_updated_on=>wwv_flow_imp.dz('20260715103846Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8372561176692647)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Find Current Prescription'
,p_static_id=>'find-current-prescription'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT prescription_id',
'      INTO :P30_PRESCRIPTION_ID',
'      FROM prescriptions',
'     WHERE visit_id = :P30_VISIT_ID;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        :P30_PRESCRIPTION_ID := NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>8372561176692647
,p_created_on=>wwv_flow_imp.dz('20260715115844Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115844Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8370110665692623)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(8370039234692622)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Clinical Visit Workspace'
,p_static_id=>'initialize-form-clinical-visit-workspace'
,p_internal_uid=>8370110665692623
,p_created_on=>wwv_flow_imp.dz('20260715111922Z')
,p_updated_on=>wwv_flow_imp.dz('20260715111922Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8371867076692640)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(8371747719692639)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Clinical Visit Workspace'
,p_static_id=>'initialize-form-clinical-visit-workspace_1'
,p_internal_uid=>8371867076692640
,p_created_on=>wwv_flow_imp.dz('20260715115453Z')
,p_updated_on=>wwv_flow_imp.dz('20260715115453Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8372788676692649)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(8371747719692639)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize Prescription Form'
,p_static_id=>'initialize-prescription-form'
,p_internal_uid=>8372788676692649
,p_created_on=>wwv_flow_imp.dz('20260715120544Z')
,p_updated_on=>wwv_flow_imp.dz('20260715120544Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8357414022383336)
,p_process_sequence=>5
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Appointment Context'
,p_static_id=>'load-appointment-context'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT patient_id,',
'           doctor_id',
'      INTO :P30_PATIENT_ID,',
'           :P30_DOCTOR_ID',
'      FROM appointments',
'     WHERE appointment_id = :P30_APPOINTMENT_ID;',
'',
'    BEGIN',
'        SELECT visit_id',
'          INTO :P30_VISIT_ID',
'          FROM patient_visits',
'         WHERE appointment_id = :P30_APPOINTMENT_ID;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            :P30_VISIT_ID := NULL;',
'    END;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>8357414022383336
,p_created_on=>wwv_flow_imp.dz('20260715104422Z')
,p_updated_on=>wwv_flow_imp.dz('20260715104422Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8390113575106734)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(8387155924106704)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Prescription Items - Save Interactive Grid Data'
,p_static_id=>'prescription-items-save-interactive-grid-data'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8390113575106734
,p_created_on=>wwv_flow_imp.dz('20260715123704Z')
,p_updated_on=>wwv_flow_imp.dz('20260715123704Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8387062148106703)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(8371747719692639)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process Prescription'
,p_static_id=>'process-prescription'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST IN (''CREATE_PRESCRIPTION'', ''SAVE_PRESCRIPTION'')'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>8387062148106703
,p_created_on=>wwv_flow_imp.dz('20260715121304Z')
,p_updated_on=>wwv_flow_imp.dz('20260715122139Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8371565029692637)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(8370039234692622)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process Visit Details'
,p_static_id=>'process-visit-details'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST IN (''CREATE_VISIT'', ''SAVE_VISIT'')'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>8371565029692637
,p_created_on=>wwv_flow_imp.dz('20260715113035Z')
,p_updated_on=>wwv_flow_imp.dz('20260715122139Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8372826235692650)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Prescription Defaults'
,p_static_id=>'set-prescription-defaults'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P30_PRESCRIPTION_ID_1 IS NULL',
'       AND :P30_VISIT_ID IS NOT NULL THEN',
'',
'        :P30_VISIT_ID_2   := :P30_VISIT_ID;',
'        :P30_PATIENT_ID_2 := :P30_PATIENT_ID;',
'        :P30_DOCTOR_ID_2  := :P30_DOCTOR_ID;',
'',
'        IF :P30_PRESCRIPTION_DATE IS NULL THEN',
'            :P30_PRESCRIPTION_DATE := TRUNC(SYSDATE);',
'        END IF;',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>8372826235692650
,p_created_on=>wwv_flow_imp.dz('20260715120544Z')
,p_updated_on=>wwv_flow_imp.dz('20260715120544Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8372679227692648)
,p_process_sequence=>35
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Prescription Form Primary Key'
,p_static_id=>'set-prescription-form-primary-key'
,p_process_sql_clob=>':P30_PRESCRIPTION_ID_1 := :P30_PRESCRIPTION_ID;'
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>8372679227692648
,p_created_on=>wwv_flow_imp.dz('20260715120015Z')
,p_updated_on=>wwv_flow_imp.dz('20260715120015Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8371267693692634)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Visit Defaults'
,p_static_id=>'set-visit-defaults'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P30_VISIT_ID_1 IS NULL THEN',
'        :P30_APPOINTMENT_ID_1 := :P30_APPOINTMENT_ID;',
'        :P30_PATIENT_ID_1     := :P30_PATIENT_ID;',
'        :P30_DOCTOR_ID_1      := :P30_DOCTOR_ID;',
'',
'        IF :P30_VISIT_DATE IS NULL THEN',
'            :P30_VISIT_DATE := TRUNC(SYSDATE);',
'        END IF;',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>8371267693692634
,p_created_on=>wwv_flow_imp.dz('20260715111922Z')
,p_updated_on=>wwv_flow_imp.dz('20260715111922Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8371668464692638)
,p_process_sequence=>7
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Visit Form Primary Key'
,p_static_id=>'set-visit-form-primary-key'
,p_process_sql_clob=>':P30_VISIT_ID_1 := :P30_VISIT_ID;'
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>8371668464692638
,p_created_on=>wwv_flow_imp.dz('20260715113700Z')
,p_updated_on=>wwv_flow_imp.dz('20260715113700Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/pages/page_00031
begin
wwv_flow_imp_page.create_page(
 p_id=>31
,p_name=>'Admission Management'
,p_alias=>'ADMISSION-MANAGEMENT'
,p_step_title=>'Admission Management'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260715140143Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260716092112Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_last_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8419423315716343)
,p_plug_name=>'Admission Management'
,p_static_id=>'admission-management'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.admission_id,',
'       p.full_name AS patient_name,',
'       d.full_name AS doctor_name,',
'       r.room_no,',
'       r.room_type,',
'       a.admission_date,',
'       a.discharge_date,',
'       a.admission_reason,',
'       a.status',
'FROM admissions a',
'JOIN patients p',
'  ON p.patient_id = a.patient_id',
'JOIN doctors d',
'  ON d.doctor_id = a.doctor_id',
'JOIN rooms r',
'  ON r.room_id = a.room_id',
'WHERE a.status = ''Admitted''',
'ORDER BY a.admission_date DESC,',
'         a.admission_id DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260715140145Z')
,p_updated_on=>wwv_flow_imp.dz('20260716092112Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(8419546489716343)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:32:&APP_SESSION.::&DEBUG.:RP:P32_ADMISSION_ID:\#ADMISSION_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>8419546489716343
,p_created_on=>wwv_flow_imp.dz('20260715140145Z')
,p_updated_on=>wwv_flow_imp.dz('20260716092112Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8422329500716373)
,p_db_column_name=>'ADMISSION_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Admission Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715140145Z')
,p_updated_on=>wwv_flow_imp.dz('20260715140145Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8420700093716355)
,p_db_column_name=>'ADMISSION_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Admission ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260715140145Z')
,p_updated_on=>wwv_flow_imp.dz('20260715140145Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8423195195716376)
,p_db_column_name=>'ADMISSION_REASON'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Admission Reason'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715140145Z')
,p_updated_on=>wwv_flow_imp.dz('20260715140145Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8422739701716374)
,p_db_column_name=>'DISCHARGE_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Discharge Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715140145Z')
,p_updated_on=>wwv_flow_imp.dz('20260715140145Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8429766388009203)
,p_db_column_name=>'DOCTOR_NAME'
,p_display_order=>28
,p_column_identifier=>'J'
,p_column_label=>'Doctor Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715145047Z')
,p_updated_on=>wwv_flow_imp.dz('20260715145047Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8429603339009202)
,p_db_column_name=>'PATIENT_NAME'
,p_display_order=>18
,p_column_identifier=>'I'
,p_column_label=>'Patient Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715145046Z')
,p_updated_on=>wwv_flow_imp.dz('20260715150943Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8429854969009204)
,p_db_column_name=>'ROOM_NO'
,p_display_order=>38
,p_column_identifier=>'K'
,p_column_label=>'Room No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715145047Z')
,p_updated_on=>wwv_flow_imp.dz('20260715145047Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8429970826009205)
,p_db_column_name=>'ROOM_TYPE'
,p_display_order=>48
,p_column_identifier=>'L'
,p_column_label=>'Room Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715145047Z')
,p_updated_on=>wwv_flow_imp.dz('20260715145047Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8423571645716378)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260715140145Z')
,p_updated_on=>wwv_flow_imp.dz('20260715140145Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8428414292924195)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ADMISSION_DATE:DISCHARGE_DATE:ADMISSION_REASON:STATUS:DOCTOR_NAME:PATIENT_NAME:ROOM_NO:ROOM_TYPE'
,p_created_on=>wwv_flow_imp.dz('20260715143623Z')
,p_updated_on=>wwv_flow_imp.dz('20260716092112Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8424780002716381)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7527290120442603)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715140145Z')
,p_updated_on=>wwv_flow_imp.dz('20260715140145Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8423966055716379)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8419423315716343)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:32:&APP_SESSION.::&DEBUG.:32::'
,p_created_on=>wwv_flow_imp.dz('20260715140145Z')
,p_updated_on=>wwv_flow_imp.dz('20260715140145Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/pages/page_00032
begin
wwv_flow_imp_page.create_page(
 p_id=>32
,p_name=>'Admission Form'
,p_alias=>'ADMISSION-FORM'
,p_step_title=>'Admission Form'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260715140142Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260715144427Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_last_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8409623941716092)
,p_plug_name=>'Admission Form'
,p_static_id=>'admission-form'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'ADMISSIONS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260715140142Z')
,p_updated_on=>wwv_flow_imp.dz('20260715140142Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8425334721716389)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7527290120442603)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260715140145Z')
,p_updated_on=>wwv_flow_imp.dz('20260715140145Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8415803394716176)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8409623941716092)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:31:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20260715140143Z')
,p_updated_on=>wwv_flow_imp.dz('20260715140143Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8417165691716180)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(8409623941716092)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P32_ADMISSION_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260715140143Z')
,p_updated_on=>wwv_flow_imp.dz('20260715140143Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8416363856716179)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8409623941716092)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P32_ADMISSION_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260715140143Z')
,p_updated_on=>wwv_flow_imp.dz('20260715140143Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8416777975716179)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(8409623941716092)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P32_ADMISSION_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260715140143Z')
,p_updated_on=>wwv_flow_imp.dz('20260715140143Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(8417573287716180)
,p_branch_action=>'f?p=&APP_ID.:31:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20260715140143Z')
,p_updated_on=>wwv_flow_imp.dz('20260715140143Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8411840570716173)
,p_name=>'P32_ADMISSION_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(8409623941716092)
,p_item_source_plug_id=>wwv_flow_imp.id(8409623941716092)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TRUNC(SYSDATE)',
'FROM dual'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Admission Date'
,p_source=>'ADMISSION_DATE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715140143Z')
,p_updated_on=>wwv_flow_imp.dz('20260715144349Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8410020190716101)
,p_name=>'P32_ADMISSION_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8409623941716092)
,p_item_source_plug_id=>wwv_flow_imp.id(8409623941716092)
,p_source=>'ADMISSION_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715140142Z')
,p_updated_on=>wwv_flow_imp.dz('20260715140143Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8412697081716174)
,p_name=>'P32_ADMISSION_REASON'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(8409623941716092)
,p_item_source_plug_id=>wwv_flow_imp.id(8409623941716092)
,p_prompt=>'Admission Reason'
,p_source=>'ADMISSION_REASON'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715140143Z')
,p_updated_on=>wwv_flow_imp.dz('20260715140143Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8412223844716173)
,p_name=>'P32_DISCHARGE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(8409623941716092)
,p_item_source_plug_id=>wwv_flow_imp.id(8409623941716092)
,p_prompt=>'Discharge Date'
,p_source=>'DISCHARGE_DATE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715140143Z')
,p_updated_on=>wwv_flow_imp.dz('20260715140143Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8410821809716115)
,p_name=>'P32_DOCTOR_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8409623941716092)
,p_item_source_plug_id=>wwv_flow_imp.id(8409623941716092)
,p_prompt=>'Doctor Id'
,p_source=>'DOCTOR_ID'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT full_name AS display_value,',
'       doctor_id AS return_value',
'FROM doctors',
'ORDER BY full_name;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715140142Z')
,p_updated_on=>wwv_flow_imp.dz('20260715140803Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8410459858716109)
,p_name=>'P32_PATIENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8409623941716092)
,p_item_source_plug_id=>wwv_flow_imp.id(8409623941716092)
,p_prompt=>'Patient Id'
,p_source=>'PATIENT_ID'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT full_name AS display_value,',
'       patient_id AS return_value',
'FROM patients',
'ORDER BY full_name;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Patient -'
,p_cSize=>30
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715140142Z')
,p_updated_on=>wwv_flow_imp.dz('20260715140803Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8411284837716115)
,p_name=>'P32_ROOM_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8409623941716092)
,p_item_source_plug_id=>wwv_flow_imp.id(8409623941716092)
,p_prompt=>'Room Id'
,p_source=>'ROOM_ID'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT room_no || '' - '' || room_type AS display_value,',
'       room_id AS return_value',
'FROM rooms',
'WHERE status = ''Available''',
'   OR room_id = :P32_ROOM_ID',
'ORDER BY room_no;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715140143Z')
,p_updated_on=>wwv_flow_imp.dz('20260715141013Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8413072987716174)
,p_name=>'P32_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(8409623941716092)
,p_item_source_plug_id=>wwv_flow_imp.id(8409623941716092)
,p_item_default=>'Admitted'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Admitted;Admitted,Discharged;Discharged'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260715140143Z')
,p_updated_on=>wwv_flow_imp.dz('20260715144427Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8391453833106747)
,p_validation_name=>'Discharge Date Required'
,p_static_id=>'discharge-date-required'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P32_STATUS <> ''Discharged''',
'OR :P32_DISCHARGE_DATE IS NOT NULL'))
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Discharge date is required when status is Discharged.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260715143412Z')
,p_updated_on=>wwv_flow_imp.dz('20260715143412Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8391064294106743)
,p_validation_name=>'Room Must Be Available'
,p_static_id=>'room-must-be-available'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM rooms',
'WHERE room_id = :P32_ROOM_ID',
'  AND status <> ''Available'''))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Selected room is not available.'
,p_when_button_pressed=>wwv_flow_imp.id(8417165691716180)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260715142633Z')
,p_updated_on=>wwv_flow_imp.dz('20260715142633Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8391566396106748)
,p_validation_name=>'Valid Discharge Date'
,p_static_id=>'valid-discharge-date'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P32_DISCHARGE_DATE IS NULL',
'OR :P32_DISCHARGE_DATE >= :P32_ADMISSION_DATE'))
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Discharge date cannot be before admission date.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260715143444Z')
,p_updated_on=>wwv_flow_imp.dz('20260715143444Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8417903780716181)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(8409623941716092)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Admission Form'
,p_static_id=>'initialize-form-admission-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>8417903780716181
,p_created_on=>wwv_flow_imp.dz('20260715140143Z')
,p_updated_on=>wwv_flow_imp.dz('20260715140143Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8391260982106745)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Mark Room Occupied'
,p_static_id=>'mark-room-occupied'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P32_STATUS = ''Admitted'' THEN',
'        UPDATE rooms',
'           SET status = ''Occupied''',
'         WHERE room_id = :P32_ROOM_ID;',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8417165691716180)
,p_internal_uid=>8391260982106745
,p_created_on=>wwv_flow_imp.dz('20260715143334Z')
,p_updated_on=>wwv_flow_imp.dz('20260715143334Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8418300086716183)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(8409623941716092)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Admission Form'
,p_static_id=>'process-form-admission-form'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8418300086716183
,p_created_on=>wwv_flow_imp.dz('20260715140143Z')
,p_updated_on=>wwv_flow_imp.dz('20260715140143Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8391380798106746)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Release Room After Discharge'
,p_static_id=>'release-room-after-discharge'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P32_STATUS = ''Discharged''',
'       AND :P32_DISCHARGE_DATE IS NOT NULL THEN',
'',
'        UPDATE rooms',
'           SET status = ''Available''',
'         WHERE room_id = :P32_ROOM_ID;',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8416777975716179)
,p_internal_uid=>8391380798106746
,p_created_on=>wwv_flow_imp.dz('20260715143334Z')
,p_updated_on=>wwv_flow_imp.dz('20260715143334Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/pages/page_00033
begin
wwv_flow_imp_page.create_page(
 p_id=>33
,p_name=>'Patient Visit Report'
,p_alias=>'PATIENT-VISIT-REPORT'
,p_step_title=>'Patient Visit Report'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260716092801Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260716111816Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_last_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8457150927840616)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7527290120442603)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260716092802Z')
,p_updated_on=>wwv_flow_imp.dz('20260716092802Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8457983831840764)
,p_plug_name=>'Patient Visit Report'
,p_static_id=>'patient-visit-report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT v.visit_id,',
'       p.full_name AS patient_name,',
'       d.full_name AS doctor_name,',
'       dep.department_name,',
'       v.visit_date,',
'       v.symptoms,',
'       v.diagnosis,',
'       v.follow_up_date',
'FROM patient_visits v',
'JOIN patients p',
'  ON p.patient_id = v.patient_id',
'JOIN doctors d',
'  ON d.doctor_id = v.doctor_id',
'JOIN departments dep',
'  ON dep.department_id = d.department_id',
'WHERE (:P33_DOCTOR IS NULL',
'       OR d.doctor_id = :P33_DOCTOR)',
'  AND (:P33_DEPARTMENT IS NULL',
'       OR dep.department_id = :P33_DEPARTMENT)',
'  AND (',
'       :P33_VISIT_DATE IS NULL',
'       OR TRUNC(v.visit_date) =',
'          TO_DATE(:P33_VISIT_DATE, ''MM/DD/YYYY'')',
'      )',
'ORDER BY v.visit_date DESC,',
'         v.visit_id DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P33_DOCTOR,P33_DEPARTMENT,P33_VISIT_DATE'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260716092803Z')
,p_updated_on=>wwv_flow_imp.dz('20260716111816Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(8458036813840764)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>8458036813840764
,p_created_on=>wwv_flow_imp.dz('20260716092804Z')
,p_updated_on=>wwv_flow_imp.dz('20260716111816Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8460315748840796)
,p_db_column_name=>'DEPARTMENT_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Department Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716092804Z')
,p_updated_on=>wwv_flow_imp.dz('20260716092804Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8461541925840803)
,p_db_column_name=>'DIAGNOSIS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Diagnosis'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716092804Z')
,p_updated_on=>wwv_flow_imp.dz('20260716092804Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8459960387840794)
,p_db_column_name=>'DOCTOR_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Doctor Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716092804Z')
,p_updated_on=>wwv_flow_imp.dz('20260716092804Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8461952930840804)
,p_db_column_name=>'FOLLOW_UP_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Follow Up Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716092804Z')
,p_updated_on=>wwv_flow_imp.dz('20260716092804Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8459584566840792)
,p_db_column_name=>'PATIENT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Patient Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716092804Z')
,p_updated_on=>wwv_flow_imp.dz('20260716092804Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8461161010840801)
,p_db_column_name=>'SYMPTOMS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Symptoms'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716092804Z')
,p_updated_on=>wwv_flow_imp.dz('20260716092804Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8460764807840798)
,p_db_column_name=>'VISIT_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Visit Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716092804Z')
,p_updated_on=>wwv_flow_imp.dz('20260716092804Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8459114394840784)
,p_db_column_name=>'VISIT_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Visit Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716092804Z')
,p_updated_on=>wwv_flow_imp.dz('20260716092804Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8463125765960555)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PATIENT_NAME:DOCTOR_NAME:DEPARTMENT_NAME:VISIT_DATE:SYMPTOMS:DIAGNOSIS:FOLLOW_UP_DATE'
,p_created_on=>wwv_flow_imp.dz('20260716105558Z')
,p_updated_on=>wwv_flow_imp.dz('20260716111816Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8432537041009231)
,p_button_sequence=>50
,p_button_name=>'APPLY_FILTERS'
,p_static_id=>'apply-filters'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Apply Filters'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716110047Z')
,p_updated_on=>wwv_flow_imp.dz('20260716111710Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8432662453009232)
,p_button_sequence=>60
,p_button_name=>'CLEAR_FILTERS'
,p_static_id=>'clear-filters'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Clear Filters'
,p_button_redirect_url=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:33::'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-margin-left-md'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716110047Z')
,p_updated_on=>wwv_flow_imp.dz('20260716111710Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8432396866009229)
,p_name=>'P33_DEPARTMENT'
,p_item_sequence=>30
,p_prompt=>'Department'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT department_name AS display_value,',
'       department_id AS return_value',
'FROM departments',
'ORDER BY department_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'All Departments'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716110047Z')
,p_updated_on=>wwv_flow_imp.dz('20260716111238Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8432248788009228)
,p_name=>'P33_DOCTOR'
,p_item_sequence=>20
,p_prompt=>'Doctor'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT full_name AS display_value,',
'       doctor_id AS return_value',
'FROM doctors',
'ORDER BY full_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'All Doctors'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716110047Z')
,p_updated_on=>wwv_flow_imp.dz('20260716111238Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8432445740009230)
,p_name=>'P33_VISIT_DATE'
,p_item_sequence=>40
,p_prompt=>'Visit Date'
,p_format_mask=>'MM/DD/YYYY'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716110047Z')
,p_updated_on=>wwv_flow_imp.dz('20260716111238Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8432750300009233)
,p_name=>'New'
,p_static_id=>'new'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8432537041009231)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20260716110047Z')
,p_updated_on=>wwv_flow_imp.dz('20260716110047Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8432850009009234)
,p_event_id=>wwv_flow_imp.id(8432750300009233)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8457983831840764)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260716110047Z')
,p_updated_on=>wwv_flow_imp.dz('20260716110047Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/pages/page_00034
begin
wwv_flow_imp_page.create_page(
 p_id=>34
,p_name=>'Admission Report'
,p_alias=>'ADMISSION-REPORT'
,p_step_title=>'Admission Report'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260716113950Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260716114046Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_last_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8476262510223978)
,p_plug_name=>'Admission Report'
,p_static_id=>'admission-report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.admission_id,',
'       p.full_name AS patient_name,',
'       d.full_name AS doctor_name,',
'       r.room_no,',
'       r.room_type,',
'       a.admission_date,',
'       a.discharge_date,',
'       a.status',
'FROM admissions a',
'JOIN patients p',
'  ON p.patient_id = a.patient_id',
'JOIN doctors d',
'  ON d.doctor_id = a.doctor_id',
'JOIN rooms r',
'  ON r.room_id = a.room_id',
'ORDER BY a.admission_date DESC,',
'         a.admission_id DESC;'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260716113952Z')
,p_updated_on=>wwv_flow_imp.dz('20260716114046Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(8476355357223978)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>8476355357223978
,p_created_on=>wwv_flow_imp.dz('20260716113952Z')
,p_updated_on=>wwv_flow_imp.dz('20260716114046Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8479411734224010)
,p_db_column_name=>'ADMISSION_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Admission Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716113953Z')
,p_updated_on=>wwv_flow_imp.dz('20260716113953Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8477457863223998)
,p_db_column_name=>'ADMISSION_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Admission Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716113953Z')
,p_updated_on=>wwv_flow_imp.dz('20260716113953Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8479865996224012)
,p_db_column_name=>'DISCHARGE_DATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Discharge Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716113953Z')
,p_updated_on=>wwv_flow_imp.dz('20260716113953Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8478294415224005)
,p_db_column_name=>'DOCTOR_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Doctor Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716113953Z')
,p_updated_on=>wwv_flow_imp.dz('20260716113953Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8477830868224003)
,p_db_column_name=>'PATIENT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Patient Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716113953Z')
,p_updated_on=>wwv_flow_imp.dz('20260716113953Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8478674548224007)
,p_db_column_name=>'ROOM_NO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Room No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716113953Z')
,p_updated_on=>wwv_flow_imp.dz('20260716113953Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8479058723224009)
,p_db_column_name=>'ROOM_TYPE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Room Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716113953Z')
,p_updated_on=>wwv_flow_imp.dz('20260716113953Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8480216162224014)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260716113953Z')
,p_updated_on=>wwv_flow_imp.dz('20260716113953Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8480655781229363)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ADMISSION_ID:PATIENT_NAME:DOCTOR_NAME:ROOM_NO:ROOM_TYPE:ADMISSION_DATE:DISCHARGE_DATE:STATUS'
,p_created_on=>wwv_flow_imp.dz('20260716114046Z')
,p_updated_on=>wwv_flow_imp.dz('20260716114046Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8475410396223825)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(7527290120442603)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260716113951Z')
,p_updated_on=>wwv_flow_imp.dz('20260716113951Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'Hospital Management System - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2102634289808461002
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
,p_created_on=>wwv_flow_imp.dz('20260712121926Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260712121926Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_last_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7532922078442734)
,p_plug_name=>'Hospital Management System'
,p_static_id=>'hospital-management-system'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2675634334296186762
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712121926Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121926Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7534547434442753)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(7532922078442734)
,p_button_name=>'LOGIN'
,p_static_id=>'login'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260712121926Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121926Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7533847812442748)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7532922078442734)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2042262243893469891
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712121926Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121926Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7534221812442751)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7532922078442734)
,p_prompt=>'Remember username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2042262243893469891
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712121926Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121926Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7533426556442746)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7532922078442734)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2042262243893469891
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260712121926Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121926Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7538674459442765)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_static_id=>'clear-page-s-cache'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7538674459442765
,p_created_on=>wwv_flow_imp.dz('20260712121926Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121926Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7538228649442764)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_static_id=>'get-username-cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>7538228649442764
,p_created_on=>wwv_flow_imp.dz('20260712121926Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121926Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7534900013442755)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_static_id=>'login'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'LOGIN',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7534900013442755
,p_created_on=>wwv_flow_imp.dz('20260712121926Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121926Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(7535964164442761)
,p_page_process_id=>wwv_flow_imp.id(7534900013442755)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
,p_created_on=>wwv_flow_imp.dz('20260712121926Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121926Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(7536400794442761)
,p_page_process_id=>wwv_flow_imp.id(7534900013442755)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
,p_created_on=>wwv_flow_imp.dz('20260712121926Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121926Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(7535407813442759)
,p_page_process_id=>wwv_flow_imp.id(7534900013442755)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
,p_created_on=>wwv_flow_imp.dz('20260712121926Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121926Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7536883646442762)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_static_id=>'set-username-cookie'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'SEND_LOGIN_USERNAME_COOKIE',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7536883646442762
,p_created_on=>wwv_flow_imp.dz('20260712121926Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121926Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(7537849278442764)
,p_page_process_id=>wwv_flow_imp.id(7536883646442762)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
,p_created_on=>wwv_flow_imp.dz('20260712121926Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121926Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(7537325525442763)
,p_page_process_id=>wwv_flow_imp.id(7536883646442762)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
,p_created_on=>wwv_flow_imp.dz('20260712121926Z')
,p_updated_on=>wwv_flow_imp.dz('20260712121926Z')
,p_created_by=>'HOSPITAL_ADMIN'
,p_updated_by=>'HOSPITAL_ADMIN'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
