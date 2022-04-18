set SERVEROUTPUT on
/*
declare
  cursor dept_cur is select * from departments;
  dept_rec dept_cur%rowtype;
begin
  open dept_cur; 
   loop 
    fetch dept_cur INTO dept_rec;
    exit when dept_cur%notfound;
    DBMS_OUTPUT.PUT_LINE(dept_rec.department_name);
   end loop;
  close dept_cur; 
end;
 */
/*
declare
  cursor dept_cur is select * from departments;
begin
   for rec in dept_cur loop
    exit when dept_cur%rowcount > 5;
    DBMS_OUTPUT.PUT_LINE(rec.department_name);
   end loop;
end;
*/

declare
  cursor emp_cur(p_dept number) is select * from employees where department_id= p_dept;
begin
   for rec in (select * from departments) loop
    --exit when dept_cur%rowcount > 5;
     DBMS_OUTPUT.PUT_LINE(rec.department_name);
      for emp_rec in emp_cur(rec.department_id) loop
       DBMS_OUTPUT.PUT_LINE(emp_rec.last_name);
      end loop;
      DBMS_OUTPUT.PUT_LINE('==================================');
   end loop;
end;