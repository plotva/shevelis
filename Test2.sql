DECLARE
  JodID    varchar(50);
  CountEmp number;
  NameJobs varchar(100);
BEGIN 
  JodID := 'MK_REP';
  SELECT count(*)
    INTO CountEmp
    FROM job_history j
   WHERE j.job_id=JodID;   

  Dbms_Output.put_line('Count : ' || CountEmp);
  
  IF CountEmp>0 THEN
    SELECT j.job_title
      INTO NameJobs
      FROM jobs j
     WHERE j.job_id=JodID;
     
    Dbms_Output.put_line('Jobs : ' || NameJobs);
  ELSE 
    Dbms_Output.put_line('Jobs : NO');
  END IF;
  
END;
