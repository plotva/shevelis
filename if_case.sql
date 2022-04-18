set SERVEROUTPUT on 
/*
declare
  empHiredate employees.hire_date%type;
  empSalary   employees.salary%type;
  v_emp_id    number :=101;
begin
  select hire_date, salary 
    INTO empHiredate, empSalary
    from employees e
   where e.employee_id=v_emp_id;
   
   Dbms_Output.put_line('salary: ' || empSalary);
   if empSalary > 20000 then
     Dbms_Output.put_line('Good salary ');
   elsif empSalary > 15000 then
     Dbms_Output.put_line('Good salary - min ');
   else 
     Dbms_Output.put_line('Malo salary ');
   end if;     
end; 
*/

declare
  empHiredate employees.hire_date%type;
  empSalary   employees.salary%type;
  v_emp_id    number :=101;
  v_jod VARCHAR2(20);
  res         VARCHAR2(30);
begin
  select hire_date, salary 
    INTO empHiredate, empSalary
    from employees e
   where e.employee_id=v_emp_id;
   Dbms_Output.put_line('salary: ' || empSalary);
   res := case 
            when empSalary > 20000 then 'Good salary'
            when empSalary > 15000 then 'Good salary - min '
            else 'Malo salary '
          end;    
   Dbms_Output.put_line('salary: ' || empSalary || res);
   
   res := case v_jod
            when 'AD_PRES' then 'president'
            else 'unknown'
          end;
   Dbms_Output.put_line('Job: ' || res);   
   
   case v_jod
        when 'AD_PRES' then 
          Dbms_Output.put_line('Job: ' || 'president'); 
          null;
        else Dbms_Output.put_line('Job: ' || 'unknown'); 
   end case;
   
   
   
end; 