set SERVEROUTPUT on 

/*declare
  fname VARCHAR2(25);
begin
  select e.first_name INTO fname 
    from employees e
   where e.employee_id=200;
   
  Dbms_Output.put_line('fname: ' || fname);
   
end;*/

declare
  empHiredate employees.hire_date%type;
  empSalary   employees.salary%type;
begin
  select hire_date, salary 
    INTO empHiredate, empSalary
    from employees e
   where e.employee_id=100;
   
  Dbms_Output.put_line('fname: ' || empHiredate);
   
end;