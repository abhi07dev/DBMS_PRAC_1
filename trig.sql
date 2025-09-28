create trigger BACK
before update or delete on library
for each row
begin
insert into backlib values(:old.B_id,:old.B_Name,:old.A_Name,:old.Price);
end;
/
