

    create table ABILITY (
        ID integer not null auto_increment,
        AUDITFLAG varchar(1) not null,
        CREATEDBY integer not null,
        CREATEDTIMESTAMP datetime not null,
        UPDATEDBY integer,
        UPDATEDTIMESTAMP datetime,
        RANK integer not null,
        EMPLOYEE_ID integer not null,
        SPECIALTY_ID integer not null,
        primary key (ID)
    );

    create table ADDRESS (
        ID integer not null auto_increment,
        AUDITFLAG varchar(1) not null,
        CREATEDBY integer not null,
        CREATEDTIMESTAMP datetime not null,
        UPDATEDBY integer,
        UPDATEDTIMESTAMP datetime,
        DISTRICT varchar(255),
        HOUSE_NO varchar(255),
        ROAD varchar(255),
        SUB_DISTRICT varchar(255),
        ZIPCODE integer,
        ADDRESSTYPE_ID integer,
        APPLICANT_ID integer,
        PROVINCE_ID integer,
        primary key (ID),
        unique (HOUSE_NO, DISTRICT)
    );

    create table ALLOWANCES (
        ID integer not null auto_increment,
        AUDITFLAG varchar(1) not null,
        CREATEDBY integer not null,
        CREATEDTIMESTAMP datetime not null,
        UPDATEDBY integer,
        UPDATEDTIMESTAMP datetime,
        AMOUNT double precision not null,
        EMPLOYEE_ID integer not null,
        MAS_ALLOWANCES_ID integer not null,
        primary key (ID)
    );

    create table APPLICANT (
        APPLICANT_ID integer not null auto_increment,
        AUDITFLAG varchar(1) not null,
        CREATEDBY integer not null,
        CREATEDTIMESTAMP datetime not null,
        UPDATEDBY integer,
        UPDATEDTIMESTAMP datetime,
        AGE integer,
        APPLICANT_STATUS varchar(255),
        APPLY_DATE datetime,
        ATTITUDE_HOME varchar(255),
        ATTITUDE_OFFICE varchar(255),
        BIRTHDATE datetime,
        BRANCH_SERVICE varchar(255),
        CARD_EXPIRY_DATE datetime,
        CARD_ID varchar(255),
        CARD_ISSUED_OFFICE varchar(255),
        APPLICANT_CODE varchar(255),
        DATE_TO_BE_DRAFTED datetime,
        EMAIL varchar(255),
        EMERGENCY_ADDRESS varchar(255),
        EMERGENCY_NAME varchar(255),
        EMERGENCY_TEL varchar(255),
        EMPLOYED_NAME varchar(255),
        EMPLOYED_POSITION varchar(255),
        EMPLOYED_RELATION varchar(255),
        EXPECTED_SALARY varchar(255),
        FIRSTNAME_EN varchar(255),
        FIRSTNAME_TH varchar(255),
        FRIEND_DESCRIPTION varchar(255),
        HEIGHT integer,
        IMAGE varchar(255),
        ISSUE_OFFICE_MARRIAGE varchar(255),
        LASTNAME_EN varchar(255),
        LASTNAME_TH varchar(255),
        MAGAZINE_DESCRIPTION varchar(255),
        MARRIAGE_ADDRESS varchar(255),
        MARRIAGE_CERTIFICATE_NO varchar(255),
        MILITARY_FROM_YEAR varchar(255),
        MILITARY_PLACE varchar(255),
        MILITARY_REASON varchar(255),
        MILITARY_SERVICE_NO varchar(255),
        MILITARY_STATUS varchar(255),
        MILITARY_TO_YEAR varchar(255),
        NATIONALITY varchar(255),
        NEWSPAPER_DESCRIPTION varchar(255),
        NICKNAME_EN varchar(255),
        NICKNAME_TH varchar(255),
        NOTICE_FRIEND varchar(255),
        NOTICE_MAGAZINE varchar(255),
        NOTICE_NEWSPAPER varchar(255),
        NOTICE_OTHER varchar(255),
        NOTICE_WEBSITE varchar(255),
        NOW_EMPLOYED varchar(255),
        NUMBER_OF_CHILDREN varchar(255),
        OCCUPATION_MARRIAGE varchar(255),
        OTHER_DESCRIPTION varchar(255),
        PLACE_BIRTH varchar(255),
        PREVIOUS_EMPLOYERS varchar(255),
        PREVIOUS_EMPLOYERS_REASON varchar(255),
        RELIGION varchar(255),
        RESUME varchar(255),
        SCORE varchar(255),
        SEX varchar(255),
        SPOUSE_NAME varchar(255),
        TECH_SCORE varchar(255),
        TEL varchar(255),
        TRACKING_STATUS varchar(255),
        TRANSCRIPT varchar(255),
        WEBSITE_DESCRIPTION varchar(255),
        WEIGHT integer,
        MASJOBLEVEL_ID integer,
        MASTECHNOLOGY_ID integer,
        primary key (APPLICANT_ID)
    );

    create table CARD (
        ID integer not null auto_increment,
        CARDNO varchar(255) not null,
        END_DATE datetime,
        REMARK varchar(255),
        START_DATE datetime not null,
        STATUS varchar(255) not null,
        EMPLOYEE_ID integer not null,
        primary key (ID)
    );

    create table CERTIFICATION (
        ID integer not null auto_increment,
        AUDITFLAG varchar(1) not null,
        CREATEDBY integer not null,
        CREATEDTIMESTAMP datetime not null,
        UPDATEDBY integer,
        UPDATEDTIMESTAMP datetime,
        CERTIFICATION_FORM varchar(255),
        DESCRICPION varchar(255),
        NAME varchar(255),
        YEAR varchar(255),
        APPLICANT_ID integer,
        primary key (ID)
    );

    create table EDUCATION (
        ID integer not null auto_increment,
        AUDITFLAG varchar(1) not null,
        CREATEDBY integer not null,
        CREATEDTIMESTAMP datetime not null,
        UPDATEDBY integer,
        UPDATEDTIMESTAMP datetime,
        CERTIFICATION varchar(255),
        FACULTY varchar(255),
        GPA double precision,
        GRADUATED_DATE datetime,
        MAJOR varchar(255),
        START_DATE datetime,
        UNIVERSITY varchar(255),
        APPLICANT_ID integer,
        DEGREETYPE_ID integer not null,
        primary key (ID)
    );

    create table EMPLOYEE (
        ID integer not null auto_increment,
        AUDITFLAG varchar(1) not null,
        CREATEDBY integer not null,
        CREATEDTIMESTAMP datetime not null,
        UPDATEDBY integer,
        UPDATEDTIMESTAMP datetime,
        ADDRESS varchar(255),
        AGE integer,
        BRANCH_OF_SERVICE varchar(255),
        CONGENITAL_DISEASE varchar(255),
        DATEOFBIRTH datetime not null,
        DATE_TO_BE_DRAFTED datetime,
        DESCRIPTION_FRIEND varchar(255),
        DESCRIPTION_MAGAZINE varchar(255),
        DESCRIPTION_NEWSPAPER varchar(255),
        DESCRIPTION_OTHER varchar(255),
        DESCRIPTION_WEBSITE varchar(255),
        DESCRIPTION_YES varchar(255),
        EMAIL varchar(255) not null,
        EMERGENCY_CONTACT varchar(255) not null,
        EMERGENCY_CONTACT_ADDRESS varchar(255),
        EMERGENCY_CONTACT_PHONE_NUMBER varchar(255) not null,
        EMPLOYEE_CODE varchar(255) not null unique,
        EXPIRY_DATE datetime,
        FROM_YEAR datetime,
        HEIGHT integer,
        HOSPITAL varchar(255),
        ID_CARD varchar(255) not null,
        IMAGE varchar(255),
        ISMANAGER integer,
        ISSUED_OFFICE varchar(255),
        ISSUED_OFFICE2 varchar(255),
        KNOW_AUG_FRIEND varchar(255),
        KNOW_AUG_MAGAZINE varchar(255),
        KNOW_AUG_NEWSPAPER varchar(255),
        KNOW_AUG_OTHER varchar(255),
        KNOW_AUG_WEBSITE varchar(255),
        KNOW_EMPLOYED varchar(255),
        MARITAL_STATUS varchar(255),
        MARRIAGE_CERTIFICATE_NO varchar(255),
        MILITARY_SERVICE varchar(255),
        NAME_ENG varchar(255) not null,
        NAME_THAI varchar(255) not null,
        NICKNAME_ENG varchar(255),
        NICKNAME_THAI varchar(255),
        NUMBER_OF_CHILDREN varchar(255),
        OCCUPATION varchar(255),
        PLACEOFBIRTH varchar(255),
        PREVIOUS_EMPLOYER varchar(255),
        PREVIOUSEMP_REASONS_NO varchar(255),
        REASONS_NO varchar(255),
        RELATIONSHIP_WITH_EMERGENCY_CONTACT varchar(255),
        RELIGION varchar(255),
        SERVICE_NO varchar(255),
        SEX varchar(255),
        SPOUSE_NAME varchar(255),
        STATUSEMP varchar(255) not null,
        SURNAME_ENG varchar(255),
        SURNAME_THAI varchar(255),
        TEL_FAX varchar(255),
        TEL_HOME varchar(255) not null,
        TEL_MOBILE varchar(255) not null,
        TO_YEAR datetime,
        WEIGTH integer,
        AIM_EMP_ID integer,
        APPLICANT_ID integer not null,
        MAS_CORE_SKILL_ID integer,
        DIVISION_ID integer not null,
        EMPLOYMENT_ID integer,
        JOBLEVEL_ID integer not null,
        LOCATION_ID integer,
        STAFFTYPE_ID integer,
        OFFICIAL_ID integer,
        TECHNOLOGY_ID integer,
        primary key (ID),
        unique (ID)
    );

    create table EXPERIENCE (
        ID integer not null auto_increment,
        AUDITFLAG varchar(1) not null,
        CREATEDBY integer not null,
        CREATEDTIMESTAMP datetime not null,
        UPDATEDBY integer,
        UPDATEDTIMESTAMP datetime,
        ADDRESS varchar(255),
        COMPANY_NAME varchar(255),
        DATE_FROM datetime,
        DATE_TO datetime,
        POSITION varchar(255),
        REASON varchar(255),
        REFERENCE varchar(255),
        RESPONSIBILITY varchar(255),
        SALARY bigint,
        TYPE_OF_BUSINESS varchar(255),
        APPLICANT_ID integer,
        primary key (ID)
    );

    create table FAMILY (
        ID integer not null auto_increment,
        AUDITFLAG varchar(1) not null,
        CREATEDBY integer not null,
        CREATEDTIMESTAMP datetime not null,
        UPDATEDBY integer,
        UPDATEDTIMESTAMP datetime,
        ADDRESS varchar(255) not null,
        AGE integer not null,
        NAME varchar(255) not null,
        GENDER varchar(10) not null,
        TELEPHONE varchar(12) not null,
        OCCUPATION varchar(255),
        POSITION varchar(255),
        APPLICANT_ID integer not null,
        MASRELATION_ID integer not null,
        primary key (ID)
    );

    create table HEALTH (
        ID integer not null auto_increment,
        AUDITFLAG varchar(1) not null,
        CREATEDBY integer not null,
        CREATEDTIMESTAMP datetime not null,
        UPDATEDBY integer,
        UPDATEDTIMESTAMP datetime,
        CONGENITAL_DISEASE varchar(255) not null,
        CONGENITAL_DISEASE_SPECIFIED1 varchar(255),
        CONGENITAL_DISEASE_SPECIFIED2 varchar(255),
        CONGENITAL_DISEASE_SPECIFIED3 varchar(255),
        GENETIC_DISEASE varchar(255) not null,
        GENETIC_DISEASE_SPECIFIED1 varchar(255),
        GENETIC_DISEASE_SPECIFIED2 varchar(255),
        GENETIC_DISEASE_SPECIFIED3 varchar(255),
        INTOLERANCE varchar(255) not null,
        INTOLERANCE_EXPLAIN varchar(255),
        TAKE_MEDICINE varchar(255) not null,
        TAKE_MEDICINE_EXPLAIN varchar(255),
        EMPLOYEE_ID integer not null,
        primary key (ID)
    );

    create table HISTORY (
        ID integer not null auto_increment,
        AUDITFLAG varchar(1) not null,
        CREATEDBY integer not null,
        CREATEDTIMESTAMP datetime not null,
        UPDATEDBY integer,
        UPDATEDTIMESTAMP datetime,
        ADJUSTMENT_TIME integer,
        DATE_OF_ADJUSTMENT datetime not null,
        OLD_SALARY double precision,
        POSITION varchar(255) not null,
        REASON_OF_ADJUSTMENT varchar(255),
        SALARY double precision not null,
        EMPLOYEE_ID integer not null,
        primary key (ID)
    );

    create table LANGUAGE (
        ID integer not null auto_increment,
        AUDITFLAG varchar(1) not null,
        CREATEDBY integer not null,
        CREATEDTIMESTAMP datetime not null,
        UPDATEDBY integer,
        UPDATEDTIMESTAMP datetime,
        NAMELANGUAGE varchar(255),
        READING varchar(255),
        SPEAKING varchar(255),
        UNDERSTANDING varchar(255),
        WRITING varchar(255),
        APPLICANT_ID integer not null,
        primary key (ID)
    );

    create table LEAVES (
        ID integer not null auto_increment,
        AUDITFLAG varchar(1) not null,
        CREATEDBY integer not null,
        CREATEDTIMESTAMP datetime not null,
        UPDATEDBY integer,
        UPDATEDTIMESTAMP datetime,
        AIM varchar(255) not null,
        END_TIME datetime,
        ENDTIMESTRING varchar(255),
        REASON varchar(255),
        START_TIME datetime,
        STARTTIMESTRING varchar(255),
        SUMTIME integer,
        EMPLOYEE_ID integer not null,
        LEAVETYPE_ID integer not null,
        primary key (ID)
    );

    create table LOGIN (
        ID integer not null auto_increment,
        AUDITFLAG varchar(1) not null,
        CREATEDBY integer not null,
        CREATEDTIMESTAMP datetime not null,
        UPDATEDBY integer,
        UPDATEDTIMESTAMP datetime,
        PASSWORD varchar(13) not null,
        USERNAME varchar(255) not null,
        EMPLOYEE_ID integer not null,
        MAS_LOCATION_ID integer,
        primary key (ID),
        unique (ID)
    );

    create table LOGINROLE (
        LOGIN_ID integer not null,
        MASROLE_ID integer not null,
        primary key (LOGIN_ID, MASROLE_ID)
    );

    create table MAS_ADDRESSTYPE (
        ID integer not null auto_increment,
        AUDITFLAG varchar(1) not null,
        CREATEDBY integer not null,
        CREATEDTIMESTAMP datetime not null,
        UPDATEDBY integer,
        UPDATEDTIMESTAMP datetime,
        CODE varchar(255) not null,
        ISACTIVE bit not null,
        ADDRESSTYPENAME varchar(255) not null,
        primary key (ID)
    );

    create table MAS_ALLOWANCES (
        ALLO_ID integer not null auto_increment,
        AUDITFLAG varchar(1) not null,
        CREATEDBY integer not null,
        CREATEDTIMESTAMP datetime not null,
        UPDATEDBY integer,
        UPDATEDTIMESTAMP datetime,
        ALLOWANCES_TYPE varchar(255) not null,
        AMOUNT_ALLOWANCES double precision,
        CODE varchar(255) not null,
        ISACTIVE bit not null,
        primary key (ALLO_ID)
    );

    create table MAS_CORESKILL (
        ID integer not null auto_increment,
        AUDITFLAG varchar(1) not null,
        CREATEDBY integer not null,
        CREATEDTIMESTAMP datetime not null,
        UPDATEDBY integer,
        UPDATEDTIMESTAMP datetime,
        CODE varchar(255),
        ISACTIVE bit,
        NAME varchar(255) not null,
        APPLICANT_ID integer,
        primary key (ID)
    );

    create table MAS_DEGREETYPE (
        DEGREETYPE_ID integer not null auto_increment,
        AUDITFLAG varchar(1) not null,
        CREATEDBY integer not null,
        CREATEDTIMESTAMP datetime not null,
        UPDATEDBY integer,
        UPDATEDTIMESTAMP datetime,
        CODE varchar(255) not null,
        ISACTIVE bit not null,
        NAME varchar(200) not null,
        primary key (DEGREETYPE_ID)
    );

    create table MAS_DIVISION (
        ID integer not null auto_increment,
        AUDITFLAG varchar(1) not null,
        CREATEDBY integer not null,
        CREATEDTIMESTAMP datetime not null,
        UPDATEDBY integer,
        UPDATEDTIMESTAMP datetime,
        CODE varchar(255) not null,
        ISACTIVE bit not null,
        NAME varchar(255) not null,
        primary key (ID)
    );

    create table MAS_EMPLOYMENT (
        ID integer not null auto_increment,
        AUDITFLAG varchar(1) not null,
        CREATEDBY integer not null,
        CREATEDTIMESTAMP datetime not null,
        UPDATEDBY integer,
        UPDATEDTIMESTAMP datetime,
        CODE varchar(255) not null,
        ISACTIVE bit not null,
        NAME varchar(200) not null,
        primary key (ID)
    );

    create table MAS_JOBLEVEL (
        ID integer not null auto_increment,
        AUDITFLAG varchar(1) not null,
        CREATEDBY integer not null,
        CREATEDTIMESTAMP datetime not null,
        UPDATEDBY integer,
        UPDATEDTIMESTAMP datetime,
        CODE varchar(255) not null,
        ISACTIVE bit not null,
        NAME varchar(255) not null,
        primary key (ID)
    );

    create table MAS_LEAVETYPE (
        LEAVETYPE_ID integer not null auto_increment,
        AUDITFLAG varchar(1) not null,
        CREATEDBY integer not null,
        CREATEDTIMESTAMP datetime not null,
        UPDATEDBY integer,
        UPDATEDTIMESTAMP datetime,
        CODE varchar(255) not null,
        ISACTIVE bit not null,
        NAME varchar(255) not null,
        primary key (LEAVETYPE_ID)
    );

    create table MAS_LOCATION (
        ID integer not null auto_increment,
        AUDITFLAG varchar(1) not null,
        CREATEDBY integer not null,
        CREATEDTIMESTAMP datetime not null,
        UPDATEDBY integer,
        UPDATEDTIMESTAMP datetime,
        CODE varchar(255) not null,
        ISACTIVE bit not null,
        NAME varchar(200) not null,
        primary key (ID)
    );

    create table MAS_PROVINCE (
        ID integer not null auto_increment,
        AUDITFLAG varchar(1) not null,
        CREATEDBY integer not null,
        CREATEDTIMESTAMP datetime not null,
        UPDATEDBY integer,
        UPDATEDTIMESTAMP datetime,
        CODE varchar(255) not null,
        ISACTIVE bit not null,
        PROVINCENAME varchar(255) not null,
        primary key (ID)
    );

    create table MAS_RELATIONTYPE (
        ID integer not null auto_increment,
        AUDITFLAG varchar(1) not null,
        CREATEDBY integer not null,
        CREATEDTIMESTAMP datetime not null,
        UPDATEDBY integer,
        UPDATEDTIMESTAMP datetime,
        CODE varchar(10) not null,
        ISACTIVE bit not null,
        RELATIONTYPE varchar(255) not null,
        primary key (ID)
    );

    create table MAS_ROLE (
        ID integer not null auto_increment,
        AUDITFLAG varchar(1) not null,
        CREATEDBY integer not null,
        CREATEDTIMESTAMP datetime not null,
        UPDATEDBY integer,
        UPDATEDTIMESTAMP datetime,
        ISACTIVE bit not null,
        TYPE varchar(255) not null,
        primary key (ID)
    );

    create table MAS_SPECIALTY (
        SPEC_ID integer not null auto_increment,
        AUDITFLAG varchar(1) not null,
        CREATEDBY integer not null,
        CREATEDTIMESTAMP datetime not null,
        UPDATEDBY integer,
        UPDATEDTIMESTAMP datetime,
        CODE varchar(255) not null,
        ISACTIVE bit,
        NAME varchar(255) not null,
        primary key (SPEC_ID)
    );

    create table MAS_STAFFTYPE (
        ID integer not null auto_increment,
        AUDITFLAG varchar(1) not null,
        CREATEDBY integer not null,
        CREATEDTIMESTAMP datetime not null,
        UPDATEDBY integer,
        UPDATEDTIMESTAMP datetime,
        CODE varchar(255),
        ISACTIVE bit not null,
        STAFFTYPENAME varchar(255) not null,
        primary key (ID)
    );

    create table MAS_TECHNOLOGY (
        ID integer not null auto_increment,
        AUDITFLAG varchar(1) not null,
        CREATEDBY integer not null,
        CREATEDTIMESTAMP datetime not null,
        UPDATEDBY integer,
        UPDATEDTIMESTAMP datetime,
        CODE varchar(255) not null,
        ISACTIVE bit not null,
        NAME varchar(255) not null,
        primary key (ID)
    );

    create table OFFICIAL (
        ID integer not null auto_increment,
        AUDITFLAG varchar(1) not null,
        CREATEDBY integer not null,
        CREATEDTIMESTAMP datetime not null,
        UPDATEDBY integer,
        UPDATEDTIMESTAMP datetime,
        END_WORK_DATE datetime,
        OFFICIAL_DATE datetime,
        POSITION_APPLIED_FOR varchar(255),
        PROBATION_DATE datetime,
        SALARY_EXPECTED varchar(255),
        START_WORK_DATE datetime,
        primary key (ID),
        unique (ID)
    );

    create table PROBATION (
        ID integer not null auto_increment,
        AUDITFLAG varchar(1) not null,
        CREATEDBY integer not null,
        CREATEDTIMESTAMP datetime not null,
        UPDATEDBY integer,
        UPDATEDTIMESTAMP datetime,
        DATE_FROM datetime not null,
        DATE_TO datetime not null,
        REASON varchar(255),
        STATUS varchar(255) not null,
        EMPLOYEE_ID integer not null,
        primary key (ID)
    );

    create table PUNISH (
        ID integer not null auto_increment,
        DATEPUNISH datetime not null,
        DESCRIPTION varchar(255) not null,
        PENALTY varchar(255) not null,
        EMPLOYEE_ID integer,
        primary key (ID)
    );

    create table REFERENCE (
        ID integer not null auto_increment,
        AUDITFLAG varchar(1) not null,
        CREATEDBY integer not null,
        CREATEDTIMESTAMP datetime not null,
        UPDATEDBY integer,
        UPDATEDTIMESTAMP datetime,
        ADDRESS varchar(255),
        NAME varchar(255) not null,
        OCCUPATION varchar(255) not null,
        TELEPHONE varchar(255) not null,
        APPLICANT_ID integer not null,
        primary key (ID)
    );

    create table REWARD (
        ID integer not null auto_increment,
        AUDITFLAG varchar(1) not null,
        CREATEDBY integer not null,
        CREATEDTIMESTAMP datetime not null,
        UPDATEDBY integer,
        UPDATEDTIMESTAMP datetime,
        ISACTIVE bit,
        REASON varchar(255),
        TYPE_REWARD varchar(255) not null,
        YEAR varchar(255) not null,
        EMPLOYEE_ID integer not null,
        primary key (ID)
    );

    create table SITE (
        ID integer not null auto_increment,
        AUDITFLAG varchar(1) not null,
        CREATEDBY integer not null,
        CREATEDTIMESTAMP datetime not null,
        UPDATEDBY integer,
        UPDATEDTIMESTAMP datetime,
        ENDDATE datetime not null,
        PROJECTNAME varchar(255) not null,
        PROJECTOWNER varchar(255) not null,
        PROJECTOWNERCONTACT varchar(255) not null,
        STARTDATE datetime not null,
        EMPLOYEE_ID integer not null,
        primary key (ID)
    );

    
    create index FKE33D410A4FFE234A
     on ABILITY (SPECIALTY_ID);
     
    alter table ABILITY       
        add constraint FKE33D410A4FFE234A 
        foreign key (SPECIALTY_ID) 
        references MAS_SPECIALTY (SPEC_ID);
        
        
    create index FKE33D410A9B593F69
    on ABILITY (EMPLOYEE_ID);
     

    alter table ABILITY 
        add constraint FKE33D410A9B593F69 
        foreign key (EMPLOYEE_ID) 
        references EMPLOYEE (ID);
        
    create index FKE66327D469E31F6A
    on ADDRESS (PROVINCE_ID);
     

    alter table ADDRESS 
        add constraint FKE66327D469E31F6A 
        foreign key (PROVINCE_ID) 
        references MAS_PROVINCE (ID);
        
        
    create index FKE66327D44094956A
    on ADDRESS (ADDRESSTYPE_ID);
 
    alter table ADDRESS 
        add constraint FKE66327D44094956A 
        foreign key (ADDRESSTYPE_ID) 
        references MAS_ADDRESSTYPE (ID);
        
    create index FKE66327D4548E13EB
    on ADDRESS (APPLICANT_ID);

    alter table ADDRESS 
        add constraint FKE66327D4548E13EB 
        foreign key (APPLICANT_ID) 
        references APPLICANT (APPLICANT_ID);
    
    create index FKCD0A575BA405A4AA
    on ALLOWANCES (MAS_ALLOWANCES_ID);

    alter table ALLOWANCES 
        add constraint FKCD0A575BA405A4AA 
        foreign key (MAS_ALLOWANCES_ID) 
        references MAS_ALLOWANCES (ALLO_ID);
    
    create index FKCD0A575B9B593F69
    on ALLOWANCES (EMPLOYEE_ID);

    alter table ALLOWANCES 
        add constraint FKCD0A575B9B593F69 
        foreign key (EMPLOYEE_ID) 
        references EMPLOYEE (ID);
    
    create index FK29852EE2D4BCA2EB
    on APPLICANT (MASTECHNOLOGY_ID);


    alter table APPLICANT 
        add constraint FK29852EE2D4BCA2EB 
        foreign key (MASTECHNOLOGY_ID) 
        references MAS_TECHNOLOGY (ID);
    
       
    create index FK29852EE28EBCA94B
    on APPLICANT (MASJOBLEVEL_ID);


    alter table APPLICANT 
        add constraint FK29852EE28EBCA94B 
        foreign key (MASJOBLEVEL_ID) 
        references MAS_JOBLEVEL (ID);
   
    create index FK1F73109B593F69
    on CARD (EMPLOYEE_ID);

    alter table CARD 
        add constraint FK1F73109B593F69 
        foreign key (EMPLOYEE_ID) 
        references EMPLOYEE (ID);
  
        
    create index FK93536C9A548E13EB
    on CERTIFICATION (APPLICANT_ID);


    alter table CERTIFICATION 
        add constraint FK93536C9A548E13EB 
        foreign key (APPLICANT_ID) 
        references APPLICANT (APPLICANT_ID);
        
        
    create index FK94C37788CA8BBAA
    on EDUCATION (DEGREETYPE_ID);


    alter table EDUCATION 
        add constraint FK94C37788CA8BBAA 
        foreign key (DEGREETYPE_ID) 
        references MAS_DEGREETYPE (DEGREETYPE_ID);
        
    create index FK94C37788548E13EB
    on EDUCATION (APPLICANT_ID);

    alter table EDUCATION 
        add constraint FK94C37788548E13EB 
        foreign key (APPLICANT_ID) 
        references APPLICANT (APPLICANT_ID);
   
    create index FK75C8D6AE8EDB100A
    on EMPLOYEE (JOBLEVEL_ID);


    alter table EMPLOYEE 
        add constraint FK75C8D6AE8EDB100A 
        foreign key (JOBLEVEL_ID) 
        references MAS_JOBLEVEL (ID);
   
    create index FK75C8D6AE20E569EA
    on EMPLOYEE (EMPLOYMENT_ID);


    alter table EMPLOYEE 
        add constraint FK75C8D6AE20E569EA 
        foreign key (EMPLOYMENT_ID) 
        references MAS_EMPLOYMENT (ID);
    
     create index FK75C8D6AEF9C1D24A
     on EMPLOYEE (DIVISION_ID);

    alter table EMPLOYEE 
        add constraint FK75C8D6AEF9C1D24A 
        foreign key (DIVISION_ID) 
        references MAS_DIVISION (ID);
    
     create index FK75C8D6AEAAFB154A
     on EMPLOYEE (LOCATION_ID);

    alter table EMPLOYEE 
        add constraint FK75C8D6AEAAFB154A 
        foreign key (LOCATION_ID) 
        references MAS_LOCATION (ID);
        
     create index FK75C8D6AE46DC55EA
     on EMPLOYEE (TECHNOLOGY_ID);

    alter table EMPLOYEE 
        add constraint FK75C8D6AE46DC55EA 
        foreign key (TECHNOLOGY_ID) 
        references MAS_TECHNOLOGY (ID);
        
     create index FK75C8D6AEB0E87A49
     on EMPLOYEE (OFFICIAL_ID);

    alter table EMPLOYEE 
        add constraint FK75C8D6AEB0E87A49 
        foreign key (OFFICIAL_ID) 
        references OFFICIAL (ID);
    
     create index FK75C8D6AE53A0AB49
     on EMPLOYEE (AIM_EMP_ID);


    alter table EMPLOYEE 
        add constraint FK75C8D6AE53A0AB49 
        foreign key (AIM_EMP_ID) 
        references EMPLOYEE (ID);
    
     
     create index FK75C8D6AE6607D3CB
     on EMPLOYEE (MAS_CORE_SKILL_ID);


    alter table EMPLOYEE 
        add constraint FK75C8D6AE6607D3CB 
        foreign key (MAS_CORE_SKILL_ID) 
        references MAS_CORESKILL (ID);
        
   
     create index FK75C8D6AE2B7331EA
     on EMPLOYEE (STAFFTYPE_ID);


    alter table EMPLOYEE 
        add constraint FK75C8D6AE2B7331EA 
        foreign key (STAFFTYPE_ID) 
        references MAS_STAFFTYPE (ID);
        
    create index FK75C8D6AE548E13EB
    on EMPLOYEE (APPLICANT_ID);

    alter table EMPLOYEE 
        add constraint FK75C8D6AE548E13EB 
        foreign key (APPLICANT_ID) 
        references APPLICANT (APPLICANT_ID);
        
   
    create index FK17D0456A548E13EB
    on EXPERIENCE (APPLICANT_ID);


    alter table EXPERIENCE 
        add constraint FK17D0456A548E13EB 
        foreign key (APPLICANT_ID) 
        references APPLICANT (APPLICANT_ID);
        
    create index FK7B2B4F6430240285
    on FAMILY (MASRELATION_ID);

    alter table FAMILY 
        add constraint FK7B2B4F6430240285 
        foreign key (MASRELATION_ID) 
        references MAS_RELATIONTYPE (ID);
        
    create index FK7B2B4F64548E13EB
    on FAMILY (APPLICANT_ID);

    alter table FAMILY 
        add constraint FK7B2B4F64548E13EB 
        foreign key (APPLICANT_ID) 
        references APPLICANT (APPLICANT_ID);
        
    create index FK7EC7F65C9B593F69
    on HEALTH (EMPLOYEE_ID);

    alter table HEALTH 
        add constraint FK7EC7F65C9B593F69 
        foreign key (EMPLOYEE_ID) 
        references EMPLOYEE (ID);
        
    create index FK620B70749B593F69
    on HISTORY (EMPLOYEE_ID);


    alter table HISTORY 
        add constraint FK620B70749B593F69 
        foreign key (EMPLOYEE_ID) 
        references EMPLOYEE (ID);
        
    create index FKCE788358548E13EB
    on LANGUAGE (APPLICANT_ID);

    alter table LANGUAGE 
        add constraint FKCE788358548E13EB 
        foreign key (APPLICANT_ID) 
        references APPLICANT (APPLICANT_ID);
        
    create index FK859B7C9CFC5BE8A
    on LEAVES (LEAVETYPE_ID);

    alter table LEAVES 
        add constraint FK859B7C9CFC5BE8A 
        foreign key (LEAVETYPE_ID) 
        references MAS_LEAVETYPE (LEAVETYPE_ID);
        
    create index FK859B7C9C9B593F69
    on LEAVES (EMPLOYEE_ID);


    alter table LEAVES 
        add constraint FK859B7C9C9B593F69 
        foreign key (EMPLOYEE_ID) 
        references EMPLOYEE (ID);
        
    create index FK453F7498239026A
    on LOGIN (MAS_LOCATION_ID);

    alter table LOGIN 
        add constraint FK453F7498239026A 
        foreign key (MAS_LOCATION_ID) 
        references MAS_LOCATION (ID);
        
           
    create index FK453F7499B593F69
    on LOGIN (EMPLOYEE_ID);


    alter table LOGIN 
        add constraint FK453F7499B593F69 
        foreign key (EMPLOYEE_ID) 
        references EMPLOYEE (ID);
        
    create index FK3FABA33F1BEB470B
    on LOGINROLE (LOGIN_ID);

    alter table LOGINROLE 
        add constraint FK3FABA33F1BEB470B 
        foreign key (LOGIN_ID) 
        references LOGIN (ID);
        
    create index FK3FABA33F81728B6B
    on LOGINROLE (MASROLE_ID);


    alter table LOGINROLE 
        add constraint FK3FABA33F81728B6B 
        foreign key (MASROLE_ID) 
        references MAS_ROLE (ID);
        
    
    create index FKE782F6F2548E13EB
    on MAS_CORESKILL (APPLICANT_ID);


    alter table MAS_CORESKILL 
        add constraint FKE782F6F2548E13EB 
        foreign key (APPLICANT_ID) 
        references APPLICANT (APPLICANT_ID);
        
    create index FK62EA74A09B593F69
    on PROBATION (EMPLOYEE_ID);

    alter table PROBATION 
        add constraint FK62EA74A09B593F69 
        foreign key (EMPLOYEE_ID) 
        references EMPLOYEE (ID);
        
    create index FK8D5610D59B593F69
    on PUNISH (EMPLOYEE_ID);

    alter table PUNISH  
        add constraint FK8D5610D59B593F69 
        foreign key (EMPLOYEE_ID) 
        references EMPLOYEE (ID);
    
    create index FK6EF34F2B548E13EB
    on REFERENCE (APPLICANT_ID);


    alter table REFERENCE
        add constraint FK6EF34F2B548E13EB 
        foreign key (APPLICANT_ID) 
        references APPLICANT (APPLICANT_ID);
        
      
    create index  FK8FE2432F9B593F69
    on REWARD (EMPLOYEE_ID);

    alter table REWARD 
        add constraint FK8FE2432F9B593F69 
        foreign key (EMPLOYEE_ID) 
        references EMPLOYEE (ID);
        
    create index  FK26D7479B593F69
    on SITE (EMPLOYEE_ID);


    alter table SITE 
        add constraint FK26D7479B593F69 
        foreign key (EMPLOYEE_ID) 
        references EMPLOYEE (ID);
