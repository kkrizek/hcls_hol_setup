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
         ,hol_description  into :v_hol_description
    from hcls_hol.hol.hol_definition
   where hol_prefix = '{{hol_prefix}}';
  return :v_hol_name;
end;
