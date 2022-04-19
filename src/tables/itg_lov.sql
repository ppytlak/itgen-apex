CREATE SEQUENCE itg_lov_seq START WITH 1 INCREMENT BY 1;
--
CREATE TABLE itg_lov (
  id            number,
  domain        varchar2(100 char),
  display_value varchar2(800 char),
  return_value  varchar2(100 char),
  group_1       varchar2(100 char),
  group_2       varchar2(100 char),
  group_3       varchar2(100 char),
  language      varchar2(100 char),
  order_no      number
);
--
ALTER TABLE itg_lov
ADD CONSTRAINT itg_lov_pk PRIMARY KEY (id);
--
begin
  insert into itg_lov (id, domain, display_value, return_value, group_1) values (itg_lov_seq.nextval, 'OPERATIONS','Bank account (Numer IBAN)', 'PL','BA');
  insert into itg_lov (id, domain, display_value, return_value, group_1) values (itg_lov_seq.nextval, 'OPERATIONS','Bank account (Internationale Kontonummer)','DE','BA');
  insert into itg_lov (id, domain, display_value, return_value, group_1) values (itg_lov_seq.nextval, 'OPERATIONS','Bank account (IBAN number)', 'GB','BA');
  insert into itg_lov (id, domain, display_value, return_value, group_1) values (itg_lov_seq.nextval, 'OPERATIONS','Bank account (ABA RTN)','US','BA');
  --
  insert into itg_lov (id, domain, return_value, display_value) values (itg_lov_seq.nextval, 'BANK_ACCOUNT.IBAN.COUNTRIES','PLNNNNNNNNNNNNNNNNNNNNNNNNNN','PL');
  insert into itg_lov (id, domain, return_value, display_value) values (itg_lov_seq.nextval, 'BANK_ACCOUNT.IBAN.COUNTRIES','DENNNNNNNNNNNNNNNNNNNN','DE');
  insert into itg_lov (id, domain, return_value, display_value) values (itg_lov_seq.nextval, 'BANK_ACCOUNT.IBAN.COUNTRIES','GBNNAAAANNNNNNNNNNNNNN','GB');
  --
  insert into itg_lov (id, domain, return_value, display_value, group_1) values (itg_lov_seq.nextval, 'BANK_ACCOUNT.PL.IBAN.BANK','1010000','Narodowy Bank Polski', '');
  insert into itg_lov (id, domain, return_value, display_value, group_1) values (itg_lov_seq.nextval, 'BANK_ACCOUNT.PL.IBAN.BANK','1020000','PKO BP', 'BPKOPLPW');
  insert into itg_lov (id, domain, return_value, display_value, group_1) values (itg_lov_seq.nextval, 'BANK_ACCOUNT.PL.IBAN.BANK','1030000','Bank Handlowy (Citi Handlowy)', 'CITIPLPX');
  insert into itg_lov (id, domain, return_value, display_value, group_1) values (itg_lov_seq.nextval, 'BANK_ACCOUNT.PL.IBAN.BANK','1050000','ING Bank Śląski', 'INGBPLPW');
  insert into itg_lov (id, domain, return_value, display_value, group_1) values (itg_lov_seq.nextval, 'BANK_ACCOUNT.PL.IBAN.BANK','1090000','Santander Bank Polska', '');
  insert into itg_lov (id, domain, return_value, display_value, group_1) values (itg_lov_seq.nextval, 'BANK_ACCOUNT.PL.IBAN.BANK','1130000','BGK', '');
  insert into itg_lov (id, domain, return_value, display_value, group_1) values (itg_lov_seq.nextval, 'BANK_ACCOUNT.PL.IBAN.BANK','1140000','mBank', 'BREXPLPWMBK');
  insert into itg_lov (id, domain, return_value, display_value, group_1) values (itg_lov_seq.nextval, 'BANK_ACCOUNT.PL.IBAN.BANK','1160000','Bank Millennium', 'BIGBPLPW');
  insert into itg_lov (id, domain, return_value, display_value, group_1) values (itg_lov_seq.nextval, 'BANK_ACCOUNT.PL.IBAN.BANK','1240000','Pekao SA', 'PKOPPLPW');
  insert into itg_lov (id, domain, return_value, display_value, group_1) values (itg_lov_seq.nextval, 'BANK_ACCOUNT.PL.IBAN.BANK','1320000','Bank Pocztowy', 'POCZPLP4');
  insert into itg_lov (id, domain, return_value, display_value, group_1) values (itg_lov_seq.nextval, 'BANK_ACCOUNT.PL.IBAN.BANK','1540000','BOŚ Bank','EBOSPLPW');
  insert into itg_lov (id, domain, return_value, display_value, group_1) values (itg_lov_seq.nextval, 'BANK_ACCOUNT.PL.IBAN.BANK','1580000','Mercedes-Benz Bank Polska', '');
  insert into itg_lov (id, domain, return_value, display_value, group_1) values (itg_lov_seq.nextval, 'BANK_ACCOUNT.PL.IBAN.BANK','1610000','SGB - Bank', '');
  insert into itg_lov (id, domain, return_value, display_value, group_1) values (itg_lov_seq.nextval, 'BANK_ACCOUNT.PL.IBAN.BANK','1670000','RBS Bank (Polska)', '');
  insert into itg_lov (id, domain, return_value, display_value, group_1) values (itg_lov_seq.nextval, 'BANK_ACCOUNT.PL.IBAN.BANK','1680000','Plus Bank', '');
  insert into itg_lov (id, domain, return_value, display_value, group_1) values (itg_lov_seq.nextval, 'BANK_ACCOUNT.PL.IBAN.BANK','1840000','Societe Generale', '');
  insert into itg_lov (id, domain, return_value, display_value, group_1) values (itg_lov_seq.nextval, 'BANK_ACCOUNT.PL.IBAN.BANK','1870000','Nest Bank', 'NESBPLPW');
  insert into itg_lov (id, domain, return_value, display_value, group_1) values (itg_lov_seq.nextval, 'BANK_ACCOUNT.PL.IBAN.BANK','1930000','Bank Polskiej Spółdzielczości', '');
  insert into itg_lov (id, domain, return_value, display_value, group_1) values (itg_lov_seq.nextval, 'BANK_ACCOUNT.PL.IBAN.BANK','1940000','Credit Agricole Bank Polska', 'AGRIPLPR');
  insert into itg_lov (id, domain, return_value, display_value, group_1) values (itg_lov_seq.nextval, 'BANK_ACCOUNT.PL.IBAN.BANK','2030000','BNP Paribas', 'PPABPLPK');
  insert into itg_lov (id, domain, return_value, display_value, group_1) values (itg_lov_seq.nextval, 'BANK_ACCOUNT.PL.IBAN.BANK','2120000','Santander Consumer Bank', 'WBKPPLPP');
  insert into itg_lov (id, domain, return_value, display_value, group_1) values (itg_lov_seq.nextval, 'BANK_ACCOUNT.PL.IBAN.BANK','2160000','Toyota Bank', '');
  insert into itg_lov (id, domain, return_value, display_value, group_1) values (itg_lov_seq.nextval, 'BANK_ACCOUNT.PL.IBAN.BANK','2190000','DNB Bank Polska', '');
  insert into itg_lov (id, domain, return_value, display_value, group_1) values (itg_lov_seq.nextval, 'BANK_ACCOUNT.PL.IBAN.BANK','2480000','Getin Noble Bank', 'GBGCPLPK');
  insert into itg_lov (id, domain, return_value, display_value, group_1) values (itg_lov_seq.nextval, 'BANK_ACCOUNT.PL.IBAN.BANK','2490000','Alior Bank', 'ALBPPLPW');
  insert into itg_lov (id, domain, return_value, display_value, group_1) values (itg_lov_seq.nextval, 'BANK_ACCOUNT.PL.IBAN.BANK','2710000','FCE Bank Polska', '');
  insert into itg_lov (id, domain, return_value, display_value, group_1) values (itg_lov_seq.nextval, 'BANK_ACCOUNT.PL.IBAN.BANK','2720000','Inbank', '');
  insert into itg_lov (id, domain, return_value, display_value, group_1) values (itg_lov_seq.nextval, 'BANK_ACCOUNT.PL.IBAN.BANK','2770000','Volkswagen Bank', '');
  insert into itg_lov (id, domain, return_value, display_value, group_1) values (itg_lov_seq.nextval, 'BANK_ACCOUNT.PL.IBAN.BANK','2800000','HSBC', '');
  insert into itg_lov (id, domain, return_value, display_value, group_1) values (itg_lov_seq.nextval, 'BANK_ACCOUNT.PL.IBAN.BANK','2910000','Aion Bank', '');
  --
  insert into itg_lov (id, domain, return_value, display_value, group_1) values (itg_lov_seq.nextval, 'BANK_ACCOUNT.US.ABA.FEDERAL_DISTRICT','01','Boston', '');
  insert into itg_lov (id, domain, return_value, display_value, group_1) values (itg_lov_seq.nextval, 'BANK_ACCOUNT.US.ABA.FEDERAL_DISTRICT','02','New York', '');
  insert into itg_lov (id, domain, return_value, display_value, group_1) values (itg_lov_seq.nextval, 'BANK_ACCOUNT.US.ABA.FEDERAL_DISTRICT','03','Philadelphia', '');
  insert into itg_lov (id, domain, return_value, display_value, group_1) values (itg_lov_seq.nextval, 'BANK_ACCOUNT.US.ABA.FEDERAL_DISTRICT','04','Cleveland', '');
  insert into itg_lov (id, domain, return_value, display_value, group_1) values (itg_lov_seq.nextval, 'BANK_ACCOUNT.US.ABA.FEDERAL_DISTRICT','05','Richmond', '');
  insert into itg_lov (id, domain, return_value, display_value, group_1) values (itg_lov_seq.nextval, 'BANK_ACCOUNT.US.ABA.FEDERAL_DISTRICT','06','Atlanta', '');
  insert into itg_lov (id, domain, return_value, display_value, group_1) values (itg_lov_seq.nextval, 'BANK_ACCOUNT.US.ABA.FEDERAL_DISTRICT','07','Chicago', '');
  insert into itg_lov (id, domain, return_value, display_value, group_1) values (itg_lov_seq.nextval, 'BANK_ACCOUNT.US.ABA.FEDERAL_DISTRICT','08','St. Louis', '');
  insert into itg_lov (id, domain, return_value, display_value, group_1) values (itg_lov_seq.nextval, 'BANK_ACCOUNT.US.ABA.FEDERAL_DISTRICT','09','Minneapolis', '');
  insert into itg_lov (id, domain, return_value, display_value, group_1) values (itg_lov_seq.nextval, 'BANK_ACCOUNT.US.ABA.FEDERAL_DISTRICT','10','Kansas City', '');
  insert into itg_lov (id, domain, return_value, display_value, group_1) values (itg_lov_seq.nextval, 'BANK_ACCOUNT.US.ABA.FEDERAL_DISTRICT','11','Dallas', '');
  insert into itg_lov (id, domain, return_value, display_value, group_1) values (itg_lov_seq.nextval, 'BANK_ACCOUNT.US.ABA.FEDERAL_DISTRICT','12','San Francisco', '');
  --
  commit;
end;
/
