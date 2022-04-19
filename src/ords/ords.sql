BEGIN
  ---------------------------------------------------------------------
  -- ENABLE SCHEMA
  ---------------------------------------------------------------------
  ORDS.ENABLE_SCHEMA(
      p_enabled             => TRUE,
      p_schema              => 'PPYTLAK',
      p_url_mapping_type    => 'BASE_PATH',
      p_url_mapping_pattern => 'ppytlak',
      p_auto_rest_auth      => TRUE);
  ---------------------------------------------------------------------
  -- Module /v1
  ---------------------------------------------------------------------    
  ORDS.DEFINE_MODULE(
      p_module_name    => 'v1',
      p_base_path      => '/v1/',
      p_items_per_page => 25,
      p_status         => 'PUBLISHED',
      p_comments       => NULL);
  ---------------------------------------------------------------------
  -- bank-account-number
  ---------------------------------------------------------------------  
  ORDS.DEFINE_TEMPLATE(
      p_module_name    => 'v1',
      p_pattern        => 'bank-account-number',
      p_priority       => 0,
      p_etag_type      => 'HASH',
      p_etag_query     => NULL,
      p_comments       => NULL);

  ORDS.DEFINE_HANDLER(
      p_module_name    => 'v1',
      p_pattern        => 'bank-account-number',
      p_method         => 'POST',
      p_source_type    => 'plsql/block',
      p_mimes_allowed  => NULL,
      p_comments       => NULL,
      p_source         => 
'begin
  api_ords.bank_account_number(p_payload => :body_text, p_http_status => :httpStatus);
end;');

  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'v1',
      p_pattern            => 'bank-account-number',
      p_method             => 'POST',
      p_name               => 'X-ORDS-STATUS-CODE',
      p_bind_variable_name => 'httpStatus',
      p_source_type        => 'HEADER',
      p_param_type         => 'INT',
      p_access_method      => 'OUT',
      p_comments           => NULL);
  ---------------------------------------------------------------------
  -- bank-account-number/validate
  ---------------------------------------------------------------------  
  ORDS.DEFINE_TEMPLATE(
      p_module_name    => 'v1',
      p_pattern        => 'bank-account-number/validate',
      p_priority       => 0,
      p_etag_type      => 'HASH',
      p_etag_query     => NULL,
      p_comments       => NULL);

  ORDS.DEFINE_HANDLER(
      p_module_name    => 'v1',
      p_pattern        => 'bank-account-number/validate',
      p_method         => 'POST',
      p_source_type    => 'plsql/block',
      p_mimes_allowed  => NULL,
      p_comments       => NULL,
      p_source         => 
'begin
  api_ords.bank_account_number_validate(p_payload => :body_text, p_http_status => :httpStatus);
end;');

  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'v1',
      p_pattern            => 'bank-account-number/validate',
      p_method             => 'POST',
      p_name               => 'X-ORDS-STATUS-CODE',
      p_bind_variable_name => 'httpStatus',
      p_source_type        => 'HEADER',
      p_param_type         => 'INT',
      p_access_method      => 'OUT',
      p_comments           => NULL);
  ---------------------------------------------------------------------
  -- passport-number
  ---------------------------------------------------------------------  
  ORDS.DEFINE_TEMPLATE(
      p_module_name    => 'v1',
      p_pattern        => 'passport-number',
      p_priority       => 0,
      p_etag_type      => 'HASH',
      p_etag_query     => NULL,
      p_comments       => NULL);

  ORDS.DEFINE_HANDLER(
      p_module_name    => 'v1',
      p_pattern        => 'passport-number',
      p_method         => 'POST',
      p_source_type    => 'plsql/block',
      p_mimes_allowed  => NULL,
      p_comments       => NULL,
      p_source         => 
'begin
  api_ords.passport_number(p_payload => :body_text, p_http_status => :httpStatus);
end;');

  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'v1',
      p_pattern            => 'passport-number',
      p_method             => 'POST',
      p_name               => 'X-ORDS-STATUS-CODE',
      p_bind_variable_name => 'httpStatus',
      p_source_type        => 'HEADER',
      p_param_type         => 'INT',
      p_access_method      => 'OUT',
      p_comments           => NULL);
  ---------------------------------------------------------------------
  -- passport-number/validate
  ---------------------------------------------------------------------  
  ORDS.DEFINE_TEMPLATE(
      p_module_name    => 'v1',
      p_pattern        => 'passport-number/validate',
      p_priority       => 0,
      p_etag_type      => 'HASH',
      p_etag_query     => NULL,
      p_comments       => NULL);

  ORDS.DEFINE_HANDLER(
      p_module_name    => 'v1',
      p_pattern        => 'passport-number/validate',
      p_method         => 'POST',
      p_source_type    => 'plsql/block',
      p_mimes_allowed  => NULL,
      p_comments       => NULL,
      p_source         => 
'begin
  api_ords.passport_number_validate(p_payload => :body_text, p_http_status => :httpStatus);
end;');

  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'v1',
      p_pattern            => 'passport-number/validate',
      p_method             => 'POST',
      p_name               => 'X-ORDS-STATUS-CODE',
      p_bind_variable_name => 'httpStatus',
      p_source_type        => 'HEADER',
      p_param_type         => 'INT',
      p_access_method      => 'OUT',
      p_comments           => NULL);
  ---------------------------------------------------------------------
  -- national-identitification-number
  ---------------------------------------------------------------------  
  ORDS.DEFINE_TEMPLATE(
      p_module_name    => 'v1',
      p_pattern        => 'national-identitification-number',
      p_priority       => 0,
      p_etag_type      => 'HASH',
      p_etag_query     => NULL,
      p_comments       => NULL);

  ORDS.DEFINE_HANDLER(
      p_module_name    => 'v1',
      p_pattern        => 'national-identitification-number',
      p_method         => 'POST',
      p_source_type    => 'plsql/block',
      p_mimes_allowed  => NULL,
      p_comments       => NULL,
      p_source         => 
'begin
  api_ords.national_identification_number(p_payload => :body_text, p_http_status => :httpStatus);
end;');

  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'v1',
      p_pattern            => 'national-identitification-number',
      p_method             => 'POST',
      p_name               => 'X-ORDS-STATUS-CODE',
      p_bind_variable_name => 'httpStatus',
      p_source_type        => 'HEADER',
      p_param_type         => 'INT',
      p_access_method      => 'OUT',
      p_comments           => NULL);
  ---------------------------------------------------------------------
  -- national-identitification-number/validate
  ---------------------------------------------------------------------  
  ORDS.DEFINE_TEMPLATE(
      p_module_name    => 'v1',
      p_pattern        => 'national-identitification-number/validate',
      p_priority       => 0,
      p_etag_type      => 'HASH',
      p_etag_query     => NULL,
      p_comments       => NULL);

  ORDS.DEFINE_HANDLER(
      p_module_name    => 'v1',
      p_pattern        => 'national-identitification-number/validate',
      p_method         => 'POST',
      p_source_type    => 'plsql/block',
      p_mimes_allowed  => NULL,
      p_comments       => NULL,
      p_source         => 
'begin
  api_ords.national_identification_number_validate(p_payload => :body_text, p_http_status => :httpStatus);
end;');

  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'v1',
      p_pattern            => 'national-identitification-number/validate',
      p_method             => 'POST',
      p_name               => 'X-ORDS-STATUS-CODE',
      p_bind_variable_name => 'httpStatus',
      p_source_type        => 'HEADER',
      p_param_type         => 'INT',
      p_access_method      => 'OUT',
      p_comments           => NULL);
  ---------------------------------------------------------------------
  -- national-identity-card-number
  ---------------------------------------------------------------------  
  ORDS.DEFINE_TEMPLATE(
      p_module_name    => 'v1',
      p_pattern        => 'national-identity-card-number',
      p_priority       => 0,
      p_etag_type      => 'HASH',
      p_etag_query     => NULL,
      p_comments       => NULL);

  ORDS.DEFINE_HANDLER(
      p_module_name    => 'v1',
      p_pattern        => 'national-identity-card-number',
      p_method         => 'POST',
      p_source_type    => 'plsql/block',
      p_mimes_allowed  => NULL,
      p_comments       => NULL,
      p_source         => 
'begin
  api_ords.national_identity_card_number(p_payload => :body_text, p_http_status => :httpStatus);
end;');

  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'v1',
      p_pattern            => 'national-identity-card-number',
      p_method             => 'POST',
      p_name               => 'X-ORDS-STATUS-CODE',
      p_bind_variable_name => 'httpStatus',
      p_source_type        => 'HEADER',
      p_param_type         => 'INT',
      p_access_method      => 'OUT',
      p_comments           => NULL);
  ---------------------------------------------------------------------
  -- national-identity-card-number/validate
  ---------------------------------------------------------------------  
  ORDS.DEFINE_TEMPLATE(
      p_module_name    => 'v1',
      p_pattern        => 'national-identity-card-number/validate',
      p_priority       => 0,
      p_etag_type      => 'HASH',
      p_etag_query     => NULL,
      p_comments       => NULL);

  ORDS.DEFINE_HANDLER(
      p_module_name    => 'v1',
      p_pattern        => 'national-identity-card-number/validate',
      p_method         => 'POST',
      p_source_type    => 'plsql/block',
      p_mimes_allowed  => NULL,
      p_comments       => NULL,
      p_source         => 
'begin
  api_ords.national_identity_card_number_validate(p_payload => :body_text, p_http_status => :httpStatus);
end;');

  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'v1',
      p_pattern            => 'national-identity-card-number/validate',
      p_method             => 'POST',
      p_name               => 'X-ORDS-STATUS-CODE',
      p_bind_variable_name => 'httpStatus',
      p_source_type        => 'HEADER',
      p_param_type         => 'INT',
      p_access_method      => 'OUT',
      p_comments           => NULL);
        
COMMIT;

END;
