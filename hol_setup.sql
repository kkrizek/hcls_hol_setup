create database if not exists hol_test_setup;
create schema if not exists hol_test_setup.hol;

create or replace role hol_setup_script_role;
create or replace warehouse hol_setup_script_wh warehouse_size = 'XSMALL' austo_suspend = 120 auto_resume = TRUE initially_suspended=TRUE;


