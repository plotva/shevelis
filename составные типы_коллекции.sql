set SERVEROUTPUT on 

/*
declare 
  type emp_rec_type is record(emp_id number, name varchar2(40), sal number);
  type emp_rec_table_type is table of emp_rec_type index by PLS_INTEGER; --это индекс для массива
  emp_rec_table emp_rec_table_type;
begin 
  /*emp_rec_table(1).emp_id := 100;
  emp_rec_table(1).name := 'REEEe';
  emp_rec_table(-3).emp_id := 200;*/
/*  select employee_id, last_name, salary into emp_rec_table(1) from employees where employee_id=100;
  
  DBMS_OUTPUT.PUT_LINE(emp_rec_table(1).emp_id || ' '  ||  emp_rec_table(1).name);
end;
*/
/*
--index table
declare 
  type emp_rec_table_type is table of employees%ROWTYPE index by PLS_INTEGER; --это индекс для массива
  emp_rec_table emp_rec_table_type;
begin 

  for i in 100..206 loop
    select * into emp_rec_table(i) from employees where employee_id=i;
  end loop;
  
  for i in emp_rec_table.first ..emp_rec_table.last loop
    DBMS_OUTPUT.PUT_LINE(emp_rec_table(i).employee_id || ' '  ||  emp_rec_table(i).last_name);
  end loop; 

end;*/

/*
--nested table
declare 
  type nt_table_type is table of number; --это индекс для массива
  nt_table nt_table_type;
begin 
    nt_table := nt_table_type(123, 1554,1235);
    nt_table.extend;
    nt_table(nt_table.last) := 4123;
end;
*/

--varray
declare 
  type nt_table_type is VARRAY(3) of number; --это индекс для массива
  nt_table nt_table_type;
begin 
    nt_table := nt_table_type(123, 1554);
    nt_table.extend;
    nt_table(nt_table.last) := 4123;
    
  for i in nt_table.first ..nt_table.last loop
    DBMS_OUTPUT.PUT_LINE(nt_table(i));
  end loop;  
    
end;
