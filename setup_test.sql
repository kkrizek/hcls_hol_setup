--!jinja
use warehouse hol_setup_wh;
set my_var = '{{hol_prefix}}';
select $my_var;
--insert into hcls_hol.hol.script_test(col1) values ('hol_prefix');
