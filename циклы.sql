set SERVEROUTPUT on 
/*
declare
  i number :=0;
begin
  loop 
    Dbms_Output.put_line('i: ' || i);
    i := i+1;
    exit when i >10;
  end loop;
  
end; 
*/
/*
declare
  i number :=0;
begin
  loop 
  exit when i = 10;
    Dbms_Output.put_line('i: ' || i);
    i := i+1;    
  end loop;
  
end; 
*/
/*
declare
  i number :=0;
begin
  while i<10 loop 
    Dbms_Output.put_line('i: ' || i);
    i := i+1;   
    exit when i = 5;
  end loop;
end; 
*/

begin
  for i in reverse 1..10 loop 
    Dbms_Output.put_line('i: ' || i);  
    exit when i = 5;
  end loop;
end; 
 