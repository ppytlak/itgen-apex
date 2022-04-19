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
