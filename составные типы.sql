set SERVEROUTPUT on 

/*
--записи вариант 1
declare 
  type emp_rec_type is record(emp_id number, name varchar2(40), sal number);
  emp_rec emp_rec_type;
  emp_rec1 employees%rowtype;
begin 
  select employee_id, last_name, salary into emp_rec from employees where employee_id=100;
  
  DBMS_OUTPUT.PUT_LINE(emp_rec.emp_id || ' '  ||  emp_rec.name);
end;
*/

--записи вариант 2
declare 
  emp_rec1 employees%rowtype;
begin 
  select * into emp_rec1 from employees where employee_id=100;
  
  DBMS_OUTPUT.PUT_LINE(emp_rec1.employee_id || ' '  ||  emp_rec1.last_name);
end;



