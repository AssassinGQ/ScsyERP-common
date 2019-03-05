drop procedure if exists myproc0;
create procedure myproc0()
begin
  declare num int;
  set num=1;
  while num <= 2000000 do
#   insert into t_index0(id,username,email,_password,status,width) values(num, CONCAT('username_',num), CONCAT(num ,'@qq.com'), MD5(num), num%2, num);
  insert into t_index0(id,username,email,_password,status,width) values(num, CONCAT('username_',num), CONCAT(num ,'@qq.com'), CONCAT('password_',num), num%2, num);
  set num=num+1;
  end while;
end