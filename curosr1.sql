declare
p_id int;
p_name varchar(20);
price float;
qty int;
begin 
p_id:=&pid;
select p_id,p_name,price,qty into p_id,p_name,price,qty from product1 where p_id=pid;
if SQL%FOUND then
dbms_output.put_line(p_id||p_name||price||qty);
end if;
end;
/