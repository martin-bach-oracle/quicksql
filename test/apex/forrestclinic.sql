-- create tables
create table frc_providers (
    id                             number generated by default on null as identity 
                                   constraint frc_providers_id_pk primary key,
    name                           varchar2(60 char),
    rating                         number,
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
)
;

create table frc_patients (
    id                             number generated by default on null as identity 
                                   constraint frc_patients_id_pk primary key,
    insurance_provider             number    -- repositioned
                                   constraint frc_patients_insurance_prov_fk
                                   references frc_providers,
    first_name                     varchar2(50 char),
    last_name                      varchar2(50 char),
    email                          varchar2(50 char),
    username                       varchar2(20 char),
    date_of_birth                  date,
    phone                          varchar2(30 char),
    address                        varchar2(250 char),
    city                           varchar2(50 char),
    state                          varchar2(2 char),
    zip                            varchar2(9 char),
    address_latitude               number,
    address_longitude              number,
    /*insurance_provider             number
                                   constraint frc_patients_insurance_prov_fk
                                   references frc_providers,*/
    insurance_policy_number        varchar2(30 char),
    insurance_proof_scan           blob,
    insurance_proof_latitude       number,
    insurance_proof_longitude      number,
    status                         varchar2(30 char),
    insurance_score                number,
    initial_procedure              varchar2(30 char),
    registration_date              date,
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
)
;

-- table index
create index frc_patients_i1 on frc_patients (insurance_provider);

create table frc_patient_procedures (
    id                             number generated by default on null as identity 
                                   constraint frc_patient_proced_id_pk primary key,
    patient_id                     number
                                   constraint frc_patient_pro_patient_id_fk
                                   references frc_patients,
    doctor                         varchar2(30 char),
    medical_procedure              varchar2(30 char),
    procedure_date                 date,
    status                         varchar2(30 char),
    amount_due                     number,
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
)
;

-- table index
create index frc_patient_proced_i1 on frc_patient_procedures (patient_id);

create table frc_doctor_procedures (
    id                             number generated by default on null as identity 
                                   constraint frc_doctor_procedu_id_pk primary key,
    doctor                         varchar2(30 char),
    medical_procedure              varchar2(30 char),
    created                        date not null,
    created_by                     varchar2(255 char) not null,
    updated                        date not null,
    updated_by                     varchar2(255 char) not null
)
;


-- triggers
create or replace trigger frc_providers_biu
    before insert or update 
    on frc_providers
    for each row
begin
    if inserting then
        :new.created := sysdate;
        :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    :new.updated := sysdate;
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
end frc_providers_biu;
/

create or replace trigger frc_patients_biu
    before insert or update 
    on frc_patients
    for each row
begin
    if inserting then
        :new.created := sysdate;
        :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    :new.updated := sysdate;
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
end frc_patients_biu;
/

create or replace trigger frc_patient_procedures_biu
    before insert or update 
    on frc_patient_procedures
    for each row
begin
    if inserting then
        :new.created := sysdate;
        :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    :new.updated := sysdate;
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
end frc_patient_procedures_biu;
/

create or replace trigger frc_doctor_procedures_biu
    before insert or update 
    on frc_doctor_procedures
    for each row
begin
    if inserting then
        :new.created := sysdate;
        :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    :new.updated := sysdate;
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
end frc_doctor_procedures_biu;
/

-- load data
 
-- Generated by Quick SQL Thursday March 02, 2023  21:12:08
 
/*
providers
    name vc60
    rating number

patients
    first_name vc50
    last_name vc50
    email vc50
    username vc20
    date_of_birth date
    phone vc30
    address vc250
    city vc50
    state vc2
    zip vc9
    address_latitude num
    address_longitude num
    insurance_provider /fk providers
    insurance_policy_number vc30
    insurance_proof_scan blob
    insurance_proof_latitude num
    insurance_proof_longitude num
    status vc30
    insurance_score num
    initial_procedure vc30
    registration_date date

patient_procedures
  patient_id num  /fk patients
  doctor vc30
  medical_procedure vc30
  procedure_date date 
  status vc30
  amount_due num 

doctor_procedures
    doctor vc30
    medical_procedure vc30
  
# settings = { prefix: "FRC", onDelete: "RESTRICT", semantics: "CHAR", auditCols: true, language: "EN", APEX: true }
*/