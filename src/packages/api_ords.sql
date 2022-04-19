create or replace package API_ORDS as
  procedure bank_account_number_validate(
    p_payload     in  clob,
    p_http_status out number);
  --
  procedure bank_account_number(
    p_payload     in  clob,
    p_http_status out number);
  --
  procedure passport_number_validate(
    p_payload     in  clob,
    p_http_status out number);
  --
  procedure passport_number(
    p_payload     in  clob,
    p_http_status out number);
  --
  procedure national_identification_number_validate(
    p_payload     in  clob,
    p_http_status out number);
  --
  procedure national_identification_number(
    p_payload     in  clob,
    p_http_status out number);
  --
  procedure national_identity_card_number_validate(
    p_payload     in  clob,
    p_http_status out number);
  --
  procedure national_identity_card_number(
    p_payload     in  clob,
    p_http_status out number);
end API_ORDS;
/
create or replace package body API_ORDS as
  -------------------------------------------------------------------
  -- PRIVATE
  -------------------------------------------------------------------
  procedure l_json_error(
      p_err_code    in number,
      p_err_msg     in varchar2,
      p_http_status out number
  ) as
  begin
    owa_util.mime_header('application/json', true);
    --
    apex_json.free_output;
    --
    apex_json.open_object;
    apex_json.write('error', p_err_code);
    --
    if p_err_msg like 'ORA-_____: %' then
        apex_json.write('message', substr(p_err_msg,12));
    else
        apex_json.write('message', p_err_msg);
    end if;
    --
    apex_json.close_object;
    --
    -- we need analyse on possible error codes - when it's sth well known then 4xx others 500
    --
    p_http_status := 500;
  end l_json_error;
  -------------------------------------------------------------------
  -- PUBLIC
  -------------------------------------------------------------------
  procedure bank_account_number_validate(
    p_payload     in  clob,
    p_http_status out number) is
  begin
    null;
  exception
  when others then
    l_json_error(
        p_err_code    => sqlcode,
        p_err_msg     => sqlerrm,
        p_http_status => p_http_status
    );
  end bank_account_number_validate;
  -------------------------------------------------------------------
  procedure bank_account_number (
    p_payload     in  clob,
    p_http_status out number) is
  begin
    null;
  exception
  when others then
    l_json_error(
        p_err_code => sqlcode,
        p_err_msg  => sqlerrm,
        p_http_status => p_http_status
    );
  end bank_account_number;
  -------------------------------------------------------------------
  procedure passport_number_validate(
    p_payload     in  clob,
    p_http_status out number) is
  begin
    null;
  exception
  when others then
    l_json_error(
        p_err_code => sqlcode,
        p_err_msg  => sqlerrm,
        p_http_status => p_http_status
    );
  end passport_number_validate;
  -------------------------------------------------------------------
  procedure passport_number(
    p_payload     in  clob,
    p_http_status out number) is
  begin
    null;
  exception
  when others then
    l_json_error(
        p_err_code => sqlcode,
        p_err_msg  => sqlerrm,
        p_http_status => p_http_status
    );
  end passport_number;
  -------------------------------------------------------------------
  procedure national_identification_number_validate(
    p_payload     in  clob,
    p_http_status out number) is
  begin
    null;
  exception
  when others then
    l_json_error(
        p_err_code => sqlcode,
        p_err_msg  => sqlerrm,
        p_http_status => p_http_status
    );
  end national_identification_number_validate;
  -------------------------------------------------------------------
  procedure national_identification_number(
    p_payload     in  clob,
    p_http_status out number) is
  begin
    null;
  exception
  when others then
    l_json_error(
        p_err_code => sqlcode,
        p_err_msg  => sqlerrm,
        p_http_status => p_http_status
    );
  end national_identification_number;
  -------------------------------------------------------------------
  procedure national_identity_card_number_validate(
    p_payload     in  clob,
    p_http_status out number) is
  begin
    null;
  exception
  when others then
    l_json_error(
        p_err_code => sqlcode,
        p_err_msg  => sqlerrm,
        p_http_status => p_http_status
    );
  end national_identity_card_number_validate;
  -------------------------------------------------------------------
  procedure national_identity_card_number(
    p_payload     in  clob,
    p_http_status out number) is
  begin
    null;
  exception
  when others then
    l_json_error(
        p_err_code => sqlcode,
        p_err_msg  => sqlerrm,
        p_http_status => p_http_status
    );
  end national_identity_card_number;
  -------------------------------------------------------------------
end API_ORDS;
/
