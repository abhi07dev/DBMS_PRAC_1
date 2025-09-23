declare 
p_id int;
p_name varchar(20);
pr float;
qty int;
cursor c1 is select * from product1;
begin 
open c1;
loop
fetch c1 into p_id,p_name,pr,qty;
exit when c1%NOTFOUND;
dbms_output.put_line(p_id||P_name||pr||qty);
end loop;
close c1;
end;
/