--liquibase formatted sql
--changeset Liquibase Pro User:1-package runWith:sqlplus
prompt --application/deployment/install/install_create_tables
begin
--   Manifest
--     INSTALL: INSTALL-create tables
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
 p_id=>wwv_flow_imp.id(2576433680887801553)
,p_install_id=>wwv_flow_imp.id(2572512291634129806)
,p_name=>'create tables'
,p_sequence=>20
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE TABLE EBA_DEMO_CAL_PROJECTS',
'   (',
'    "ID" NUMBER, ',
'    row_version_number number,',
'    "PROJECT" VARCHAR2(30) not null, ',
'    "TASK_NAME" VARCHAR2(255) not null, ',
'    "START_DATE" DATE not null, ',
'    "END_DATE" DATE not null, ',
'    "STATUS" VARCHAR2(30) not null, ',
'    "ASSIGNED_TO" VARCHAR2(30), ',
'    "COST" NUMBER, ',
'    "BUDGET" NUMBER, ',
'     CONSTRAINT EBA_DEMO_CAL_PROJECTS_PK PRIMARY KEY ("ID") ENABLE',
'   ) ;',
'',
'CREATE OR REPLACE TRIGGER  BIU_EBA_DEMO_CAL_PROJECTS',
'   before insert or update on EBA_DEMO_CAL_PROJECTS',
'   for each row',
'begin',
'   if :new."ID" is null then',
'     select to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'') into :new.id from dual;',
'   end if;',
'   if inserting then',
'       :new.row_version_number := 1;',
'   elsif updating then',
'       :new.row_version_number := nvl(:old.row_version_number,1) + 1;',
'   end if;',
'   if :new.start_date > :new.end_date then',
'       RAISE_APPLICATION_ERROR(-20001, ''Error start date must be before end date'');',
'   end if;',
'end;',
'/',
'ALTER TRIGGER BIU_EBA_DEMO_CAL_PROJECTS ENABLE',
'/',
'',
'',
'CREATE TABLE EBA_DEMO_CAL_SESSIONS',
'   (',
'    "ID"                 NUMBER, ',
'    "ROW_VERSION_NUMBER" NUMBER,',
'    "TITLE"              VARCHAR2(50)  not null, ',
'    "SESSION_TYPE"       VARCHAR2(30)  not null,',
'    "SPEAKER"            VARCHAR2(255),',
'    "START_DATE"         DATE          not null, ',
'    "END_DATE"           DATE          not null, ',
'    "STATUS"             VARCHAR2(30)  not null, ',
'     CONSTRAINT EBA_DEMO_CAL_EVENTS_PK PRIMARY KEY ("ID") ENABLE',
'   ) ;',
'',
'CREATE OR REPLACE TRIGGER  BIU_EBA_DEMO_CAL_SESSIONS',
'   before insert or update on EBA_DEMO_CAL_SESSIONS',
'   for each row',
'begin',
'   if :new."ID" is null then',
'     select to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'') into :new.id from dual;',
'   end if;',
'   if inserting then',
'       :new.row_version_number := 1;',
'   elsif updating then',
'       :new.row_version_number := nvl(:old.row_version_number,1) + 1;',
'   end if;',
'   if :new.start_date > :new.end_date then',
'       RAISE_APPLICATION_ERROR(-20001, ''Error start date must be before end date'');',
'   end if;',
'end;',
'/',
'',
'',
'CREATE TABLE EBA_DEMO_CAL_MYSESSIONS',
'   (',
'    "ID"                 NUMBER, ',
'    "ROW_VERSION_NUMBER" NUMBER,',
'    "TITLE"              VARCHAR2(50)  not null, ',
'    "SESSION_TYPE"       VARCHAR2(30)  not null,',
'    "SPEAKER"            VARCHAR2(255),',
'    "START_DATE"         DATE          not null, ',
'    "END_DATE"           DATE          not null, ',
'    "STATUS"             VARCHAR2(30)  not null, ',
'     CONSTRAINT EBA_DEMO_CAL_MYEVENTS_PK PRIMARY KEY ("ID") ENABLE',
'   ) ;',
'',
'',
'',
''))
);
wwv_flow_imp.component_end;
end;
/
