CREATE OR REPLACE PROCEDURE TestCursor is
  cursor Cur is 
    select e.first_name, e. email 
    from EMPLOYEES e 
    where extract(month from e.hire_date)= extract(month from sysdate);
  vText varchar(300);  
  vName varchar(100);
  vEmail varchar(100);
BEGIN 
  Dbms_Output.put_line('TestCursor'); 
 Open Cur;
   LOOP     
     FETCH Cur
     INTO vName, vEmail;   
     EXIT WHEN Cur%Notfound;  
     
     BEGIN 
       vText := vName || 'your Email' || vEmail
              || '. Be Happy!';    
                 
       Dbms_Output.put_line(vText);  
     EXCEPTION
       WHEN OTHERS THEN 
         Dbms_Output.put_line('Error: ' || vName || Sqlerrm);
     END;        
   END LOOP;
 CLOSE Cur;
  
END;
