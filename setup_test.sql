--!jinja

declare
  v_hol_name varchar;
  v_hol_description varchar;
  v_hol_date date;
  v_nbr_users integer;
  v_database varchar;
  v_schema varchar;
  v_streamlit_apps variant;
  lab_pwd varchar;
  qry varchar;
begin
  select hol_name, hol_description, hol_date, nbr_users, database, schema, streamlit_apps         
    into :v_hol_name, :v_hol_description, :v_hol_date, :v_nbr_users, :v_database, :v_schema, :v_streamlit_apps
    from hcls_hol.hol.hol_definition
   where hol_prefix = '{{hol_prefix}}';

  set lab_pwd := 'Sn@wpark!phd';
  set qry := 'GRANT EXECUTE TASK ON ACCOUNT TO ROLE ' + {{hol_prefix}} + 'XXX';

  return :qry;
end;
