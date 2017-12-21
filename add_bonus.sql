--------------------------------------------------------
--  File created - Thursday-December-21-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure ADD_BONUS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "AMAR"."ADD_BONUS" (
ac_id number,
ac_balance number) as
bonus real;
begin
select balance into bonus from accounts
where account_id=ac_id;

update accounts
set balance=balance+ac_balance*bonus
where ac_id=account_id;
end add_bonus;

/
