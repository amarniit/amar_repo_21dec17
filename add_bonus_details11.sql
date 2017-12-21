--------------------------------------------------------
--  File created - Thursday-December-21-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure ADD_BONUS_DETAILS11
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "AMAR"."ADD_BONUS_DETAILS11" (
ac_id number,
ac_balance number) as 
bonus real;
begin
--select balance into bonus from accounts where account_id=ac_id;

update accounts 
set balance=ac_balance
where ac_id=account_id;
update accounts_details set balance=(select balance from accounts where account_id=ac_id) where account_id=ac_id;
end add_bonus_details11;

/
