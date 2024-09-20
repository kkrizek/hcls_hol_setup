--!jinja

declare
  v_hol_name varchar;
  v_hol_description varchar;
  v_hol_date date;
  v_nbr_users integer;
  v_database varchar;
  v_schema varchar;
  v_streamlit_apps variant;
begin
  select hol_name         into :v_hol_name
--         ,hol_description  into :v_hol_description
--         ,hol_date         into :v_hol_date
--         ,nbr_users        into :v_nbr_users
--         ,database         into :v_database
--         ,schema           into :v_schema
--         ,streamlit_apps   into :v_streamlit_apps
    from hcls_hol.hol.hol_definition
   where hol_prefix = '{{hol_prefix}}';
--  return :v_hol_name, :v_hol_description, :v_hol_date, :v_nbr_users, :v_database, :v_schema, :v_streamlit_apps;
  return :v_hol_name
end;

select $v_hol_name
--select $v_hol_name, $v_hol_description, $v_hol_date, $v_nbr_users, $v_database, $v_schema, $v_streamlit_apps;
