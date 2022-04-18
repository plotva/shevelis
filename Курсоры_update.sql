ROLLBACK;

set SERVEROUTPUT on
declare
--если в запросе несколько таблиц используются, то все их записи используемые в запросе будут залочены, 
--если обновлять планируется только одну, то нужно в for update of - указать поле которое однозначно ест только в той таблице, которая планируется к обновлению
-- в таком случае будет лочиться только записи одной таблицы.
  cursor emp_cur is select e.rowid row_id, e.* from employees, departments for update of first_name wait 3; --ожидание освобождения записи или nowait
begin
  for emp_rec in emp_cur loop
    if emp_rec.salary = 10000 then
     -- update employees SET salary = 9999 where rowid = emp_rec.row_id;
     update employees SET salary = 9999 where current of emp_cur;
    end if;
  end loop;
end;

select * from employees;