--liquibase formatted sql
--changeset Liquibase Pro User:1-package runWith:sqlplus
prompt --application/deployment/install/install_insert_data
begin
--   Manifest
--     INSTALL: INSTALL-insert data
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.0'
,p_default_workspace_id=>5828575066947664
,p_default_application_id=>100
,p_default_id_offset=>7043616593336102
,p_default_owner=>'INTERNALA'
);
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(2576505065780806567)
,p_install_id=>wwv_flow_imp.id(2572512291634129806)
,p_name=>'insert data'
,p_sequence=>30
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace procedure EBA_DEMO_CAL_DATA as',
'begin',
'  delete from EBA_DEMO_CAL_PROJECTS;',
'  ',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''ACME Web Express Configuration'',''Identify server requirements'',to_date(''12/20/2015'',''MM/DD/YYYY''),to_date(''12/21/2015'',''MM/DD/YYYY''),'''
||'Closed'',''John Watson'',''200'',''500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''ACME Web Express Configuration'',''Determine Web listener configuration(s)'',to_date(''12/22/2015'',''MM/DD/YYYY''),to_date(''12/22/2015'',''MM/'
||'DD/YYYY''),''Closed'',''James Cassidy'',''600'',''500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''ACME Web Express Configuration'',''Run installation'',to_date(''12/25/2015'',''MM/DD/YYYY''),to_date(''12/25/2015'',''MM/DD/YYYY''),''Closed'',''Jam'
||'es Cassidy'',''200'',''200'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''ACME Web Express Configuration'',''Create pilot workspace'',to_date(''12/27/2015'',''MM/DD/YYYY''),to_date(''12/27/2015'',''MM/DD/YYYY''),''Closed'
||''',''John Watson'',''100'',''100'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''ACME Web Express Configuration'',''Specify security authentication scheme(s)'',to_date(''01/01/2016'',''MM/DD/YYYY''),to_date(''01/01/2016'',''M'
||'M/DD/YYYY''),''Open'',''John Watson'',''200'',''300'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''ACME Web Express Configuration'',''Configure Workspace provisioning'',to_date(''01/02/2016'',''MM/DD/YYYY''),to_date(''01/02/2016'',''MM/DD/YYYY'
||'''),''Open'',''John Watson'',''200'',''100'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''ACME Web Express Configuration'',''Select servers for Development, Test, Production'',to_date(''01/05/2016'',''MM/DD/YYYY''),to_date(''01/07/2'
||'016'',''MM/DD/YYYY''),''Open'',''James Cassidy'',''200'',''600'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Bug Tracker'',''Document quality assurance procedures'',to_date(''11/05/2015'',''MM/DD/YYYY''),to_date(''11/08/2015'',''MM/DD/YYYY''),''Closed'',''M'
||'yra Sutcliff'',''3000'',''2000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Bug Tracker'',''Review automated testing tools'',to_date(''11/09/2015'',''MM/DD/YYYY''),to_date(''11/11/2015'',''MM/DD/YYYY''),''Closed'',''Myra Sut'
||'cliff'',''750'',''1500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Bug Tracker'',''Implement bug tracking software'',to_date(''11/24/2015'',''MM/DD/YYYY''),to_date(''11/24/2015'',''MM/DD/YYYY''),''Closed'',''Myra Su'
||'tcliff'',''100'',''100'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Bug Tracker'',''Train developers on tracking bugs'',to_date(''12/01/2015'',''MM/DD/YYYY''),to_date(''12/06/2015'',''MM/DD/YYYY''),''On-Hold'',''Myra'
||' Sutcliff'',''1000'',''2000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Bug Tracker'',''Measure effectiveness of improved QA'',to_date(''12/13/2015'',''MM/DD/YYYY''),to_date(''12/13/2015'',''MM/DD/YYYY''),''Pending'',''M'
||'yra Sutcliff'',''0'',''500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Convert Spreadsheets'',''Collect mission-critical spreadsheets'',to_date(''12/19/2015'',''MM/DD/YYYY''),to_date(''12/20/2015'',''MM/DD/YYYY''),''C'
||'losed'',''Pam King'',''2500'',''4000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Convert Spreadsheets'',''Lock spreadsheets'',to_date(''12/22/2015'',''MM/DD/YYYY''),to_date(''12/22/2015'',''MM/DD/YYYY''),''Closed'',''Pam King'',''3'
||'00'',''800'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Convert Spreadsheets'',''Create ACME Web Express applications from spreadsheets'',to_date(''12/30/2015'',''MM/DD/YYYY''),to_date(''01/03/2016'''
||',''MM/DD/YYYY''),''Open'',''Pam King'',''6000'',''10000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Convert Spreadsheets'',''Send links to previous spreadsheet owners'',to_date(''01/05/2016'',''MM/DD/YYYY''),to_date(''01/05/2016'',''MM/DD/YYYY'''
||'),''Pending'',''Pam King'',''0'',''500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Discussion Forum'',''Identify owners'',to_date(''11/25/2015'',''MM/DD/YYYY''),to_date(''11/25/2015'',''MM/DD/YYYY''),''Closed'',''Hank Davis'',''250'','
||'''300'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Discussion Forum'',''Install ACME Web Express application on internet server'',to_date(''12/01/2015'',''MM/DD/YYYY''),to_date(''12/01/2015'',''M'
||'M/DD/YYYY''),''Closed'',''Hank Davis'',''100'',''100'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Discussion Forum'',''Monitor participation'',to_date(''12/31/2015'',''MM/DD/YYYY''),to_date(''01/01/2016'',''MM/DD/YYYY''),''Open'',''Hank Davis'',''4'
||'50'',''500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Email Integration'',''Complete plan'',to_date(''12/12/2015'',''MM/DD/YYYY''),to_date(''12/13/2015'',''MM/DD/YYYY''),''Closed'',''Bob Nile'',''3000'',''1'
||'500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Email Integration'',''Check software licenses'',to_date(''12/15/2015'',''MM/DD/YYYY''),to_date(''12/15/2015'',''MM/DD/YYYY''),''Closed'',''Bob Nile'''
||',''200'',''200'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Email Integration'',''Get RFPs for new server'',to_date(''12/29/2015'',''MM/DD/YYYY''),to_date(''12/30/2015'',''MM/DD/YYYY''),''Closed'',''Bob Nile'''
||',''2000'',''1000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Email Integration'',''Purchase backup server'',to_date(''01/15/2016'',''MM/DD/YYYY''),to_date(''01/17/2016'',''MM/DD/YYYY''),''Pending'',''Bob Nile'''
||',''0'',''3000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Employee Satisfaction Survey'',''Complete questionnaire'',to_date(''12/05/2015'',''MM/DD/YYYY''),to_date(''12/06/2015'',''MM/DD/YYYY''),''Closed'','
||'''Irene Jones'',''1200'',''800'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Employee Satisfaction Survey'',''Review with legal'',to_date(''12/07/2015'',''MM/DD/YYYY''),to_date(''12/07/2015'',''MM/DD/YYYY''),''On-Hold'',''Ire'
||'ne Jones'',''200'',''400'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Employee Satisfaction Survey'',''Plan rollout schedule'',to_date(''12/08/2015'',''MM/DD/YYYY''),to_date(''12/08/2015'',''MM/DD/YYYY''),''On-Hold'','
||'''Irene Jones'',''0'',''750'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Client Server Conversion'',''Identify pilot Client Server applications'',to_date(''12/17/2015'',''MM/DD/YYYY''),to_date(''12/17/2015'',''MM/DD/Y'
||'YYY''),''Closed'',''Scott Spencer'',''200'',''200'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Client Server Conversion'',''Migrate pilot Client Server to ACME Web Express'',to_date(''12/19/2015'',''MM/DD/YYYY''),to_date(''12/22/2015'',''M'
||'M/DD/YYYY''),''Closed'',''Scott Spencer'',''4500'',''5000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Client Server Conversion'',''Post-migration review'',to_date(''12/23/2015'',''MM/DD/YYYY''),to_date(''12/23/2015'',''MM/DD/YYYY''),''Closed'',''Pam '
||'King'',''500'',''300'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Client Server Conversion'',''Plan migration schedule'',to_date(''12/26/2015'',''MM/DD/YYYY''),to_date(''12/26/2015'',''MM/DD/YYYY''),''Closed'',''Pa'
||'m King'',''1000'',''1000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Client Server Conversion'',''Migrate Client Server applications'',to_date(''12/31/2015'',''MM/DD/YYYY''),to_date(''01/03/2016'',''MM/DD/YYYY''),'''
||'Open'',''Pam King'',''300'',''12000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Client Server Conversion'',''Test migrated applications'',to_date(''01/05/2016'',''MM/DD/YYYY''),to_date(''01/06/2016'',''MM/DD/YYYY''),''Pending'''
||',''Russ Saunders'',''0'',''6000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Client Server Conversion'',''User acceptance testing'',to_date(''01/09/2016'',''MM/DD/YYYY''),to_date(''01/11/2016'',''MM/DD/YYYY''),''Pending'',''R'
||'uss Saunders'',''0'',''2500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Client Server Conversion'',''End-user Training'',to_date(''01/15/2016'',''MM/DD/YYYY''),to_date(''01/15/2016'',''MM/DD/YYYY''),''Pending'',''Myra Su'
||'tcliff'',''0'',''2500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Client Server Conversion'',''Rollout migrated Client Server in ACME Web Express'',to_date(''01/16/2016'',''MM/DD/YYYY''),to_date(''01/16/2016'''
||',''MM/DD/YYYY''),''Pending'',''Pam King'',''0'',''200'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Load Packaged Apps'',''Identify point solutions required'',to_date(''12/19/2015'',''MM/DD/YYYY''),to_date(''12/19/2015'',''MM/DD/YYYY''),''Closed'''
||',''John Watson'',''200'',''300'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Load Packaged Apps'',''Install in development'',to_date(''12/20/2015'',''MM/DD/YYYY''),to_date(''12/20/2015'',''MM/DD/YYYY''),''Closed'',''John Wats'
||'on'',''100'',''100'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Load Packaged Apps'',''Customize solutions'',to_date(''12/23/2015'',''MM/DD/YYYY''),to_date(''12/25/2015'',''MM/DD/YYYY''),''Open'',''John Watson'','''
||'1500'',''4000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Load Packaged Apps'',''Implement in Production'',to_date(''12/26/2015'',''MM/DD/YYYY''),to_date(''12/26/2015'',''MM/DD/YYYY''),''On-Hold'',''John Wa'
||'tson'',''200'',''1500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Load Packaged Apps'',''Train Administrators of Packaged Apps'',to_date(''12/28/2015'',''MM/DD/YYYY''),to_date(''12/28/2015'',''MM/DD/YYYY''),''Pen'
||'ding'',''John Watson'',''0'',''1000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Maintain Support Systems'',''HR software upgrades'',to_date(''11/28/2015'',''MM/DD/YYYY''),to_date(''12/01/2015'',''MM/DD/YYYY''),''Closed'',''Pam K'
||'ing'',''8000'',''7000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Maintain Support Systems'',''Apply Billing System updates'',to_date(''12/02/2015'',''MM/DD/YYYY''),to_date(''12/04/2015'',''MM/DD/YYYY''),''Closed'
||''',''Russ Saunders'',''9500'',''7000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Maintain Support Systems'',''Arrange for vacation coverage'',to_date(''12/06/2015'',''MM/DD/YYYY''),to_date(''12/06/2015'',''MM/DD/YYYY''),''Open'''
||',''Al Bines'',''300'',''500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Maintain Support Systems'',''Investigate new Virus Protection software'',to_date(''01/15/2016'',''MM/DD/YYYY''),to_date(''01/16/2016'',''MM/DD/Y'
||'YYY''),''Open'',''Pam King'',''1700'',''1500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate Desktop Application'',''Identify pilot desktop applications'',to_date(''12/10/2015'',''MM/DD/YYYY''),to_date(''12/10/2015'',''MM/DD/YYYY'
||'''),''Closed'',''Bob Nile'',''300'',''500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate Desktop Application'',''Migrate pilot applications to ACME Web Express'',to_date(''12/12/2015'',''MM/DD/YYYY''),to_date(''12/13/2015'','
||'''MM/DD/YYYY''),''Closed'',''Bob Nile'',''1250'',''1500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate Desktop Application'',''Plan migration schedule'',to_date(''12/16/2015'',''MM/DD/YYYY''),to_date(''12/16/2015'',''MM/DD/YYYY''),''Closed'','
||'''Bob Nile'',''600'',''200'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate Desktop Application'',''Migrate desktop applications'',to_date(''01/08/2016'',''MM/DD/YYYY''),to_date(''01/12/2016'',''MM/DD/YYYY''),''Ope'
||'n'',''Bob Nile'',''1000'',''8000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate Desktop Application'',''User acceptance testing'',to_date(''01/14/2016'',''MM/DD/YYYY''),to_date(''01/15/2016'',''MM/DD/YYYY''),''Open'',''B'
||'ob Nile'',''1500'',''6000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate Desktop Application'',''End-user Training'',to_date(''01/18/2016'',''MM/DD/YYYY''),to_date(''01/19/2016'',''MM/DD/YYYY''),''Open'',''John Wa'
||'tson'',''0'',''2000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate Desktop Application'',''Post-migration review'',to_date(''02/01/2016'',''MM/DD/YYYY''),to_date(''02/02/2016'',''MM/DD/YYYY''),''Pending'','''
||'Bob Nile'',''100'',''100'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Obtain Legacy Server credentials'',to_date(''01/20/2016'',''MM/DD/YYYY''),to_date(''01/20/2016'',''MM/DD/YYYY''),'''
||'Pending'',''James Cassidy'',''0'',''500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Map data usage'',to_date(''01/22/2016'',''MM/DD/YYYY''),to_date(''01/24/2016'',''MM/DD/YYYY''),''Pending'',''Bob Nile'
||''',''0'',''8000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Identify integration points'',to_date(''01/25/2016'',''MM/DD/YYYY''),to_date(''01/26/2016'',''MM/DD/YYYY''),''Pendi'
||'ng'',''Bob Nile'',''0'',''2000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Create DB Connection to new server'',to_date(''01/25/2016'',''MM/DD/YYYY''),to_date(''01/25/2016'',''MM/DD/YYYY'')'
||',''Pending'',''Scott Spencer'',''0'',''100'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Migrate table structures'',to_date(''01/19/2016'',''MM/DD/YYYY''),to_date(''01/20/2016'',''MM/DD/YYYY''),''Pending'''
||',''John Watson'',''0'',''2500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Import data'',to_date(''01/31/2016'',''MM/DD/YYYY''),to_date(''02/01/2016'',''MM/DD/YYYY''),''Pending'',''John Watson'
||''',''0'',''1000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Convert processes'',to_date(''01/31/2016'',''MM/DD/YYYY''),to_date(''02/02/2016'',''MM/DD/YYYY''),''Pending'',''Pam K'
||'ing'',''0'',''3000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Notify users'',to_date(''02/05/2016'',''MM/DD/YYYY''),to_date(''02/05/2016'',''MM/DD/YYYY''),''Pending'',''Bob Nile'','
||'''0'',''200'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Cut over to new database'',to_date(''02/06/2016'',''MM/DD/YYYY''),to_date(''02/06/2016'',''MM/DD/YYYY''),''Pending'''
||',''Bob Nile'',''0'',''1500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Migrate from Legacy Server'',''Decommission Legacy Server'',to_date(''02/20/2016'',''MM/DD/YYYY''),to_date(''02/20/2016'',''MM/DD/YYYY''),''Pendin'
||'g'',''Al Bines'',''0'',''500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Public Website'',''Determine host server'',to_date(''12/05/2015'',''MM/DD/YYYY''),to_date(''12/05/2015'',''MM/DD/YYYY''),''Closed'',''Tiger Scott'','''
||'200'',''200'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Public Website'',''Check software licenses'',to_date(''12/05/2015'',''MM/DD/YYYY''),to_date(''12/05/2015'',''MM/DD/YYYY''),''Closed'',''Tom Suess'','''
||'100'',''100'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Public Website'',''Purchase additional software licenses, if needed'',to_date(''12/06/2015'',''MM/DD/YYYY''),to_date(''12/07/2015'',''MM/DD/YYYY'
||'''),''On-Hold'',''Al Bines'',''300'',''1000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Public Website'',''Develop web pages'',to_date(''01/01/2016'',''MM/DD/YYYY''),to_date(''01/02/2016'',''MM/DD/YYYY''),''Open'',''Tiger Scott'',''0'',''20'
||'00'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Public Website'',''Plan rollout schedule'',to_date(''01/03/2016'',''MM/DD/YYYY''),to_date(''01/03/2016'',''MM/DD/YYYY''),''Open'',''Tom Suess'',''0'','''
||'100'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Software Project Tracking'',''Conduct project kickoff meeting'',to_date(''12/28/2015'',''MM/DD/YYYY''),to_date(''12/28/2015'',''MM/DD/YYYY''),''Cl'
||'osed'',''Pam King'',''100'',''100'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Software Project Tracking'',''Customize Software Projects software'',to_date(''12/31/2015'',''MM/DD/YYYY''),to_date(''01/01/2016'',''MM/DD/YYYY'''
||'),''Open'',''Tom Suess'',''600'',''1000'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Software Project Tracking'',''Enter base data (Projects, Milestones, etc.)'',to_date(''01/02/2016'',''MM/DD/YYYY''),to_date(''01/02/2016'',''MM/'
||'DD/YYYY''),''Open'',''Tom Suess'',''200'',''200'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Software Project Tracking'',''Load current tasks and enhancements'',to_date(''01/04/2016'',''MM/DD/YYYY''),to_date(''01/04/2016'',''MM/DD/YYYY'')'
||',''Open'',''Tom Suess'',''400'',''500'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Training for ACME Web Express'',''Create training workspace'',to_date(''12/17/2015'',''MM/DD/YYYY''),to_date(''12/18/2015'',''MM/DD/YYYY''),''Clos'
||'ed'',''James Cassidy'',''500'',''700'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Training for ACME Web Express'',''Publish links to self-study courses'',to_date(''12/19/2015'',''MM/DD/YYYY''),to_date(''12/19/2015'',''MM/DD/YY'
||'YY''),''Closed'',''John Watson'',''100'',''100'');',
'  insert into eba_demo_cal_projects (project,task_name,start_date,end_date,status,assigned_to,cost,budget) values (''Training for ACME Web Express'',''Publish development standards'',to_date(''12/19/2015'',''MM/DD/YYYY''),to_date(''12/20/2015'',''MM/DD/YYYY''),'''
||'On-Hold'',''John Watson'',''1000'',''2000'');',
'  ',
'  update eba_demo_cal_projects',
'  set start_date = start_date + (SYSDATE - TO_DATE(''01012016'',''MMDDYYYY''))',
'  ,   end_date = end_date + (SYSDATE - TO_DATE(''01012016'',''MMDDYYYY''));',
'  ',
'  delete from eba_demo_cal_sessions;',
'',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Keynote'',                             ''GENERAL'',   ''Irene Jones'',   to_date(''20160101100000'',''YYYYMMDDHH24MISS''),to_date(''20160101110000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Current Product Overview'',            ''GENERAL'',   ''Scott Spencer'', to_date(''20160101110000'',''YYYYMMDDHH24MISS''),to_date(''20160101120000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Lunch'',                               ''BREAK'',     null,            to_date(''20160101120000'',''YYYYMMDDHH24MISS''),to_date(''20160101133000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''New Features Overview'',               ''GENERAL'',   ''John  Watson'',  to_date(''20160101133000'',''YYYYMMDDHH24MISS''),to_date(''20160101143000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Planned / Upcoming Features'',         ''GENERAL'',   ''Scott Spencer'', to_date(''20160101143000'',''YYYYMMDDHH24MISS''),to_date(''20160101153000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Coffe Break'',                         ''BREAK'',     null,            to_date(''20160101153000'',''YYYYMMDDHH24MISS''),to_date(''20160101154500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Ask the Experts'',                     ''GENERAL'',   ''John Watson'',   to_date(''20160101154500'',''YYYYMMDDHH24MISS''),to_date(''20160101170000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Open Mic Night'',                      ''GENERAL'',   null,            to_date(''20160101190000'',''YYYYMMDDHH24MISS''),to_date(''20160101214500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'                 ',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Networking Breakfast'',                ''BREAK'',     null,            to_date(''20160102073000'',''YYYYMMDDHH24MISS''),to_date(''20160102084500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Technical Overview'',                  ''TECHNICAL'', ''Tom Suess'',     to_date(''20160102084500'',''YYYYMMDDHH24MISS''),to_date(''20160102094500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Common Use Cases'',                    ''BUSINESS'',  ''Russ Saunders'', to_date(''20160102084500'',''YYYYMMDDHH24MISS''),to_date(''20160102094500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Building your first Web application'', ''HANDS_ON'',  ''Pam King'',      to_date(''20160102090000'',''YYYYMMDDHH24MISS''),to_date(''20160102110000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Installation Tips and Tricks'',        ''TECHNICAL'', ''Hank Davis'',    to_date(''20160102094500'',''YYYYMMDDHH24MISS''),to_date(''20160102104500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Success Stories'',                     ''BUSINESS'',  ''Russ Saunders'', to_date(''20160102094500'',''YYYYMMDDHH24MISS''),to_date(''20160102104500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Coffee Break'',                        ''BREAK'',     null,            to_date(''20160102104500'',''YYYYMMDDHH24MISS''),to_date(''20160102110000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Expanding with Plug-Ins'',             ''TECHNICAL'', ''Bob Nile'',      to_date(''20160102110000'',''YYYYMMDDHH24MISS''),to_date(''20160102120000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Differentiated Data Reporting'',       ''BUSINESS'',  ''Hank Davis'',    to_date(''20160102110000'',''YYYYMMDDHH24MISS''),to_date(''20160102120000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Lunch'',                               ''BREAK'',     null,            to_date(''20160102120000'',''YYYYMMDDHH24MISS''),to_date(''20160102133000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Integrating External Frameworks'',     ''TECHNICAL'', ''Bob Nile'',      to_date(''20160102133000'',''YYYYMMDDHH24MISS''),to_date(''20160102144500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''From Zero to Hero for the Noob'',      ''TECHNICAL'', ''Myra Sutcliff'', to_date(''20160102133000'',''YYYYMMDDHH24MISS''),to_date(''20160102144500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Mobilizng Apps'',                      ''HANDS_ON'',  ''Pam King'',      to_date(''20160102133000'',''YYYYMMDDHH24MISS''),to_date(''20160102144500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Coffee Break'',                        ''BREAK'',     null,            to_date(''20160102144500'',''YYYYMMDDHH24MISS''),to_date(''20160102150000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Client-Side Interactivity'',           ''TECHNICAL'', ''Al Bines'',      to_date(''20160102150000'',''YYYYMMDDHH24MISS''),to_date(''20160102160000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Showing ROI on your investment'',      ''BUSINESS'',  ''Hank Davis'',    to_date(''20160102150000'',''YYYYMMDDHH24MISS''),to_date(''20160102160000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Server-Side Logic Utilization'',       ''TECHNICAL'', ''Myra Sutcliff'', to_date(''20160102160000'',''YYYYMMDDHH24MISS''),to_date(''20160102170000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Upselling to C-Level Executives'',     ''BUSINESS'',  ''Irene Jones'',   to_date(''20160102160000'',''YYYYMMDDHH24MISS''),to_date(''20160102170000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Appreciation Event'',                  ''BREAK'',     null,            to_date(''20160102190000'',''YYYYMMDDHH24MISS''),to_date(''20160102223000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  ',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Networking Breakfast'',                ''BREAK'',     null,            to_date(''20160103073000'',''YYYYMMDDHH24MISS''),to_date(''20160103084500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Upgrading your Apps'',                 ''TECHNICAL'', ''James Cassidy'', to_date(''20160103084500'',''YYYYMMDDHH24MISS''),to_date(''20160103094500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Redevloping Legacy Apps'',             ''BUSINESS'',  ''John Watson'',   to_date(''20160103084500'',''YYYYMMDDHH24MISS''),to_date(''20160103094500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Building an Advanced App'',            ''HANDS_ON'',  ''Pam King'',      to_date(''20160103090000'',''YYYYMMDDHH24MISS''),to_date(''20160103110000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Application Globalization'',           ''TECHNICAL'', ''Tom Suess'',     to_date(''20160103094500'',''YYYYMMDDHH24MISS''),to_date(''20160103104500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''The importance of UX and UI'',         ''BUSINESS'',  ''Russ Saunders'', to_date(''20160103094500'',''YYYYMMDDHH24MISS''),to_date(''20160103104500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Coffee Break'',                        ''BREAK'',     null,            to_date(''20160103104500'',''YYYYMMDDHH24MISS''),to_date(''20160103'))
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.0'
,p_default_workspace_id=>5828575066947664
,p_default_application_id=>100
,p_default_id_offset=>7043616593336102
,p_default_owner=>'INTERNALA'
);
wwv_flow_imp_shared.append_to_install_script(
 p_id=>wwv_flow_imp.id(2576505065780806567)
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'110000'',''YYYYMMDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Enhancing Usability'',                 ''TECHNICAL'', ''James Cassidy'', to_date(''20160103110000'',''YYYYMMDDHH24MISS''),to_date(''20160103120000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Why is Accessibility Important?'',     ''BUSINESS'',  ''Scott Spencer'', to_date(''20160103110000'',''YYYYMMDDHH24MISS''),to_date(''20160103120000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Lunch'',                               ''BREAK'',     null,            to_date(''20160103120000'',''YYYYMMDDHH24MISS''),to_date(''20160103133000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Vendor Presnetations'',                ''GENERAL'',   null,            to_date(''20160103133000'',''YYYYMMDDHH24MISS''),to_date(''20160103144500'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Coffee Break'',                        ''BREAK'',     null,            to_date(''20160103144500'',''YYYYMMDDHH24MISS''),to_date(''20160103150000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Testing Applications'',                ''TECHNICAL'', ''Al Bines'',      to_date(''20160103150000'',''YYYYMMDDHH24MISS''),to_date(''20160103160000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''The Power of Citizen Developers'',     ''BUSINESS'',  ''Myra Sutcliff'', to_date(''20160103150000'',''YYYYMMDDHH24MISS''),to_date(''20160103160000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Upgrading to the Latest Version'',     ''HANDS_ON'',  ''Pam King'',      to_date(''20160103150000'',''YYYYMMDDHH24MISS''),to_date(''20160103160000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Deploying Applications'',              ''TECHNICAL'', ''Hank Davis'',    to_date(''20160103160000'',''YYYYMMDDHH24MISS''),to_date(''20160103170000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Managing Agile Development Projects'', ''BUSINESS'',  ''Bob Nile'',      to_date(''20160103160000'',''YYYYMMDDHH24MISS''),to_date(''20160103170000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  insert into eba_demo_cal_sessions (title, session_type, speaker, start_date, end_date, status) values (''Wowing End Users Easily'',             ''HANDS_ON'',  ''Pam King'',      to_date(''20160103160000'',''YYYYMMDDHH24MISS''),to_date(''20160103170000'',''YYYYM'
||'MDDHH24MISS''),''ACTIVE'' );',
'  ',
'  update eba_demo_cal_sessions',
'  set start_date = start_date + (trunc(SYSDATE) - TO_DATE(''01012016'',''MMDDYYYY''))',
'  ,   end_date = end_date + (trunc(SYSDATE) - TO_DATE(''01012016'',''MMDDYYYY''));',
'  ',
'  delete from eba_demo_cal_mysessions;',
'',
'end EBA_DEMO_CAL_DATA;',
'/',
'show errors',
'',
'begin',
'  EBA_DEMO_CAL_DATA;',
'  commit;',
'end;',
'/',
''))
);
null;
wwv_flow_imp.component_end;
end;
/
