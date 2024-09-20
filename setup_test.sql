--!jinja

declare
  v_hol_name varchar;
begin
  select hol_name         into :v_hol_name
    from hcls_hol.hol.hol_definition
   where hol_prefix = '{{hol_prefix}}';
  return :v_hol_name;
end;
