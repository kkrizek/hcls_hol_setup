--!jinja

declare
  hol_prefix varchar;
  hol_name varchar;
  hol_description varchar;
  hol_date date;
  nbr_users integer;
  database varchar;
  schema varchar;
  streamlit_apps variant;
  lab_pwd varchar;
  qry varchar;
begin
  set hol_prefix := '{{hol_prefix}}';

  select hol_name, hol_description, hol_date, nbr_users, database, schema, streamlit_apps         
    into :hol_name, :hol_description, :hol_date, :nbr_users, :database, :schema, :streamlit_apps
    from hcls_hol.hol.hol_definition
   where hol_prefix = :hol_prefix;

  set lab_pwd := 'Sn@wpark!phd';
  set qry := concat('GRANT EXECUTE TASK ON ACCOUNT TO ROLE ', hol_prefix, 'XXX');
--  call hcls_hol.hol.loopquery(:qry, :nbr_users);

  return :qry;
end;
