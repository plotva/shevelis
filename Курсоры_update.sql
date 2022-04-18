ROLLBACK;

set SERVEROUTPUT on
declare
--���� � ������� ��������� ������ ������������, �� ��� �� ������ ������������ � ������� ����� ��������, 
--���� ��������� ����������� ������ ����, �� ����� � for update of - ������� ���� ������� ���������� ��� ������ � ��� �������, ������� ����������� � ����������
-- � ����� ������ ����� �������� ������ ������ ����� �������.
  cursor emp_cur is select e.rowid row_id, e.* from employees, departments for update of first_name wait 3; --�������� ������������ ������ ��� nowait
begin
  for emp_rec in emp_cur loop
    if emp_rec.salary = 10000 then
     -- update employees SET salary = 9999 where rowid = emp_rec.row_id;
     update employees SET salary = 9999 where current of emp_cur;
    end if;
  end loop;
end;

select * from employees;